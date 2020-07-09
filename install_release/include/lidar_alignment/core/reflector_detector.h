//
// Created by lgj on 2019/8/13.
//

#ifndef LIDAR_ALIGNMENT_REFLECTOR_DETECTOR_H
#define LIDAR_ALIGNMENT_REFLECTOR_DETECTOR_H

#include "utils/basis_type.h"
#include "utils/ransac_circle.h"

namespace lidar_alignment{

    class ReflectorDetect{
    public:
        bool doInit(const ReflectorDetectParameter& para);

        bool doDetect(const PointCloudXYZIR& pc_in,
                      const StopParams& vehicle_target,
                      const ros::Time& new_time);

    private:

        bool reflectorPoints(const PointCloudXYZIR &pc_in,
                             const StopParams& vehcile_target,
                             PointCloudXYZI& point_cloud_binary);
        bool filter(const StopParams& vehicle_target,
                    std::vector<ReflectorDetector>& reflector_detectors);
        int getCircle(Ring& ring);

    public:
        bool reflector_detected;
        double two_reflector_dist_;

        PointCloudXYZI point_cloud_original_;
        PointCloudXYZI point_cloud_binary_;
        PointCloudXYZI point_cloud_reflectors_;
        std::vector<ReflectorDetector> reflector_detectors_;

    private:
        ReflectorDetectParameter para_;
        double reflector_max_dist_2;
        double relfector_ring_pt_dist_2;
        FittingCircle ransac_circle_;
        pcl::EuclideanClusterExtraction<PointTypeXYZI> ec;

        int old_reflector_id;
        int new_reflector_id;
    };

}


#endif //LIDAR_ALIGNMENT_REFLECTOR_DETECTOR_H
