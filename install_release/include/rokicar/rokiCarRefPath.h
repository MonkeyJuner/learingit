//
// Created by roshan on 18-1-30.
//
//#pragma once

#ifndef PROJECT_ROKICARREFPATH_HPP
#define PROJECT_ROKICARREFPATH_HPP


#include <ros/ros.h>

#include <rosbag/bag.h>
#include <rosbag/view.h>
#include "pnc_msgs/VehicleState.h"
#include <unordered_map>
#include "hadmap_msgs/Map.h"
#include "hadmap_msgs/Section.h"
#include "hadmap_msgs/Lane.h"
#include "hadmap_msgs/Point.h"
#include <boost/foreach.hpp>

#include <opencv2/opencv.hpp>
#include <opencv2/flann.hpp>
#include <tf/transform_broadcaster.h>




namespace trunk_shWork{


struct Node
{
    int id;

    hadmap_msgs::Point pt;

    double len;
};

struct HadmapPt
{
    int section_idx;
    int lane_idx;
    int pt_idx;
    int pt_id;
};

struct Range
{
    std::size_t section_index;//section_index in sub_global_map_
    std::size_t lane_index;//lane_index in sub_global_map_
    std::size_t pt_begin_index;//begin point index in sub_global_map_
    std::size_t pt_end_index;//end point index in sub_global_map_
};

struct HadmapServerParameter
{
    int k;
    int k_sub;
    double m_per_pt;
    double max_yaw_diff;

    double len_ahead;
    double len_rear;
};


//---------------------------------
    class RefPathReader
    {

    public:

        int loadGlobalMap(const std::string &file_name);
        int findRefPath(double input_x,double input_y,double input_yaw,std::vector<geometry_msgs::Point>  & refPath);

        hadmap_msgs::Map global_map_;

    private:
        int findNearestPt();

    private:
        int k_;
        double m_posX,m_posY,m_yaw;


        cv::flann::Index kd_tree_; // for a-star algorithm

        rosbag::Bag global_map_loader_;


        std::unordered_map<int, int> from_kd_to_pt_;
        std::unordered_map<int, int> section_from_id_to_idx_;// section 与pt.id 的map
        std::unordered_map<int, int> from_lane_to_node_;// lane  与pt.id的map

        std::vector<cv::Point2f> kd_pts_;
        std::vector<Node> nodes_;
        std::vector<std::vector<int> > neighbors_;
        std::vector<std::vector<double> > graph_;
    };


}

#endif //PROJECT_ROKICARREFPATH_HPP
