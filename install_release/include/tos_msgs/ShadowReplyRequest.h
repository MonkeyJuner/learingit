// Generated by gencpp from file tos_msgs/ShadowReplyRequest.msg
// DO NOT EDIT!


#ifndef TOS_MSGS_MESSAGE_SHADOWREPLYREQUEST_H
#define TOS_MSGS_MESSAGE_SHADOWREPLYREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <tos_msgs/TruckCommand.h>

namespace tos_msgs
{
template <class ContainerAllocator>
struct ShadowReplyRequest_
{
  typedef ShadowReplyRequest_<ContainerAllocator> Type;

  ShadowReplyRequest_()
    : truck_command()  {
    }
  ShadowReplyRequest_(const ContainerAllocator& _alloc)
    : truck_command(_alloc)  {
  (void)_alloc;
    }



   typedef  ::tos_msgs::TruckCommand_<ContainerAllocator>  _truck_command_type;
  _truck_command_type truck_command;





  typedef boost::shared_ptr< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ShadowReplyRequest_

typedef ::tos_msgs::ShadowReplyRequest_<std::allocator<void> > ShadowReplyRequest;

typedef boost::shared_ptr< ::tos_msgs::ShadowReplyRequest > ShadowReplyRequestPtr;
typedef boost::shared_ptr< ::tos_msgs::ShadowReplyRequest const> ShadowReplyRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tos_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'tos_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/src/app/msgs/tos_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9cfb82ffa884aebdfaca26ce4b3f7816";
  }

  static const char* value(const ::tos_msgs::ShadowReplyRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9cfb82ffa884aebdULL;
  static const uint64_t static_value2 = 0xfaca26ce4b3f7816ULL;
};

template<class ContainerAllocator>
struct DataType< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tos_msgs/ShadowReplyRequest";
  }

  static const char* value(const ::tos_msgs::ShadowReplyRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "TruckCommand truck_command\n\
\n\
\n\
================================================================================\n\
MSG: tos_msgs/TruckCommand\n\
# confirm type\n\
uint8 CONFIRM         = 1\n\
uint8 REFRESH         = 2\n\
\n\
Header header\n\
\n\
# task id\n\
uint32 task_id\n\
\n\
uint8 confirm_type\n\
\n\
\n\
# for test\n\
string cheid\n\
int32 send_packet_id\n\
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

  static const char* value(const ::tos_msgs::ShadowReplyRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.truck_command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ShadowReplyRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tos_msgs::ShadowReplyRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tos_msgs::ShadowReplyRequest_<ContainerAllocator>& v)
  {
    s << indent << "truck_command: ";
    s << std::endl;
    Printer< ::tos_msgs::TruckCommand_<ContainerAllocator> >::stream(s, indent + "  ", v.truck_command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TOS_MSGS_MESSAGE_SHADOWREPLYREQUEST_H
