#pragma once

#include <iostream>
#include <vector>
#include <map>
#include "tf/tf.h"
//#include "hadmap_navigation/NavMap.h"
#include "visualization_msgs/Marker.h"
#include "rokicar/RokiCreatorMsg.h"
#include "perception_msgs/Objects.h"
#include "perception_msgs/OgmPoint.h"
#include "perception_msgs/OgmPoints.h"

namespace rokicar{
using namespace std;

typedef tf::Vector3 Vector3;
typedef tf::Quaternion Quaternion;
typedef tf::Vector3 Box;

class BaseAI;
class BaseSimu;
class AIManager;
class SimuManager;
class Environment;
class RokiSystem;
class BaseRoboCar;

#define MAX_ROBOTS_NUM		100
#define NULL_CAR_ID			0
#define MAIN_CAR_ID			99999999
#define AI_TICK_INTERVAL	0.5  // 0.5s 一次肉鸡AI
#define SIMU_TICK_INTERVAL	0.05 // 0.05s 一次物理仿真
#define GC_TICK_INTERVAL	1	 // 5s 一次清理
#define MAX_LIMIT_DISTANCE2 250000 // 超过500m视为清除

#define ROKI_SHOW_INTERVAL	0.05  // 0.1s update rokicar marker

enum RoboType {
	ROKI_CAR = 1,  // 肉鸡车，陪练机器人
	MAIN_CAR = 0,  // 主线机器人，被测试的方针车
};

};
