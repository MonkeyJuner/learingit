#ifndef _UTILITY_LIDAR_ODOMETRY_H_
#define _UTILITY_LIDAR_ODOMETRY_H_


#include <ros/ros.h>

#include <sensor_msgs/Imu.h>
#include <sensor_msgs/PointCloud2.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Float32.h>
#include <geometry_msgs/PoseArray.h>
#include <visualization_msgs/Marker.h>
#include <geometry_msgs/Point.h>

#include <localization_msgs/VehicleState.h>
#include <pncc_msgs/VehicleInfo.h>
#include <hadmap_msgs/Region.h>
#include <gnss_msgs/GnssImuInfo.h>

#include "cloud_msgs/cloud_info.h"

#include <mrpt/maps/CSimplePointsMap.h>
#include <mrpt/slam/CICP.h>
#include <mrpt/poses/CPose2D.h>
#include <mrpt/poses/CPose3D.h>
#include <mrpt/poses/CPosePDF.h>
#include <mrpt/poses/CPose3DPDF.h>
#include <mrpt/poses/CPosePDFGaussian.h>

#include <opencv/cv.h>

#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl_ros/point_cloud.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/range_image/range_image.h>
#include <pcl/filters/filter.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/kdtree/kdtree_flann.h>
#include <pcl/common/common.h>
#include <pcl/registration/icp.h>
#include <pcl/io/ply_io.h>
#include <pcl/io/pcd_io.h>
#include <pcl/filters/passthrough.h>
#include <pcl/registration/ndt.h>      
#include <pcl/registration/ndt_2d.h>
#include <pcl/filters/approximate_voxel_grid.h>   
#include <pcl/filters/filter.h>
#include <pcl_ros/transforms.h>

#include <tf/transform_broadcaster.h>
#include <tf/transform_datatypes.h>
 
#include <vector>
#include <cmath>
#include <algorithm>
#include <queue>
#include <deque>
#include <iostream>
#include <fstream>
#include <ctime>
#include <cfloat>
#include <iterator>
#include <sstream>
#include <string>
#include <limits>
#include <iomanip>
#include <array>
#include <thread>
#include <mutex>

#define PI 3.14159265

using namespace std;

typedef pcl::PointXYZI  PointType;

// //VLP-16
// extern const int N_SCAN = 16;
// extern const int Horizon_SCAN = 1800;
// extern const float ang_res_x = 0.2;
// extern const float ang_res_y = 2.0;
// extern const float ang_bottom = 15.0+0.1;
// extern const int groundScanInd = 7; //7(original)

// //Ouster OS1-64
// extern const int N_SCAN = 64;
// extern const int Horizon_SCAN = 1024;
// extern const float ang_res_x = 360.0/float(Horizon_SCAN);
// extern const float ang_res_y = 33.2/float(N_SCAN-1);
// extern const float ang_bottom = 16.6+0.1;
// extern const int groundScanInd = 15;

// extern const double lidarPoseX = 0.0;
// extern const double lidarPoseY = 0.0;
// extern const double lidarPoseZ = 0.0;
// extern const double lidarPoseRoll = -0.01;
// extern const double lidarPosePitch = 0.0;
// extern const double lidarPoseYaw = -0.027;

// extern const double accOfGravity = 9.801; 

// extern const bool loopClosureEnableFlag = true;
// extern const bool mapMatchingEnableFlag = false;
// extern const double mappingProcessInterval = 0.3; //0.3 default

// extern const float scanPeriod = 0.1;
// extern const int systemDelay = 0;
// extern const int imuQueLength = 200;
// // extern const string imuTopic = "/trunk_info/imu";
// extern const string imuTopic = "/imu/data";

// //param for ground judge, Unit(degree)
// // extern const float groundDeterminAngle = 10；//default
// extern const float groundDeterminAngle = 2; 
// //param for gps pose shift, Unit(meter)
// extern const float gpsPoseShiftX = -567403.0;
// extern const float gpsPoseShiftY = -4315210.0;
// extern const float outputPoseShiftX = 567403.0;
// extern const float outputPoseShiftY = 4315210.0;

// //min distance for save a new KeyFrame pose, Unit(meter)
// extern const float minDistanceBetweenKeyFrame = 0.3;  //0.3 default
// //constrain noise
// extern const float gpsConstrainNoise = 1e-6;
// extern const int gpsConstrainStep = 10; 
// extern const float groundConstrainNoise = 1e-3;

// extern const float sensorMountAngle = 0.0;
// extern const float segmentTheta = 1.0472;
// extern const int segmentValidPointNum = 5; //5
// extern const int segmentValidLineNum = 3; //3
// extern const float segmentAlphaX = ang_res_x / 180.0 * M_PI;
// extern const float segmentAlphaY = ang_res_y / 180.0 * M_PI;


// extern const int edgeFeatureNum = 2; //2 default 
// extern const int surfFeatureNum = 4; //4 default 
// extern const int sectionsTotal = 6; //6 default 
// extern const float edgeThreshold = 0.5; //0.1 default
// extern const float surfThreshold = 0.1; //0.1 default
// extern const float nearestFeatureSearchSqDist = 25;  //25 default 

// extern const float surroundingKeyframeSearchRadius = 50.0; //50
// extern const int   surroundingKeyframeSearchNum = 50; //50

// extern const float historyKeyframeSearchRadius = 5.0;
// extern const int   historyKeyframeSearchNum = 25;
// extern const float historyKeyframeFitnessScore = 0.3;

// extern const float globalMapVisualizationSearchRadius = 400.0;
// extern const unsigned int keyFrameSize = 50; //50

// extern const double distForSlamInitYard = 50.0; //50m


struct smoothness_t{ 
    float value;
    size_t ind;
};

struct by_value{ 
    bool operator()(smoothness_t const &left, smoothness_t const &right) { 
        return left.value < right.value;
    }
};

struct PointXYZIRPYT
{
    PCL_ADD_POINT4D
    PCL_ADD_INTENSITY;
    float roll;
    float pitch;
    float yaw;
    double time;
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW
} EIGEN_ALIGN16;

POINT_CLOUD_REGISTER_POINT_STRUCT (PointXYZIRPYT,
                                   (float, x, x) (float, y, y)
                                   (float, z, z) (float, intensity, intensity)
                                   (float, roll, roll) (float, pitch, pitch) (float, yaw, yaw)
                                   (double, time, time)
)

typedef PointXYZIRPYT  PointTypePose;


void squarePassThroughFilter(
    pcl::PointCloud<pcl::PointXYZI>::Ptr &cloud_in,
    pcl::PointCloud<pcl::PointXYZI>::Ptr &cloud_out,
    string x_field_name, 
    double x_min, 
    double x_max,
    string y_field_name, 
    double y_min, 
    double y_max)
{
    pcl::PassThrough<pcl::PointXYZI> passGlobalX;
    passGlobalX.setInputCloud(cloud_in);
    passGlobalX.setFilterFieldName(x_field_name);
    passGlobalX.setFilterLimits(x_min, x_max);
    passGlobalX.filter(*cloud_out);
    pcl::PassThrough<pcl::PointXYZI> passGlobalY;
    passGlobalY.setInputCloud(cloud_out);
    passGlobalY.setFilterFieldName(y_field_name);
    passGlobalY.setFilterLimits(y_min, y_max);
    passGlobalY.filter(*cloud_out);
}

void removeNaNInfFromPointCloud(
    const pcl::PointCloud<pcl::PointXYZI> &cloud_in,
    pcl::PointCloud<pcl::PointXYZ> &cloud_out,
    std::vector<int> &index)
{
    int cloudSize = cloud_in.points.size();
    for(int i=0; i<cloudSize; ++i){
        if(std::isinf(cloud_in.points[i].x) ||
            std::isinf(cloud_in.points[i].y) ||
            std::isinf(cloud_in.points[i].z) || 
            std::isinf(cloud_in.points[i].intensity) ||
            std::isnan(cloud_in.points[i].x) ||
            std::isnan(cloud_in.points[i].y) ||
            std::isnan(cloud_in.points[i].z) ||
            std::isnan(cloud_in.points[i].intensity)) {
            printf("point %i has nan\n", i);
            continue;    
        } else {
            pcl::PointXYZ point;
            point.x = cloud_in.points[i].x;
            point.y = cloud_in.points[i].y;
            point.z = cloud_in.points[i].z;
            cloud_out.points.push_back(point);
            index.push_back(i);
        }
    }
}


void removeNoneCorrespondingPoints(
    pcl::PointCloud<pcl::PointXYZ>::Ptr &source,
    pcl::PointCloud<pcl::PointXYZ>::Ptr &target,
    pcl::PointCloud<pcl::PointXYZ> &output,
    double radius)
{
    pcl::PointCloud<pcl::PointXYZ>::Ptr temp(new pcl::PointCloud<pcl::PointXYZ>);
	pcl::KdTreeFLANN<pcl::PointXYZ> kdtreeTarget;
    kdtreeTarget.setInputCloud(target);
    int pointNum = source->points.size();
    std::vector<int> index;
    std::vector<float> pointRadiusSquaredDistance;

    for(int i=0; i<pointNum; ++i){
        kdtreeTarget.radiusSearch(source->points[i], radius, index, pointRadiusSquaredDistance);
        if(index.size() != 0){
            temp->points.push_back(source->points[i]);
        }
    }
    if(temp->points.size() != 0){
        pcl::copyPointCloud(*temp, output);
    } else {
        pcl::copyPointCloud(*source, output);
    }
}


visualization_msgs::Marker generateSquareAreaMarker(
    std::string frame_id,
    std::string ns,
    float lifetime,
    double x_min,
    double x_max,
    double y_min,
    double y_max)
{
    visualization_msgs::Marker marker;
    marker.header.frame_id = frame_id;
    marker.header.stamp = ros::Time::now();
    marker.ns = ns;
    marker.id = 0;
    if(x_min>x_max || y_min>y_max) return marker;
    // marker.lifetime = ros::Duration(lifetime);
    marker.type = visualization_msgs::Marker::LINE_STRIP;
    marker.action = visualization_msgs::Marker::ADD;
    marker.scale.x = 0.2;
    marker.color.a = 0.6;
    marker.color.r = 1.0;
    marker.color.g = 1.0;
    marker.color.b = 0.2;
    geometry_msgs::Point p1, p2, p3, p4;
    p1.x = x_min; p1.y = y_min;
    p2.x = x_max; p2.y = y_min;
    p3.x = x_max; p3.y = y_max;
    p4.x = x_min; p4.y = y_max;
    p1.z = -3.5; p2.z = -3.5; p3.z = -3.5; p4.z = -3.5;
    marker.points.push_back(p1);
    marker.points.push_back(p2);
    marker.points.push_back(p3);
    marker.points.push_back(p4);
    marker.points.push_back(p1);
    return marker;
}


int pointcloud2CSimplePointsMap(
    pcl::PointCloud<pcl::PointXYZ>::Ptr &input,
    mrpt::maps::CSimplePointsMap &output)
{
    int size = input->points.size();
    if(!size) return 0;
    output.resize(size);
    for(int i=0; i<size; i++){
        output.setPointFast(i, 
                            input->points[i].z,
                            input->points[i].x,
                            input->points[i].y);
    }
    return size;
}

    // gtsam::Pose3 transformPoseIn2D(gtsam::Pose3 coord_pose, gtsam::Pose3 trans_pose){
    //     Vector3 ypr = coord_pose.rotation().ypr();
    //     double d = sqrt(trans_pose.x()*trans_pose.x() + trans_pose.y()*trans_pose.y());
    //     double theta = atan2(trans_pose.y(), trans_pose.x());
    //     double x = coord_pose.x() + cos(ypr.z() + theta) * d;
    //     double y = coord_pose.y() + sin(ypr.z() + theta) * d;
    //     double z = coord_pose.z() + trans_pose.z();
    //     double yaw = coord_pose.rotation().ypr().z() + trans_pose.rotation().ypr().z();
    //     double pitch = coord_pose.rotation().ypr().y();
    //     double roll = coord_pose.rotation().ypr().x();
    //     gtsam::Pose3 pose_out = Pose3(Rot3::RzRyRx(yaw, pitch, roll), Point3(x, y, z));
    //     return pose_out;
    // }




#endif
