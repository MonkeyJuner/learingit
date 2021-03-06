// Generated by gencpp from file ads_msgs/ADSCmdSwitchLeft.msg
// DO NOT EDIT!


#ifndef ADS_MSGS_MESSAGE_ADSCMDSWITCHLEFT_H
#define ADS_MSGS_MESSAGE_ADSCMDSWITCHLEFT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace ads_msgs
{
template <class ContainerAllocator>
struct ADSCmdSwitchLeft_
{
  typedef ADSCmdSwitchLeft_<ContainerAllocator> Type;

  ADSCmdSwitchLeft_()
    : header()
    , id(0)  {
    }
  ADSCmdSwitchLeft_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _id_type;
  _id_type id;





  typedef boost::shared_ptr< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> const> ConstPtr;

}; // struct ADSCmdSwitchLeft_

typedef ::ads_msgs::ADSCmdSwitchLeft_<std::allocator<void> > ADSCmdSwitchLeft;

typedef boost::shared_ptr< ::ads_msgs::ADSCmdSwitchLeft > ADSCmdSwitchLeftPtr;
typedef boost::shared_ptr< ::ads_msgs::ADSCmdSwitchLeft const> ADSCmdSwitchLeftConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> >
{
  static const char* value()
  {
    return "057dd8251e7cb69192b3590359a014ce";
  }

  static const char* value(const ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x057dd8251e7cb691ULL;
  static const uint64_t static_value2 = 0x92b3590359a014ceULL;
};

template<class ContainerAllocator>
struct DataType< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ads_msgs/ADSCmdSwitchLeft";
  }

  static const char* value(const ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
uint32 id\n\
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

  static const char* value(const ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ADSCmdSwitchLeft_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ads_msgs::ADSCmdSwitchLeft_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ADS_MSGS_MESSAGE_ADSCMDSWITCHLEFT_H
