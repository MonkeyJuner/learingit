// Generated by gencpp from file pnc_msgs/Trajectory.msg
// DO NOT EDIT!


#ifndef PNC_MSGS_MESSAGE_TRAJECTORY_H
#define PNC_MSGS_MESSAGE_TRAJECTORY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <pnc_msgs/TrajectoryPoint.h>

namespace pnc_msgs
{
template <class ContainerAllocator>
struct Trajectory_
{
  typedef Trajectory_<ContainerAllocator> Type;

  Trajectory_()
    : total_traj_length(0.0)
    , total_traj_time(0.0)
    , trajectory_pts()  {
    }
  Trajectory_(const ContainerAllocator& _alloc)
    : total_traj_length(0.0)
    , total_traj_time(0.0)
    , trajectory_pts(_alloc)  {
  (void)_alloc;
    }



   typedef double _total_traj_length_type;
  _total_traj_length_type total_traj_length;

   typedef double _total_traj_time_type;
  _total_traj_time_type total_traj_time;

   typedef std::vector< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> >::other >  _trajectory_pts_type;
  _trajectory_pts_type trajectory_pts;





  typedef boost::shared_ptr< ::pnc_msgs::Trajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pnc_msgs::Trajectory_<ContainerAllocator> const> ConstPtr;

}; // struct Trajectory_

typedef ::pnc_msgs::Trajectory_<std::allocator<void> > Trajectory;

typedef boost::shared_ptr< ::pnc_msgs::Trajectory > TrajectoryPtr;
typedef boost::shared_ptr< ::pnc_msgs::Trajectory const> TrajectoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pnc_msgs::Trajectory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pnc_msgs::Trajectory_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pnc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'pncc_msgs': ['/home/xjm/catkin_ws/src/interfaces/ros/pncc/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'pnc_msgs': ['/home/xjm/catkin_ws/src/messages/ros/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pnc_msgs::Trajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pnc_msgs::Trajectory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pnc_msgs::Trajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pnc_msgs::Trajectory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pnc_msgs::Trajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pnc_msgs::Trajectory_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pnc_msgs::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a1572326f09d8f47407c20282d7259e3";
  }

  static const char* value(const ::pnc_msgs::Trajectory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa1572326f09d8f47ULL;
  static const uint64_t static_value2 = 0x407c20282d7259e3ULL;
};

template<class ContainerAllocator>
struct DataType< ::pnc_msgs::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pnc_msgs/Trajectory";
  }

  static const char* value(const ::pnc_msgs::Trajectory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pnc_msgs::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# total traj length in [m]\n\
float64 total_traj_length\n\
\n\
# total traj time in [s]\n\
float64 total_traj_time\n\
\n\
pnc_msgs/TrajectoryPoint[] trajectory_pts\n\
================================================================================\n\
MSG: pnc_msgs/TrajectoryPoint\n\
# path data\n\
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

  static const char* value(const ::pnc_msgs::Trajectory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pnc_msgs::Trajectory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.total_traj_length);
      stream.next(m.total_traj_time);
      stream.next(m.trajectory_pts);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Trajectory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pnc_msgs::Trajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pnc_msgs::Trajectory_<ContainerAllocator>& v)
  {
    s << indent << "total_traj_length: ";
    Printer<double>::stream(s, indent + "  ", v.total_traj_length);
    s << indent << "total_traj_time: ";
    Printer<double>::stream(s, indent + "  ", v.total_traj_time);
    s << indent << "trajectory_pts[]" << std::endl;
    for (size_t i = 0; i < v.trajectory_pts.size(); ++i)
    {
      s << indent << "  trajectory_pts[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::pnc_msgs::TrajectoryPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.trajectory_pts[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PNC_MSGS_MESSAGE_TRAJECTORY_H
