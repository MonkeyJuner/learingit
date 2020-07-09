//
// Created by lgj on 19-4-29.
//

#ifndef LIDAR_ALIGNMENT_TRAILER_DETECT_H
#define LIDAR_ALIGNMENT_TRAILER_DETECT_H

#include "utils/basis_type.h"

class TrailerDetect{
public:
    void doInit(const TrailerDetectParameter& para, const LidarParameter &lidar_para);

    bool toTrailerDistance(const PointCloudXYZIR& point_cloud, double& dist);

    static bool sortByY(const pcl::PointXYZI pt1, const pcl::PointXYZI pt2);

    pcl::PointCloud<pcl::PointXYZI> points_selected_pub;

private:
    TrailerDetectParameter para_;
    LidarParameter lidar_para_;

    std::deque<double> trailer_dist_vec_;
    std::deque<double> trailer_dist_vec_2;
};

#endif //LIDAR_ALIGNMENT_TRAILER_DETECT_H
