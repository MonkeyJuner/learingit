// Generated by gencpp from file ads_msgs/ADSCmdSetSpeedLmt.msg
// DO NOT EDIT!


#ifndef ADS_MSGS_MESSAGE_ADSCMDSETSPEEDLMT_H
#define ADS_MSGS_MESSAGE_ADSCMDSETSPEEDLMT_H


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
struct ADSCmdSetSpeedLmt_
{
  typedef ADSCmdSetSpeedLmt_<ContainerAllocator> Type;

  ADSCmdSetSpeedLmt_()
    : header()
    , id(0)
    , upper_velocity_km_h(0.0)
    , upper_velocity_m_s(0.0)  {
    }
  ADSCmdSetSpeedLmt_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(0)
    , upper_velocity_km_h(0.0)
    , upper_velocity_m_s(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _id_type;
  _id_type id;

   typedef double _upper_velocity_km_h_type;
  _upper_velocity_km_h_type upper_velocity_km_h;

   typedef double _upper_velocity_m_s_type;
  _upper_velocity_m_s_type upper_velocity_m_s;





  typedef boost::shared_ptr< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> const> ConstPtr;

}; // struct ADSCmdSetSpeedLmt_

typedef ::ads_msgs::ADSCmdSetSpeedLmt_<std::allocator<void> > ADSCmdSetSpeedLmt;

typedef boost::shared_ptr< ::ads_msgs::ADSCmdSetSpeedLmt > ADSCmdSetSpeedLmtPtr;
typedef boost::shared_ptr< ::ads_msgs::ADSCmdSetSpeedLmt const> ADSCmdSetSpeedLmtConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "81b7ed48bbe46c268791addb9f4a6381";
  }

  static const char* value(const ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x81b7ed48bbe46c26ULL;
  static const uint64_t static_value2 = 0x8791addb9f4a6381ULL;
};

template<class ContainerAllocator>
struct DataType< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ads_msgs/ADSCmdSetSpeedLmt";
  }

  static const char* value(const ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
uint32 id\n\
\n\
float64 upper_velocity_km_h\n\
\n\
float64 upper_velocity_m_s\n\
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

  static const char* value(const ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.upper_velocity_km_h);
      stream.next(m.upper_velocity_m_s);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ADSCmdSetSpeedLmt_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ads_msgs::ADSCmdSetSpeedLmt_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "upper_velocity_km_h: ";
    Printer<double>::stream(s, indent + "  ", v.upper_velocity_km_h);
    s << indent << "upper_velocity_m_s: ";
    Printer<double>::stream(s, indent + "  ", v.upper_velocity_m_s);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ADS_MSGS_MESSAGE_ADSCMDSETSPEEDLMT_H
