#ifndef BASIC_TYPE_H
#define BASIC_TYPE_H

#include <geometry_msgs/Point.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/PCLPointCloud2.h>
#include <pcl/common/transforms.h>
#include <pcl/console/time.h>
#include <pcl/segmentation/organized_connected_component_segmentation.h>
#include <pcl/search/octree.h>
#include <pcl/search/kdtree.h>
#include <pcl/sample_consensus/ransac.h>
#include <pcl/sample_consensus/sac_model_plane.h>
#include <pcl/sample_consensus/sac_model_sphere.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/segmentation/extract_clusters.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/features/normal_3d.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/kdtree/kdtree.h>
#include <pcl/filters/voxel_grid.h>
#include<pcl/segmentation/sac_segmentation.h>
#include<pcl/search/search.h>
#include<pcl/search/kdtree.h>
#include<pcl/features/normal_3d.h>
#include<pcl/common/common.h>
#include <pcl/filters/extract_indices.h>

#include <opencv2/opencv.hpp>
#include <std_msgs/Header.h>
#include <nav_msgs/OccupancyGrid.h>
#include <geometry_msgs/Point.h>
#include <tos_msgs/TruckStop.h>
#include <pnc_msgs/PlanningCmd.h>
#include <pncc_msgs/VehicleInfo.h>
#include <tos_msgs/Ack.h>
#include "utils/polar_kalman.h"
#include "singleton.hpp"
#include <glog/logging.h>

typedef pcl::PointXYZI PointTypeXYZI;
typedef pcl::PointCloud<PointTypeXYZI> PointCloudXYZI;
typedef pcl::PointCloud<PointTypeXYZI>::Ptr PointCloudXYZIPtr;

struct PointXYZIR
{
    PCL_ADD_POINT4D;
    float intensity;
    uint16_t ring;
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW
}EIGEN_ALIGN16;

POINT_CLOUD_REGISTER_POINT_STRUCT(PointXYZIR,
                                  (float, x, x)
                                  (float, y, y)
                                  (float, z, z)
                                  (float, intensity, intensity)
                                  (uint16_t, ring, ring))
typedef PointXYZIR PointTypeXYZIR;
typedef pcl::PointCloud<PointTypeXYZIR> PointCloudXYZIR;
typedef pcl::PointCloud<PointTypeXYZIR>::Ptr PointCloudXYZIRPtr;


///岸桥/岸桥
enum Type
{
    QUAY = 1,
    YARD = 2
};

struct StopParams{
    int task_id;
    int id;
    int type;
    int lane;
    int container;
    float dist_shift;
};

typedef std::map<int, StopParams> YardShiftMap;
typedef std::map<int, StopParams> QuayShiftMap;
typedef std::map<int, StopParams> ShiftMap;

struct ROI{
    double x_min;
    double x_max;
    double y_min;
    double y_max;
    double z_min;
    double z_max;
};

struct LidarParameter{
    double heading;
    double pitch;
    double roll;
    double delta_x;
    double delta_y;
    double delta_z;
    cv::Mat extrinsic_mat;
    std::vector<ROI> nrois;

    void fromHprToMat(){
        extrinsic_mat = cv::Mat::zeros(3, 4, CV_64F);
        cv::Mat heading_m = (cv::Mat_<double>(3, 3) << cos(heading), -sin(heading), 0.0,
                sin(heading), cos(heading), 0.0,
                0.0, 0.0, 1.0);
        cv::Mat pitch_m= (cv::Mat_<double>(3, 3) << cos(pitch), 0, sin(pitch),
                0, 1, 0,
                -sin(pitch), 0, cos(pitch));
        cv::Mat roll_m  = (cv::Mat_<double>(3, 3) << 1, 0, 0,
                0, cos(roll), -sin(roll),
                0, sin(roll), cos(roll));

        extrinsic_mat(cv::Rect(0, 0, 3, 3)) = heading_m * pitch_m * roll_m;
        extrinsic_mat.at<double>(0, 3) = delta_x;
        extrinsic_mat.at<double>(1, 3) = delta_y;
        extrinsic_mat.at<double>(2, 3) = delta_z;
    }
};

struct ReflectorParameter{
    int id;
    double dist;
    int plane;      // 0没贴反光膜，1贴了反光膜
};


struct TrailerDetectParameter{
    bool bool_trailer;
    double default_dist_40_qian_20;
    double default_dist_hou_20;
    int less_ring_num;
    int line_min;
    int line_max;

    double estimation_distance;
    double seg_distance_threshold;

    double roi_x_max;
    double roi_x_min;
    double roi_z_max;
    double roi_z_min;
    double roi_y;

    int deque_size;

};


struct ReflectorDetectParameter
{
    int seed_intensity_thres;
    int line_start;
    int line_end;
    double height_min;
    double height_max;
    int reflector_intensity_thres;
    int reflector_plane_intensity_thres;

    double reflector_max_dist;
    double reflector_ring_pt_dist;
    double default_two_reflectors_dist;
    double min_offset_for_two_reflector_dist;
    double max_offset_for_two_reflector_dist;

    int cluster_min;
    int cluster_max;
    double cluster_max_dist;

    double fitting_radium;
    double fitting_min_pts_dist;
    double fitting_max_cluster_dist;
    double fitting_max_inlier_dist;
    int left_or_right;

    ROI plane_roi;
};

struct ReflectorTrackerParameter
{
    int max_missing_times;
    int min_appearing_times;
    bool show_debug;
};

struct Ring
{
    geometry_msgs::Point point_center;
    double radium;
    double conf;

    PointCloudXYZI contour;
};

struct ReflectorDetector
{
    std_msgs::Header header;
    int id;

    //// 圆环
    std::vector<Ring> rings;
    Ring ring_avg;

    //// 中心，半径，法向量，最小z，最大z
//    geometry_msgs::Point point_center;
//    double radium;
//    geometry_msgs::Point norm_vec;
//    double z_min;
//    double z_max;
//    double distance;
};


struct ReflectTracker
{
    //// 跟踪器
    int appearing_times;
    int missing_times;

    std::vector<cv::Mat> trans;
    PolarKalman polar_kalman;
    PolarKalman1 angle_kalman;

    //// 历史结果
    std::vector<ReflectorDetector> clusters;
    std::vector<ReflectorDetector> clusters_rectified;

    std::deque<std::vector<ReflectorDetector> > reflector_detects;
};

struct HistoryData{
    PointCloudXYZI pc_original;
    std::vector<ReflectorDetector> reflecctors;
    double vehicle_speed;
};



template <class T>
T BytesTo(const std::vector<uint8_t>& data, uint32_t start_idx){
    const size_t kNumberOfBytes = sizeof(T);
    uint8_t byte_array[kNumberOfBytes];
    for(size_t i = 0; i < kNumberOfBytes; ++i){
        byte_array[i] = data[start_idx + i];
    }
    T result;
    std::copy(reinterpret_cast<const uint8_t *>(&byte_array[0]),
              reinterpret_cast<const uint8_t *>(&byte_array[kNumberOfBytes]),
              reinterpret_cast<uint8_t *>(&result));
    return result;
}

#endif