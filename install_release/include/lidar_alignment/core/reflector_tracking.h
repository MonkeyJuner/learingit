#ifndef REFLECTOR_TRACKING
#define REFLECTOR_TRACKING

#include "utils/basis_type.h"
#include "utils/HungarianAlg.h"



class ReflectorTracking
{
public:
    int doInit(
            const ReflectorTrackerParameter& para
    );
    int doReflectorTracking(
            const std::vector<ReflectorDetector>& reflector_detectors,
            const ros::Time& new_time
    );
    int reset();

public:
    ReflectTracker reflector_trackers_;
    cv::Mat vehicle_pos_;
    std::deque<cv::Mat> vehicle_pos_vec_;
    double angle_;
    geometry_msgs::Point pt_;

//    tos_msgs::ChassisStatus chassis_status_;
//    tos_msgs::ChassisStatus chassis_status_old_;
    pnc_msgs::PlanningCmd planning_cmd_;
    pnc_msgs::PlanningCmd planning_cmd_old_;
    pncc_msgs::VehicleInfo vehicle_info_;
    pncc_msgs::VehicleInfo vehicle_info_old_;
    int status_;


private:
    static bool sortByX(
            const ReflectorDetector& d1,
            const ReflectorDetector& d2
    );
    cv::Mat fromReflectorToMat(
            const std::vector<ReflectorDetector>& detectors,
            double& angle,
            geometry_msgs::Point& pt
    );
    cv::Mat getRotationMat(
            double& angle,
            geometry_msgs::Point& pt
    );


private:
    ReflectorTrackerParameter para_;
//    int max_missing_times_;
//    int min_appearing_times_;
    int old_id_;
    int max_pos_;
    int count_static_;
    bool count_flag_;

};



#endif