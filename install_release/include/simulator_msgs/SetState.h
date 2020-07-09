// Generated by gencpp from file simulator_msgs/SetState.msg
// DO NOT EDIT!


#ifndef SIMULATOR_MSGS_MESSAGE_SETSTATE_H
#define SIMULATOR_MSGS_MESSAGE_SETSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace simulator_msgs
{
template <class ContainerAllocator>
struct SetState_
{
  typedef SetState_<ContainerAllocator> Type;

  SetState_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , heading_ang(0.0)
    , speed(0.0)  {
    }
  SetState_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , heading_ang(0.0)
    , speed(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _heading_ang_type;
  _heading_ang_type heading_ang;

   typedef double _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::simulator_msgs::SetState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulator_msgs::SetState_<ContainerAllocator> const> ConstPtr;

}; // struct SetState_

typedef ::simulator_msgs::SetState_<std::allocator<void> > SetState;

typedef boost::shared_ptr< ::simulator_msgs::SetState > SetStatePtr;
typedef boost::shared_ptr< ::simulator_msgs::SetState const> SetStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulator_msgs::SetState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulator_msgs::SetState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simulator_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'simulator_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/src/interfaces/ads_internal/ros/simulator_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simulator_msgs::SetState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulator_msgs::SetState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulator_msgs::SetState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulator_msgs::SetState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator_msgs::SetState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator_msgs::SetState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulator_msgs::SetState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b8669ff7baac98ebc208508bbb34b11b";
  }

  static const char* value(const ::simulator_msgs::SetState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb8669ff7baac98ebULL;
  static const uint64_t static_value2 = 0xc208508bbb34b11bULL;
};

template<class ContainerAllocator>
struct DataType< ::simulator_msgs::SetState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulator_msgs/SetState";
  }

  static const char* value(const ::simulator_msgs::SetState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulator_msgs::SetState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x             # m\n\
float64 y             # m\n\
float64 z             # m\n\
float64 heading_ang   # rad\n\
float64 speed         # m/s\n\
";
  }

  static const char* value(const ::simulator_msgs::SetState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulator_msgs::SetState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.heading_ang);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulator_msgs::SetState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulator_msgs::SetState_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "heading_ang: ";
    Printer<double>::stream(s, indent + "  ", v.heading_ang);
    s << indent << "speed: ";
    Printer<double>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATOR_MSGS_MESSAGE_SETSTATE_H
