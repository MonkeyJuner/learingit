// Generated by gencpp from file camera_control_msgs/SetGammaResponse.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_SETGAMMARESPONSE_H
#define CAMERA_CONTROL_MSGS_MESSAGE_SETGAMMARESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace camera_control_msgs
{
template <class ContainerAllocator>
struct SetGammaResponse_
{
  typedef SetGammaResponse_<ContainerAllocator> Type;

  SetGammaResponse_()
    : reached_gamma(0.0)
    , success(false)  {
    }
  SetGammaResponse_(const ContainerAllocator& _alloc)
    : reached_gamma(0.0)
    , success(false)  {
  (void)_alloc;
    }



   typedef float _reached_gamma_type;
  _reached_gamma_type reached_gamma;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetGammaResponse_

typedef ::camera_control_msgs::SetGammaResponse_<std::allocator<void> > SetGammaResponse;

typedef boost::shared_ptr< ::camera_control_msgs::SetGammaResponse > SetGammaResponsePtr;
typedef boost::shared_ptr< ::camera_control_msgs::SetGammaResponse const> SetGammaResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace camera_control_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'camera_control_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/devel/.private/camera_control_msgs/share/camera_control_msgs/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f5a47cc339c639a71a650af05aed3b9";
  }

  static const char* value(const ::camera_control_msgs::SetGammaResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f5a47cc339c639aULL;
  static const uint64_t static_value2 = 0x71a650af05aed3b9ULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_control_msgs/SetGammaResponse";
  }

  static const char* value(const ::camera_control_msgs::SetGammaResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
float32 reached_gamma\n\
bool success\n\
\n\
\n\
";
  }

  static const char* value(const ::camera_control_msgs::SetGammaResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.reached_gamma);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetGammaResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_control_msgs::SetGammaResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_control_msgs::SetGammaResponse_<ContainerAllocator>& v)
  {
    s << indent << "reached_gamma: ";
    Printer<float>::stream(s, indent + "  ", v.reached_gamma);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_SETGAMMARESPONSE_H
