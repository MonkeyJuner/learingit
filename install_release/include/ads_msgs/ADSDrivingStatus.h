// Generated by gencpp from file ads_msgs/ADSDrivingStatus.msg
// DO NOT EDIT!


#ifndef ADS_MSGS_MESSAGE_ADSDRIVINGSTATUS_H
#define ADS_MSGS_MESSAGE_ADSDRIVINGSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ads_msgs
{
template <class ContainerAllocator>
struct ADSDrivingStatus_
{
  typedef ADSDrivingStatus_<ContainerAllocator> Type;

  ADSDrivingStatus_()
    : task_id(0)
    , status(0)
    , err_codes()  {
    }
  ADSDrivingStatus_(const ContainerAllocator& _alloc)
    : task_id(0)
    , status(0)
    , err_codes(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _task_id_type;
  _task_id_type task_id;

   typedef uint8_t _status_type;
  _status_type status;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _err_codes_type;
  _err_codes_type err_codes;



  enum {
    STATUS_WAIT_TARGET = 0u,
    STATUS_WAIT_START = 1u,
    STATUS_TRAVEL = 2u,
    STATUS_ARRIVED = 3u,
    STATUS_ERROR = 4u,
    STATUS_UNVALID = 5u,
    ERROR_AUTO_OFF = 0u,
    ERROR_HARDWARE_LOCK = 1u,
    ERROR_VEHICLE = 2u,
    ERROR_MAP = 3u,
    ERROR_LADAR = 4u,
    ERROR_CANNOT_ARRIVE = 5u,
  };


  typedef boost::shared_ptr< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> const> ConstPtr;

}; // struct ADSDrivingStatus_

typedef ::ads_msgs::ADSDrivingStatus_<std::allocator<void> > ADSDrivingStatus;

typedef boost::shared_ptr< ::ads_msgs::ADSDrivingStatus > ADSDrivingStatusPtr;
typedef boost::shared_ptr< ::ads_msgs::ADSDrivingStatus const> ADSDrivingStatusConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ads_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ads_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/src/interfaces/ads/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d820d95d8e174cb96103f731f03f3fd9";
  }

  static const char* value(const ::ads_msgs::ADSDrivingStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd820d95d8e174cb9ULL;
  static const uint64_t static_value2 = 0x6103f731f03f3fd9ULL;
};

template<class ContainerAllocator>
struct DataType< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ads_msgs/ADSDrivingStatus";
  }

  static const char* value(const ::ads_msgs::ADSDrivingStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 状态-等待目标\n\
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
";
  }

  static const char* value(const ::ads_msgs::ADSDrivingStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task_id);
      stream.next(m.status);
      stream.next(m.err_codes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ADSDrivingStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ads_msgs::ADSDrivingStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ads_msgs::ADSDrivingStatus_<ContainerAllocator>& v)
  {
    s << indent << "task_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.task_id);
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
    s << indent << "err_codes[]" << std::endl;
    for (size_t i = 0; i < v.err_codes.size(); ++i)
    {
      s << indent << "  err_codes[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.err_codes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ADS_MSGS_MESSAGE_ADSDRIVINGSTATUS_H
