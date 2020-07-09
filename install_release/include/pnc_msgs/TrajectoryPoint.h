// Generated by gencpp from file pnc_msgs/TrajectoryPoint.msg
// DO NOT EDIT!


#ifndef PNC_MSGS_MESSAGE_TRAJECTORYPOINT_H
#define PNC_MSGS_MESSAGE_TRAJECTORYPOINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <pnc_msgs/PathPoint.h>

namespace pnc_msgs
{
template <class ContainerAllocator>
struct TrajectoryPoint_
{
  typedef TrajectoryPoint_<ContainerAllocator> Type;

  TrajectoryPoint_()
    : path_point()
    , v(0.0)
    , a(0.0)
    , relative_time(0.0)  {
    }
  TrajectoryPoint_(const ContainerAllocator& _alloc)
    : path_point(_alloc)
    , v(0.0)
    , a(0.0)
    , relative_time(0.0)  {
  (void)_alloc;
    }



   typedef  ::pnc_msgs::PathPoint_<ContainerAllocator>  _path_point_type;
  _path_point_type path_point;

   typedef double _v_type;
  _v_type v;

   typedef double _a_type;
  _a_type a;

   typedef double _relative_time_type;
  _relative_time_type relative_time;





  typedef boost::shared_ptr< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> const> ConstPtr;

}; // struct TrajectoryPoint_

typedef ::pnc_msgs::TrajectoryPoint_<std::allocator<void> > TrajectoryPoint;

typedef boost::shared_ptr< ::pnc_msgs::TrajectoryPoint > TrajectoryPointPtr;
typedef boost::shared_ptr< ::pnc_msgs::TrajectoryPoint const> TrajectoryPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pnc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'pncc_msgs': ['/home/xjm/catkin_ws/src/interfaces/ros/pncc/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'pnc_msgs': ['/home/xjm/catkin_ws/src/messages/ros/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a43a3290619888e9cb73555dd15375b";
  }

  static const char* value(const ::pnc_msgs::TrajectoryPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a43a3290619888eULL;
  static const uint64_t static_value2 = 0x9cb73555dd15375bULL;
};

template<class ContainerAllocator>
struct DataType< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pnc_msgs/TrajectoryPoint";
  }

  static const char* value(const ::pnc_msgs::TrajectoryPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# path data\n\
PathPoint path_point\n\
\n\
# linear velocity in [m/s]\n\
float64 v\n\
# linear acceleration in [m/s^2]\n\
float64 a\n\
# relative time from beginning of the trajectory in [s]\n\
float64 relative_time\n\
================================================================================\n\
MSG: pnc_msgs/PathPoint\n\
# coordinates in [m]\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
# accumulated distance from beginning of the path in [m]\n\
float64 s\n\
\n\
# direction on the x-y plane in [0 ~ 2π]\n\
float64 theta\n\
\n\
# curvature on the x-y planning\n\
float64 kappa\n\
\n\
# derivative of kappa w.r.t s.\n\
float64 dkappa\n\
\n\
# derivative of derivative of kappa w.r.t s.\n\
float64 ddkappa\n\
";
  }

  static const char* value(const ::pnc_msgs::TrajectoryPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path_point);
      stream.next(m.v);
      stream.next(m.a);
      stream.next(m.relative_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrajectoryPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pnc_msgs::TrajectoryPoint_<ContainerAllocator>& v)
  {
    s << indent << "path_point: ";
    s << std::endl;
    Printer< ::pnc_msgs::PathPoint_<ContainerAllocator> >::stream(s, indent + "  ", v.path_point);
    s << indent << "v: ";
    Printer<double>::stream(s, indent + "  ", v.v);
    s << indent << "a: ";
    Printer<double>::stream(s, indent + "  ", v.a);
    s << indent << "relative_time: ";
    Printer<double>::stream(s, indent + "  ", v.relative_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PNC_MSGS_MESSAGE_TRAJECTORYPOINT_H
