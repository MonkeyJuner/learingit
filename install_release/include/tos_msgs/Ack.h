// Generated by gencpp from file tos_msgs/Ack.msg
// DO NOT EDIT!


#ifndef TOS_MSGS_MESSAGE_ACK_H
#define TOS_MSGS_MESSAGE_ACK_H


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
struct Ack_
{
  typedef Ack_<ContainerAllocator> Type;

  Ack_()
    : header()
    , chid()
    , recv_packet_id(0)  {
    }
  Ack_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , chid(_alloc)
    , recv_packet_id(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _chid_type;
  _chid_type chid;

   typedef int32_t _recv_packet_id_type;
  _recv_packet_id_type recv_packet_id;





  typedef boost::shared_ptr< ::tos_msgs::Ack_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tos_msgs::Ack_<ContainerAllocator> const> ConstPtr;

}; // struct Ack_

typedef ::tos_msgs::Ack_<std::allocator<void> > Ack;

typedef boost::shared_ptr< ::tos_msgs::Ack > AckPtr;
typedef boost::shared_ptr< ::tos_msgs::Ack const> AckConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tos_msgs::Ack_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tos_msgs::Ack_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tos_msgs::Ack_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tos_msgs::Ack_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tos_msgs::Ack_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tos_msgs::Ack_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tos_msgs::Ack_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tos_msgs::Ack_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tos_msgs::Ack_<ContainerAllocator> >
{
  static const char* value()
  {
    return "13cde61edac7c6d8fd963194a4397a3e";
  }

  static const char* value(const ::tos_msgs::Ack_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x13cde61edac7c6d8ULL;
  static const uint64_t static_value2 = 0xfd963194a4397a3eULL;
};

template<class ContainerAllocator>
struct DataType< ::tos_msgs::Ack_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tos_msgs/Ack";
  }

  static const char* value(const ::tos_msgs::Ack_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tos_msgs::Ack_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
string chid\n\
int32 recv_packet_id\n\
\n\
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

  static const char* value(const ::tos_msgs::Ack_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tos_msgs::Ack_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.chid);
      stream.next(m.recv_packet_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Ack_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tos_msgs::Ack_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tos_msgs::Ack_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "chid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.chid);
    s << indent << "recv_packet_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.recv_packet_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TOS_MSGS_MESSAGE_ACK_H
