//
// Created by roshan on 18-1-30.
//

#ifndef _MAP_INFO_HPP_
#define _MAP_INFO_HPP_


#include <vector>
#include <unordered_map>
#include <map>
#include <boost/foreach.hpp>
#include <cmath>
#include <iostream>
#include <string>

#include <ros/ros.h>
#include <rosbag/bag.h>
#include <rosbag/view.h>
#include <opencv2/opencv.hpp>
#include <opencv2/flann.hpp>
#include <tf/tf.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_ros/transform_broadcaster.h>
#include <geometry_msgs/PoseStamped.h>

#include <localization_msgs/VehicleState.h>
#include <hadmap_msgs/Map.h>
#include <hadmap_msgs/Section.h>
#include <hadmap_msgs/Lane.h>
#include <hadmap_msgs/Point.h>


namespace trunk_tech_simulator
{
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

typedef struct
{
    double x;
    double y;
    double z;
}Point3f,*_Point3f;
//-----------------------------------

class MapServer
{

public:

    MapServer();
    MapServer(std::string map_frame_id,std::string trans_frame_id);
    void setTransFrame(std::string input);
    void setMapFrame(std::string input);
    void setTransInfo();
    int getRokiPath( geometry_msgs::PoseStamped &,std::vector<geometry_msgs::Point> & ref_path );
    int findNearestPtInfo(geometry_msgs::PoseStamped & );//获取最近点的信息

    void srv_clear();
//    int loadGlobalMap(const std::string &file_name);
    void loadGlobalMap_Callback(const hadmap_msgs::Map::ConstPtr& globalmap);
    int findRefPath(double input_x,double input_y,double input_yaw,std::vector<geometry_msgs::Point>  & refPath);


    int up_date(geometry_msgs::PoseStamped & hv,geometry_msgs::PoseStamped & tv,double dt);
    void getMap( hadmap_msgs::Map & );

    hadmap_msgs::Map global_map_;

    //----

    ////

private:
    int findNearestPt();//找到最近点的id;里面用到了kd树


    int findNextPt(int scn,int lane_index,int pt_index,
                     int & next_scn_index,int & next_lane_index,int & next_pt_index,
                     bool direction_flag
    );
    int circle_lane_change(double w,double r,double & half_theta, double & half_S);
    void cal_lateral_pos(double st_x,double st_y,double theta,double add_theta,double add_s,double & x,double & y);
    void saveMap();



private:
        //------------------------------
    int nearest_section_index_,nearest_lane_index_,nearest_pt_index_;
    std::string map_frame_id_,trans_frame_id_;

    geometry_msgs::PoseStamped input_pt_;


    double input_pt_x_,input_pt_y,input_pt_yaw;
        //-------------------------------
    //    geometry_msgs::Point EgoCarPosInMap;
    geometry_msgs::PoseStamped ego_car_pose_in_map;


//    geometry_msgs::TransformStamped transform;
    int ego_section_index,ego_lane_index,ego_pt_index;
    int tv_section_index,tv_lane_index,tv_pt_index;

    int hv_section_1,hv_section_2,hv_lane_1,hv_lane_2,hv_pt_1,hv_pt_2;
    int tv_section_1,tv_section_2,tv_lane_1,tv_lane_2,tv_pt_1,tv_pt_2;
    double hv_cur_speed,hv_S;
    double tv_cur_speed,tv_acc,tv_S,tv_cur_time_;
    double tv_R,tv_half_turn_S;

    int k_;


    cv::flann::Index kd_tree_; // for a-star algorithm

    rosbag::Bag global_map_loader_;


    std::unordered_map<int, int> from_kd_to_pt_;
    std::unordered_map<int, int> section_from_id_to_idx_;// section 与pt.id 的map
    std::unordered_map<int, int> from_lane_to_node_;// lane  与pt.id的map

    std::vector<cv::Point2f> kd_pts_;
    std::vector<Node> nodes_;
    std::vector<std::vector<int> > neighbors_;
    std::vector<std::vector<double> > graph_;


    tf::TransformListener listener_;
    tf::StampedTransform transform;

    std::multimap<int,int> section_out; // section's out topo
    std::multimap<int,int> lane_out; //  lane's in top
    std::multimap<int,int> section_in; // section's out topo
    std::multimap<int,int> lane_in;// lane's in topo
    std::map<int,int> lane_to_section; // lane id in section
    std::map<int,int> lane_id_to_index;// lane in to lane index
    std::map<int,int> section_id_to_index;// section id to index
    std::vector<int> save_section_id_;//
};
//----------------------------------------
/*
*
*
*
*
*
*/



}

#endif //PROJECT_MAP_INFO_HPP
