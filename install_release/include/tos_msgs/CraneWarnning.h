// Generated by gencpp from file tos_msgs/CraneWarnning.msg
// DO NOT EDIT!


#ifndef TOS_MSGS_MESSAGE_CRANEWARNNING_H
#define TOS_MSGS_MESSAGE_CRANEWARNNING_H


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
struct CraneWarnning_
{
  typedef CraneWarnning_<ContainerAllocator> Type;

  CraneWarnning_()
    : header()
    , certainty(0.0)
    , distance_vertical(0.0)
    , distance_lateral(0.0)  {
    }
  CraneWarnning_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , certainty(0.0)
    , distance_vertical(0.0)
    , distance_lateral(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _certainty_type;
  _certainty_type certainty;

   typedef double _distance_vertical_type;
  _distance_vertical_type distance_vertical;

   typedef double _distance_lateral_type;
  _distance_lateral_type distance_lateral;





  typedef boost::shared_ptr< ::tos_msgs::CraneWarnning_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tos_msgs::CraneWarnning_<ContainerAllocator> const> ConstPtr;

}; // struct CraneWarnning_

typedef ::tos_msgs::CraneWarnning_<std::allocator<void> > CraneWarnning;

typedef boost::shared_ptr< ::tos_msgs::CraneWarnning > CraneWarnningPtr;
typedef boost::shared_ptr< ::tos_msgs::CraneWarnning const> CraneWarnningConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tos_msgs::CraneWarnning_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tos_msgs::CraneWarnning_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tos_msgs::CraneWarnning_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tos_msgs::CraneWarnning_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tos_msgs::CraneWarnning_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tos_msgs::CraneWarnning_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tos_msgs::CraneWarnning_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tos_msgs::CraneWarnning_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tos_msgs::CraneWarnning_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c24f3c5e54e151e721b842164d45ab26";
  }

  static const char* value(const ::tos_msgs::CraneWarnning_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc24f3c5e54e151e7ULL;
  static const uint64_t static_value2 = 0x21b842164d45ab26ULL;
};

template<class ContainerAllocator>
struct DataType< ::tos_msgs::CraneWarnning_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tos_msgs/CraneWarnning";
  }

  static const char* value(const ::tos_msgs::CraneWarnning_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tos_msgs::CraneWarnning_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
# probability\n\
float64 certainty #0 ~ 100\n\
\n\
#distance\n\
float64 distance_vertical #meter\n\
float64 distance_lateral  #meter\n\
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

  static const char* value(const ::tos_msgs::CraneWarnning_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tos_msgs::CraneWarnning_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.certainty);
      stream.next(m.distance_vertical);
      stream.next(m.distance_lateral);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CraneWarnning_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tos_msgs::CraneWarnning_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tos_msgs::CraneWarnning_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "certainty: ";
    Printer<double>::stream(s, indent + "  ", v.certainty);
    s << indent << "distance_vertical: ";
    Printer<double>::stream(s, indent + "  ", v.distance_vertical);
    s << indent << "distance_lateral: ";
    Printer<double>::stream(s, indent + "  ", v.distance_lateral);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TOS_MSGS_MESSAGE_CRANEWARNNING_H
