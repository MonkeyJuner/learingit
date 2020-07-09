//lidar localization node class

#ifndef _LIDAR_LOC_NODE_H_
#define _LIDAR_LOC_NODE_H_

#include "ekf_fusion.h"

#include "ros/ros.h"

// //MRPT headers must be included before <Eigen/Dense> headers
// #include <mrpt/poses/CPose2D.h>
// #include <mrpt/poses/CPose3D.h>
// #include <mrpt/poses/CPosePDF.h>
// // #include <mrpt/poses/CPosePDFGaussian.h>
// #include <mrpt/slam/CICP.h>
// #include <mrpt/maps/CSimplePointsMap.h>

// #include "ndt_omp.h"
// #include <pcl_omp_registration/ndt.h>

#include <std_msgs/String.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float64MultiArray.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TransformStamped.h>
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/Imu.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>

#include <pncc_msgs/VehicleInfo.h>
#include <localization_msgs/VehicleState.h>
#include <gnss_msgs/GnssImuInfo.h>
#include <hadmap_msgs/Region.h>

#include <pcl_ros/point_cloud.h>
#include <pcl_ros/transforms.h>

#include <pcl/point_types.h>
#include <pcl/io/ply_io.h>
#include <pcl/conversions.h>
#include <pcl/filters/passthrough.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/filters/crop_box.h>
#include <pcl/console/time.h>
#include <pcl/registration/icp.h>
#include <pcl/registration/ndt.h>

#include <thread>
#include <mutex>
#include <vector>

typedef pcl::PointCloud<pcl::PointXYZI> pc_xyzi;

class LidarLoc{

private:
    ros::NodeHandle nh_;
    ros::NodeHandle pnh_;

    //subscriber
    ros::Subscriber sub_lidar_top_;
    ros::Subscriber sub_lidar_left_;
    ros::Subscriber sub_lidar_right_;
    ros::Subscriber sub_imu_;
    ros::Subscriber sub_gnss_ins_;
    ros::Subscriber sub_vehicle_state_;
    ros::Subscriber sub_vehicle_info_;
    ros::Subscriber sub_region_;

    //publisher
    ros::Publisher pub_pose_vehicle_state_;
    ros::Publisher pub_odom_vehicle_state_;
    ros::Publisher pub_pose_lidar_ekf_;
    ros::Publisher pub_odom_lidar_ekf_;
    ros::Publisher pub_odom_matching_result_;

    ros::Publisher pub_pose_stamped_gnss_ins_;
    ros::Publisher pub_odom_gnss_ins_;
    ros::Publisher pub_pose_stamped_fused_result_;
    ros::Publisher pub_odometry_fused_result_;
    ros::Publisher pub_pose_stamped_matching_result_;
    ros::Publisher pub_odometry_matching_result_;
    ros::Publisher pub_lidar_update_pose_; //for fusion_localization_node

    ros::Publisher pub_left_raw_, pub_right_raw_;
    ros::Publisher pub_left_intensity_, pub_right_intensity_;
    ros::Publisher pub_global_points_map_;
    ros::Publisher pub_local_points_map_, pub_local_points_map_corrected_;
    ros::Publisher pub_reference_points_map_;

    ros::Publisher pub_speed_;
    ros::Publisher pub_lat_err_, pub_lon_err_, pub_ori_err_;
    ros::Publisher pub_fitness_;
    ros::Publisher pub_matching_time_;

    //tf
    tf::TransformBroadcaster tf_lidar_ekf_;
    tf::TransformBroadcaster tf_gps_ekf_;
    tf::TransformBroadcaster tf_dr_ekf_;

    //params
    int excute_mode_;
    std::string vehicle_num_;
    std::string topic_top_, topic_left_, topic_right_;
    std::string topic_gnss_ins_, topic_imu_;
    std::string topic_vehicle_state_, topic_vehicle_info_;
    std::string topic_lidar_update_pose_, topic_lidar_loc_pose_;
    std::string pointcloud_file_;
    std::string pointcloud_save_path_;
    std::string occupancy_grid_file_;
    std::string intensity_grid_file_;
    float utm2map_shift_x_, utm2map_shift_y_;
    float map2utm_shift_x_, map2utm_shift_y_;

    int lidar_type_; //0:vlp16 1:vlp32 2:pandar40p
    int lidar_top_type_, lidar_left_top_, lidar_right_top_;
    std::vector<float> top_list_, left_list_, right_list_;
    geometry_msgs::PoseStamped top_pose_, left_pose_, right_pose_;
    bool reserve_box_enable_;
    std::vector<float> reserve_box_list_;
    bool remove_box_enable_;
    std::vector<float> remove_box_list_;
    int intensity_min_, intensity_max_;

    std::string matching_method_;
    float reference_map_radius_, local_map_radius_;
    float reference_map_leaf_size_, local_map_leaf_size_;
    float init_dist_;
    int max_iterations_;

    float lidar_insert_dist_;
    float vehicle_speed_err_, angular_vel_z_err_;
    int save_map_frame_size_;
    float pub_global_map_rate_;

    //ekf
    EkfFusion dr_ekf_;
    EkfFusion gps_ekf_;
    EkfFusion lidar_ekf_;
    float dist_accumulated_;

    //vehicle speed and gear
    unsigned int gear_value_, gear_velue_last_;
    float gear_factor_;
    double vehicle_speed_stamp_;
    float vehicle_speed_, vehicle_speed_last_;
    float wheel_speed_;
    float vehicle_speed_factor_, wheel_speed_factor_;
    
    //imu
    float angular_vel_z_, angular_vel_z_last_;

    //current_region
    int region_type_, region_type_last_;
    bool ok_to_accumulate_;
    double region_stamp_;
    bool at_shore_crane_side_;
    float dist_at_shore_crane_side_;
    bool shore_crane_region_, lock_box_region_, curved_road_region_;

    //pointcloud
    pcl::CropBox<pcl::PointXYZI> reserve_box_;
    pcl::CropBox<pcl::PointXYZI> remove_box_;
    pcl::CropBox<pcl::PointXYZI> reference_map_box_;
    pcl::CropBox<pcl::PointXYZI> local_map_box_;

    bool left_points_map_changing_;
    bool new_lidar_left_;
    pcl::PointCloud<pcl::PointXYZI>::Ptr left_points_map_;

    bool right_points_map_changing_;
    bool new_lidar_right_;
    pcl::PointCloud<pcl::PointXYZI>::Ptr right_points_map_;

    pcl::PointCloud<pcl::PointXYZI>::Ptr reference_points_map_;

    // bool need_pub_global_map_;

    //map
    int lidar_points_deq_size_;
    std::deque<pcl::PointCloud<pcl::PointXYZI>::Ptr> left_points_deq_;
    std::deque<pcl::PointCloud<pcl::PointXYZI>::Ptr> right_points_deq_;

    float local_points_map_radius_;
    pcl::PointCloud<pcl::PointXYZI>::Ptr local_points_map_;
    pcl::PointCloud<pcl::PointXYZI>::Ptr global_points_map_;

    //mutex
    std::mutex mtx_local_map_;
    std::mutex mtx_left_points_, mtx_right_points_;
    std::mutex mtx_lidar_ekf_;


public:
    LidarLoc(ros::NodeHandle& nh, ros::NodeHandle& pnh);
    ~LidarLoc(){}
    void Init();
    void Run();

    void VisualizeGlobalMapThread();
    void LocalizationThread();

private:
    void PubPoseStamped(ros::Publisher publisher, 
                        geometry_msgs::PoseStamped pose,
                        std::string frame_id);
    void PubUtmPoseStamped(ros::Publisher publisher, 
                        geometry_msgs::PoseStamped pose,
                        std::string frame_id);
    void PubOdometry(ros::Publisher publisher, 
                     geometry_msgs::PoseStamped pose,
                     std::string frame_id);
    void PubPointCloud(ros::Publisher publisher, 
                       pcl::PointCloud<pcl::PointXYZI>::Ptr points,
                       std::string frame_id);
    void PubTransform(tf::TransformBroadcaster broadcaster,
                        geometry_msgs::PoseStamped pose,
                        std::string frame_id,
                        std::string child_frame_id);
    void PubFloat32(ros::Publisher publisher,
                    float value);

private:
    template<typename T>
    T GetParam(const std::string& name, const T& defaultValue);
    Eigen::Affine3f PoseStampedToAffine3f(geometry_msgs::PoseStamped pose);
    std::string GetTopicName(std::string s1, 
                            std::string s2, 
                            std::string s3);
    bool LoadParams();
    void EkfParamInit();
    void ValuesInit();
    void SubsPubsInit();
    void CheckRegionType();
    void RemovePointsOnVehicle();
    void ExtractGroundPoints();
    tf::Transform PoseToTransform(geometry_msgs::PoseStamped pose);
    void SetLidarPose();
    geometry_msgs::PoseStamped SetPoseStamped(double x, double y, double yaw,
                                              ros::Time stamp);
    bool SetCropBox(pcl::CropBox<pcl::PointXYZI>& box, 
                    std::vector<float> box_list,
                    bool flag);
    void CropBoxInit();
    void PointXYZI2PointXYZ(pcl::PointCloud<pcl::PointXYZI>::Ptr& cloud_in,
                            pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud_out);
    void FilterByIntensity(pcl::PointCloud<pcl::PointXYZI>::Ptr& in, 
                           pcl::PointCloud<pcl::PointXYZI>::Ptr& out, 
                           unsigned int intentisy, 
                           int compare_symbol);
    void FilterByBox(pcl::PointCloud<pcl::PointXYZI>::Ptr in, 
                     pcl::PointCloud<pcl::PointXYZI>::Ptr& out);
    void RemoveByVehicleBox(pcl::PointCloud<pcl::PointXYZI>::Ptr in, 
                            pcl::PointCloud<pcl::PointXYZI>::Ptr out);
    bool PointCloud2HasField(const sensor_msgs::PointCloud2& pc2,
                             const std::string& field_name);
    float GetDistBetweenPoints(pcl::PointXYZI p1, pcl::PointXYZI p2);
    void FromRosMsgWithIntensity(const sensor_msgs::PointCloud2::ConstPtr& msg,
                                 pcl::PointCloud<pcl::PointXYZI>::Ptr out,
                                 int intensity_min,
                                 int intensity_max);
    // void PointXYZI2PointXYZ(pcl::PointCloud<pcl::PointXYZI>::Ptr& in, 
    //                        pcl::PointCloud<pcl::PointXYZ>::Ptr& out);
    // void FromRosMsgWithIntensity(const sensor_msgs::PointCloud2::ConstPtr& msg,
    //                              pcl::PointCloud<pcl::PointXYZI>::Ptr out);
    void StateToPoseStamped(std::vector<double> state, 
                            geometry_msgs::PoseStamped& pose);
    geometry_msgs::PoseStamped GetPoseFromEkfFusion(EkfFusion ekf);

    bool SaveGlobalPointsMap();
    bool LoadGlobalPointsMap();
    void GetReferenceMap();
    void AccumulatePointsMap();

    // int Pointcloud2CSimplePointsMap(
    //     pcl::PointCloud<pcl::PointXYZI>::Ptr &input,
    //     mrpt::maps::CSimplePointsMap &output);

    void MapMatchingIcp(
        pcl::PointCloud<pcl::PointXYZI>::Ptr &local_map, 
        pcl::PointCloud<pcl::PointXYZI>::Ptr &global_map,
        bool &is_converged,
        float &fitness,
        Eigen::Affine3f &correction);
    void MapMatchingNdt(
        pcl::PointCloud<pcl::PointXYZI>::Ptr &local_map, 
        pcl::PointCloud<pcl::PointXYZI>::Ptr &global_map,
        bool &is_converged,
        float &fitness,
        Eigen::Affine3f &correction);
    void MapMatchingTest(
        pcl::PointCloud<pcl::PointXYZI>::Ptr &local_map, 
        pcl::PointCloud<pcl::PointXYZI>::Ptr &global_map,
        bool &is_converged,
        float &fitness,
        Eigen::Affine3f &correction);
    // void MapMatchingMrptIcp(
    //     pcl::PointCloud<pcl::PointXYZI>::Ptr &local_map, 
    //     pcl::PointCloud<pcl::PointXYZI>::Ptr &global_map,
    //     bool &is_converged,
    //     float &fitness,
    //     Eigen::Affine3f &correction);
    // void MapMatchingNdtOmp(
    //     pcl::PointCloud<pcl::PointXYZI>::Ptr &local_map, 
    //     pcl::PointCloud<pcl::PointXYZI>::Ptr &global_map,
    //     bool &is_converged,
    //     float &fitness,
    //     Eigen::Affine3f &correction);
    void DoMatching(std::string matching_method,
                    pcl::PointCloud<pcl::PointXYZI>::Ptr &local_map, 
                    pcl::PointCloud<pcl::PointXYZI>::Ptr &global_map,
                    bool &is_converged,
                    float &fitness,
                    Eigen::Affine3f &correction);
    void DoLocalization();
    void CalculateAndPubError(geometry_msgs::PoseStamped pose,
                            geometry_msgs::PoseStamped pose_ref);

private:
    void VehicleStateCallback(const localization_msgs::VehicleState::ConstPtr& msg);
    void VehicleInfoCallback(const pncc_msgs::VehicleInfo::ConstPtr& msg);
    void ImuCallback(const sensor_msgs::Imu::ConstPtr& msg);
    void GnssInsCallback(const gnss_msgs::GnssImuInfo::ConstPtr& msg);
    void RegionCallback(const hadmap_msgs::Region::ConstPtr& msg);
    void LidarTopCallback(const sensor_msgs::PointCloud2::ConstPtr& msg);
    void LidarLeftCallback(const sensor_msgs::PointCloud2::ConstPtr& msg);
    void LidarRightCallback(const sensor_msgs::PointCloud2::ConstPtr& msg);

};

#endif //_LIDAR_LOC_NODE_H_ 