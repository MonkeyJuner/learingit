#ifndef RANSAC_CIRCLE_H
#define RANSAC_CIRCLE_H

#include "utils/basis_type.h"
#include "time.h"


class FittingCircle
{
public:
    int doInit(
            const double& radium,
            const double& min_pts_dist,
            const double& max_cluster_dist,
            const double& max_inlier_dist
    );
    int doFittingCircle(
            const PointCloudXYZI& point_cloud,
            geometry_msgs::Point& center,
            double& conf
    );

private:
    int fitCircle(
            const PointCloudXYZI& point_cloud,
            PointTypeXYZI& center_pt,
            const double& radium
    );
    int calInlierNum(
            const PointCloudXYZI& point_cloud,
            const PointTypeXYZI& center_pt,
            const double& radium,
            PointCloudXYZI& inliers
    );
    bool isInlier(
            const PointTypeXYZI& pt,
            const PointTypeXYZI& center_pt,
            const double& radium
    );
    int fitCircleConstRadium(
            const PointCloudXYZI& point_cloud,
            PointTypeXYZI& center_pt,
            const double& radium,
            PointCloudXYZI& show_pts
    );

private:
    double radium_;
    double min_pts_dist_2_;
    double max_cluster_dist_2_;
    double max_inlier_dist_;
    int ransac_iter_;
};

#endif