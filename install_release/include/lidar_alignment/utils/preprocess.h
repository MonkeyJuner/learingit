//
// Created by lgj on 2019/8/13.
//

#ifndef LIDAR_ALIGNMENT_PREPROCESS_H
#define LIDAR_ALIGNMENT_PREPROCESS_H

#include "utils/basis_type.h"

namespace lidar_alignment{

    class Preprocess{
    public:
        bool doProcess(const PointCloudXYZIR& pc_in,
                       const LidarParameter& para,
                       const double vehicle_speed,
                       PointCloudXYZIR& pc_out);

    public:
        void transformCloud(const PointCloudXYZIR& pc_in,
                            const cv::Mat& extrinsic,
                            PointCloudXYZIR& pc_transformed);

        void speedCompensate(const PointCloudXYZIR& pc_in,
                             const double vehicle_speed,
                             const LidarParameter& para,
                             PointCloudXYZIR& pc_compensated);
    };
}

#endif //LIDAR_ALIGNMENT_PREPROCESS_H
