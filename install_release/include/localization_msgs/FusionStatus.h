// Generated by gencpp from file localization_msgs/FusionStatus.msg
// DO NOT EDIT!


#ifndef LOCALIZATION_MSGS_MESSAGE_FUSIONSTATUS_H
#define LOCALIZATION_MSGS_MESSAGE_FUSIONSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace localization_msgs
{
template <class ContainerAllocator>
struct FusionStatus_
{
  typedef FusionStatus_<ContainerAllocator> Type;

  FusionStatus_()
    : header()
    , status(0)  {
    }
  FusionStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , status(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::localization_msgs::FusionStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::localization_msgs::FusionStatus_<ContainerAllocator> const> ConstPtr;

}; // struct FusionStatus_

typedef ::localization_msgs::FusionStatus_<std::allocator<void> > FusionStatus;

typedef boost::shared_ptr< ::localization_msgs::FusionStatus > FusionStatusPtr;
typedef boost::shared_ptr< ::localization_msgs::FusionStatus const> FusionStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::localization_msgs::FusionStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::localization_msgs::FusionStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace localization_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'localization_msgs': ['/home/xjm/catkin_ws/src/interfaces/ros/localization/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::localization_msgs::FusionStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::localization_msgs::FusionStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::localization_msgs::FusionStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::localization_msgs::FusionStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::localization_msgs::FusionStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::localization_msgs::FusionStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::localization_msgs::FusionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ba980b25d9f16ce730407be078c41a8d";
  }

  static const char* value(const ::localization_msgs::FusionStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xba980b25d9f16ce7ULL;
  static const uint64_t static_value2 = 0x30407be078c41a8dULL;
};

template<class ContainerAllocator>
struct DataType< ::localization_msgs::FusionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "localization_msgs/FusionStatus";
  }

  static const char* value(const ::localization_msgs::FusionStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::localization_msgs::FusionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
uint8 status\n\
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

  static const char* value(const ::localization_msgs::FusionStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::localization_msgs::FusionStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FusionStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::localization_msgs::FusionStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::localization_msgs::FusionStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LOCALIZATION_MSGS_MESSAGE_FUSIONSTATUS_H