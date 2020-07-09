// Generated by gencpp from file tos_msgs/YardCraneStatus.msg
// DO NOT EDIT!


#ifndef TOS_MSGS_MESSAGE_YARDCRANESTATUS_H
#define TOS_MSGS_MESSAGE_YARDCRANESTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace tos_msgs
{
template <class ContainerAllocator>
struct YardCraneStatus_
{
  typedef YardCraneStatus_<ContainerAllocator> Type;

  YardCraneStatus_()
    : header()
    , WorkOrder()
    , CraneNBR(0)
    , TruckNBR()
    , Time()
    , GantryPosition(0.0)
    , GantryMove(0)
    , TrolleyPosition(0.0)
    , HositPosition(0.0)
    , SpreadLock(0)
    , SpreadLoad(0.0)
    , SpreadWorkType(0)
    , VasStatus(0)
    , TruckLoad(0)
    , TruckInPosition(0)
    , SpreadOnChassis(0)
    , TruckLeave(0)
    , Distance(0)
    , send_packet_id(0)  {
    }
  YardCraneStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , WorkOrder(_alloc)
    , CraneNBR(0)
    , TruckNBR(_alloc)
    , Time(_alloc)
    , GantryPosition(0.0)
    , GantryMove(0)
    , TrolleyPosition(0.0)
    , HositPosition(0.0)
    , SpreadLock(0)
    , SpreadLoad(0.0)
    , SpreadWorkType(0)
    , VasStatus(0)
    , TruckLoad(0)
    , TruckInPosition(0)
    , SpreadOnChassis(0)
    , TruckLeave(0)
    , Distance(0)
    , send_packet_id(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _WorkOrder_type;
  _WorkOrder_type WorkOrder;

   typedef int32_t _CraneNBR_type;
  _CraneNBR_type CraneNBR;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _TruckNBR_type;
  _TruckNBR_type TruckNBR;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Time_type;
  _Time_type Time;

   typedef double _GantryPosition_type;
  _GantryPosition_type GantryPosition;

   typedef uint8_t _GantryMove_type;
  _GantryMove_type GantryMove;

   typedef double _TrolleyPosition_type;
  _TrolleyPosition_type TrolleyPosition;

   typedef double _HositPosition_type;
  _HositPosition_type HositPosition;

   typedef uint8_t _SpreadLock_type;
  _SpreadLock_type SpreadLock;

   typedef double _SpreadLoad_type;
  _SpreadLoad_type SpreadLoad;

   typedef int32_t _SpreadWorkType_type;
  _SpreadWorkType_type SpreadWorkType;

   typedef uint8_t _VasStatus_type;
  _VasStatus_type VasStatus;

   typedef uint8_t _TruckLoad_type;
  _TruckLoad_type TruckLoad;

   typedef uint8_t _TruckInPosition_type;
  _TruckInPosition_type TruckInPosition;

   typedef uint8_t _SpreadOnChassis_type;
  _SpreadOnChassis_type SpreadOnChassis;

   typedef uint8_t _TruckLeave_type;
  _TruckLeave_type TruckLeave;

   typedef int32_t _Distance_type;
  _Distance_type Distance;

   typedef int32_t _send_packet_id_type;
  _send_packet_id_type send_packet_id;





  typedef boost::shared_ptr< ::tos_msgs::YardCraneStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tos_msgs::YardCraneStatus_<ContainerAllocator> const> ConstPtr;

}; // struct YardCraneStatus_

typedef ::tos_msgs::YardCraneStatus_<std::allocator<void> > YardCraneStatus;

typedef boost::shared_ptr< ::tos_msgs::YardCraneStatus > YardCraneStatusPtr;
typedef boost::shared_ptr< ::tos_msgs::YardCraneStatus const> YardCraneStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tos_msgs::YardCraneStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tos_msgs::YardCraneStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tos_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'tos_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/src/app/msgs/tos_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tos_msgs::YardCraneStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tos_msgs::YardCraneStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tos_msgs::YardCraneStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tos_msgs::YardCraneStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tos_msgs::YardCraneStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tos_msgs::YardCraneStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tos_msgs::YardCraneStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6bc9a1eb677c70a420a1ae553255debf";
  }

  static const char* value(const ::tos_msgs::YardCraneStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6bc9a1eb677c70a4ULL;
  static const uint64_t static_value2 = 0x20a1ae553255debfULL;
};

template<class ContainerAllocator>
struct DataType< ::tos_msgs::YardCraneStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tos_msgs/YardCraneStatus";
  }

  static const char* value(const ::tos_msgs::YardCraneStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tos_msgs::YardCraneStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
string WorkOrder\n\
int32 CraneNBR\n\
string TruckNBR\n\
string Time\n\
float64 GantryPosition\n\
uint8 GantryMove\n\
float64 TrolleyPosition\n\
float64 HositPosition\n\
uint8 SpreadLock\n\
float64 SpreadLoad\n\
int32 SpreadWorkType\n\
uint8 VasStatus\n\
uint8 TruckLoad\n\
uint8 TruckInPosition\n\
uint8 SpreadOnChassis\n\
uint8 TruckLeave\n\
int32 Distance\n\
\n\
int32 send_packet_id\n\
\n\
\n\
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
";
  }

  static const char* value(const ::tos_msgs::YardCraneStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tos_msgs::YardCraneStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.WorkOrder);
      stream.next(m.CraneNBR);
      stream.next(m.TruckNBR);
      stream.next(m.Time);
      stream.next(m.GantryPosition);
      stream.next(m.GantryMove);
      stream.next(m.TrolleyPosition);
      stream.next(m.HositPosition);
      stream.next(m.SpreadLock);
      stream.next(m.SpreadLoad);
      stream.next(m.SpreadWorkType);
      stream.next(m.VasStatus);
      stream.next(m.TruckLoad);
      stream.next(m.TruckInPosition);
      stream.next(m.SpreadOnChassis);
      stream.next(m.TruckLeave);
      stream.next(m.Distance);
      stream.next(m.send_packet_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct YardCraneStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tos_msgs::YardCraneStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tos_msgs::YardCraneStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "WorkOrder: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.WorkOrder);
    s << indent << "CraneNBR: ";
    Printer<int32_t>::stream(s, indent + "  ", v.CraneNBR);
    s << indent << "TruckNBR: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.TruckNBR);
    s << indent << "Time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Time);
    s << indent << "GantryPosition: ";
    Printer<double>::stream(s, indent + "  ", v.GantryPosition);
    s << indent << "GantryMove: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.GantryMove);
    s << indent << "TrolleyPosition: ";
    Printer<double>::stream(s, indent + "  ", v.TrolleyPosition);
    s << indent << "HositPosition: ";
    Printer<double>::stream(s, indent + "  ", v.HositPosition);
    s << indent << "SpreadLock: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SpreadLock);
    s << indent << "SpreadLoad: ";
    Printer<double>::stream(s, indent + "  ", v.SpreadLoad);
    s << indent << "SpreadWorkType: ";
    Printer<int32_t>::stream(s, indent + "  ", v.SpreadWorkType);
    s << indent << "VasStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.VasStatus);
    s << indent << "TruckLoad: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.TruckLoad);
    s << indent << "TruckInPosition: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.TruckInPosition);
    s << indent << "SpreadOnChassis: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SpreadOnChassis);
    s << indent << "TruckLeave: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.TruckLeave);
    s << indent << "Distance: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Distance);
    s << indent << "send_packet_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.send_packet_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TOS_MSGS_MESSAGE_YARDCRANESTATUS_H
