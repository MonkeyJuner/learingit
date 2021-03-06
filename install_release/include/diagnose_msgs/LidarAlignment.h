// Generated by gencpp from file diagnose_msgs/LidarAlignment.msg
// DO NOT EDIT!


#ifndef DIAGNOSE_MSGS_MESSAGE_LIDARALIGNMENT_H
#define DIAGNOSE_MSGS_MESSAGE_LIDARALIGNMENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>

namespace diagnose_msgs
{
template <class ContainerAllocator>
struct LidarAlignment_
{
  typedef LidarAlignment_<ContainerAllocator> Type;

  LidarAlignment_()
    : header()
    , id(0)
    , distance_shift(0.0)
    , distance_vertical(0.0)
    , distance_shift_filtered(0.0)
    , distance_vertical_filtered(0.0)
    , angle(0.0)
    , point()
    , angle_filtered(0.0)  {
    }
  LidarAlignment_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(0)
    , distance_shift(0.0)
    , distance_vertical(0.0)
    , distance_shift_filtered(0.0)
    , distance_vertical_filtered(0.0)
    , angle(0.0)
    , point(_alloc)
    , angle_filtered(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _id_type;
  _id_type id;

   typedef double _distance_shift_type;
  _distance_shift_type distance_shift;

   typedef double _distance_vertical_type;
  _distance_vertical_type distance_vertical;

   typedef double _distance_shift_filtered_type;
  _distance_shift_filtered_type distance_shift_filtered;

   typedef double _distance_vertical_filtered_type;
  _distance_vertical_filtered_type distance_vertical_filtered;

   typedef double _angle_type;
  _angle_type angle;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _point_type;
  _point_type point;

   typedef double _angle_filtered_type;
  _angle_filtered_type angle_filtered;





  typedef boost::shared_ptr< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> const> ConstPtr;

}; // struct LidarAlignment_

typedef ::diagnose_msgs::LidarAlignment_<std::allocator<void> > LidarAlignment;

typedef boost::shared_ptr< ::diagnose_msgs::LidarAlignment > LidarAlignmentPtr;
typedef boost::shared_ptr< ::diagnose_msgs::LidarAlignment const> LidarAlignmentConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::diagnose_msgs::LidarAlignment_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace diagnose_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'diagnose_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/src/interfaces/ads_internal/ros/diagnose_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b83f6001c67821e47ec7547857d8ac4f";
  }

  static const char* value(const ::diagnose_msgs::LidarAlignment_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb83f6001c67821e4ULL;
  static const uint64_t static_value2 = 0x7ec7547857d8ac4fULL;
};

template<class ContainerAllocator>
struct DataType< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> >
{
  static const char* value()
  {
    return "diagnose_msgs/LidarAlignment";
  }

  static const char* value(const ::diagnose_msgs::LidarAlignment_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
int32 id\n\
\n\
float64 distance_shift\n\
float64 distance_vertical\n\
float64 distance_shift_filtered\n\
float64 distance_vertical_filtered\n\
\n\
float64 angle\n\
geometry_msgs/Point point\n\
float64 angle_filtered\n\
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
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::diagnose_msgs::LidarAlignment_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.distance_shift);
      stream.next(m.distance_vertical);
      stream.next(m.distance_shift_filtered);
      stream.next(m.distance_vertical_filtered);
      stream.next(m.angle);
      stream.next(m.point);
      stream.next(m.angle_filtered);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LidarAlignment_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::diagnose_msgs::LidarAlignment_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::diagnose_msgs::LidarAlignment_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "distance_shift: ";
    Printer<double>::stream(s, indent + "  ", v.distance_shift);
    s << indent << "distance_vertical: ";
    Printer<double>::stream(s, indent + "  ", v.distance_vertical);
    s << indent << "distance_shift_filtered: ";
    Printer<double>::stream(s, indent + "  ", v.distance_shift_filtered);
    s << indent << "distance_vertical_filtered: ";
    Printer<double>::stream(s, indent + "  ", v.distance_vertical_filtered);
    s << indent << "angle: ";
    Printer<double>::stream(s, indent + "  ", v.angle);
    s << indent << "point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.point);
    s << indent << "angle_filtered: ";
    Printer<double>::stream(s, indent + "  ", v.angle_filtered);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DIAGNOSE_MSGS_MESSAGE_LIDARALIGNMENT_H
