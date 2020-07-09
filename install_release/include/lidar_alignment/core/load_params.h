//
// Created by lgj on 2019/8/12.
//

#ifndef LIDAR_ALIGNMENT_LOAD_PARAMS_H
#define LIDAR_ALIGNMENT_LOAD_PARAMS_H

#include "utils/basis_type.h"

class LoadParams{

public:
    LoadParams();

    int doLoad(ros::NodeHandle& node_handle_private);

    int loadRosParams(ros::NodeHandle& node_handle_private);
    int loadReflectorType(const std::string& path);
    int loadShiftMap(const std::string& path);

    void loadIdMap();

public:

    std::map<std::string, int> id_map_;
    YardShiftMap yard_shift_map_;
    QuayShiftMap quay_shift_map_;

    float shift_filter_dist_;
    std::string vlp16_top_name_;
    std::string vlp16_top_frame_id_;

    LidarParameter top_lidar_para_;
    ReflectorDetectParameter detect_para_;
    ReflectorTrackerParameter tracker_para_;
    TrailerDetectParameter trailer_para_;

};

#endif //LIDAR_ALIGNMENT_LOAD_PARAMS_H
