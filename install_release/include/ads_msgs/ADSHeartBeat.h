// Generated by gencpp from file ads_msgs/ADSHeartBeat.msg
// DO NOT EDIT!


#ifndef ADS_MSGS_MESSAGE_ADSHEARTBEAT_H
#define ADS_MSGS_MESSAGE_ADSHEARTBEAT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <ads_msgs/ADSLockStatus.h>
#include <ads_msgs/ADSDrivingStatus.h>
#include <ads_msgs/ADSCommandStatus.h>

namespace ads_msgs
{
template <class ContainerAllocator>
struct ADSHeartBeat_
{
  typedef ADSHeartBeat_<ContainerAllocator> Type;

  ADSHeartBeat_()
    : header()
    , lock_status()
    , driving_status()
    , command_status()  {
    }
  ADSHeartBeat_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , lock_status(_alloc)
    , driving_status(_alloc)
    , command_status(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::ads_msgs::ADSLockStatus_<ContainerAllocator>  _lock_status_type;
  _lock_status_type lock_status;

   typedef  ::ads_msgs::ADSDrivingStatus_<ContainerAllocator>  _driving_status_type;
  _driving_status_type driving_status;

   typedef  ::ads_msgs::ADSCommandStatus_<ContainerAllocator>  _command_status_type;
  _command_status_type command_status;





  typedef boost::shared_ptr< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> const> ConstPtr;

}; // struct ADSHeartBeat_

typedef ::ads_msgs::ADSHeartBeat_<std::allocator<void> > ADSHeartBeat;

typedef boost::shared_ptr< ::ads_msgs::ADSHeartBeat > ADSHeartBeatPtr;
typedef boost::shared_ptr< ::ads_msgs::ADSHeartBeat const> ADSHeartBeatConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ads_msgs::ADSHeartBeat_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ads_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ads_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/src/interfaces/ads/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a20797a7f321095ed8bcf7768c64a33";
  }

  static const char* value(const ::ads_msgs::ADSHeartBeat_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a20797a7f321095ULL;
  static const uint64_t static_value2 = 0xed8bcf7768c64a33ULL;
};

template<class ContainerAllocator>
struct DataType< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ads_msgs/ADSHeartBeat";
  }

  static const char* value(const ::ads_msgs::ADSHeartBeat_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
# 车体状态\n\
ADSLockStatus lock_status\n\
# 行驶状态\n\
ADSDrivingStatus driving_status\n\
# 命令状态\n\
ADSCommandStatus command_status\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: ads_msgs/ADSLockStatus\n\
# 状态-空闲\n\
uint8 STATUS_LOCK = 0\n\
# 状态-就绪\n\
uint8 STATUS_UNLOCK = 1\n\
# 状态-无效\n\
uint8 STATUS_UNVALID = 2\n\
\n\
# 车体状态\n\
uint8 status\n\
\n\
# 错误码\n\
uint8[] err_codes\n\
================================================================================\n\
MSG: ads_msgs/ADSDrivingStatus\n\
# 状态-等待目标\n\
uint8 STATUS_WAIT_TARGET = 0\n\
# 状态-等待启动\n\
uint8 STATUS_WAIT_START = 1\n\
# 状态-驶向终点\n\
uint8 STATUS_TRAVEL = 2\n\
# 状态-到达终点\n\
uint8 STATUS_ARRIVED = 3\n\
# 状态-错误\n\
uint8 STATUS_ERROR = 4\n\
# 状态-无效\n\
uint8 STATUS_UNVALID = 5\n\
\n\
# 错误-未处于自动驾驶状态\n\
uint8 ERROR_AUTO_OFF = 0\n\
# 错误-硬件锁定\n\
uint8 ERROR_HARDWARE_LOCK = 1\n\
# 错误-定位或底盘失效\n\
uint8 ERROR_VEHICLE = 2\n\
# 错误-地图\n\
uint8 ERROR_MAP = 3\n\
# 错误-雷达\n\
uint8 ERROR_LADAR = 4\n\
# 错误-长时间无法到达终点\n\
uint8 ERROR_CANNOT_ARRIVE = 5\n\
\n\
# 任务ID\n\
uint32 task_id\n\
\n\
# 行驶状态\n\
uint8 status\n\
\n\
# 错误码\n\
uint8[] err_codes\n\
================================================================================\n\
MSG: ads_msgs/ADSCommandStatus\n\
# 状态-执行中\n\
uint8 STATUS_EXECUTING = 0\n\
# 状态-已完毕\n\
uint8 STATUS_DONE = 1\n\
# 状态-错误\n\
uint8 STATUS_ERROR = 2\n\
# 状态-无效\n\
uint8 STATUS_UNVALID = 3\n\
\n\
# 错误-执行命令超时\n\
uint8 ERROR_TIMEOUT = 1\n\
# 错误-当不允许执行该命令\n\
uint8 ERROR_REJECT = 2\n\
# 错误-命令执行结果不符合预期\n\
uint8 ERROR_FAIL = 3\n\
# 错误-重复命令\n\
uint8 ERROR_REPEAT = 4\n\
\n\
# 命令唯一标识\n\
uint32 id\n\
\n\
# 命令状态\n\
uint8 status\n\
\n\
# 错误码\n\
uint8[] err_codes\n\
";
  }

  static const char* value(const ::ads_msgs::ADSHeartBeat_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.lock_status);
      stream.next(m.driving_status);
      stream.next(m.command_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ADSHeartBeat_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ads_msgs::ADSHeartBeat_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ads_msgs::ADSHeartBeat_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "lock_status: ";
    s << std::endl;
    Printer< ::ads_msgs::ADSLockStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.lock_status);
    s << indent << "driving_status: ";
    s << std::endl;
    Printer< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.driving_status);
    s << indent << "command_status: ";
    s << std::endl;
    Printer< ::ads_msgs::ADSCommandStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.command_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ADS_MSGS_MESSAGE_ADSHEARTBEAT_H