// Generated by gencpp from file hadmap_msgs/MapSection.msg
// DO NOT EDIT!


#ifndef HADMAP_MSGS_MESSAGE_MAPSECTION_H
#define HADMAP_MSGS_MESSAGE_MAPSECTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <hadmap_msgs/MapReferLine.h>
#include <hadmap_msgs/MapPolyCoeff.h>
#include <hadmap_msgs/MapLane.h>

namespace hadmap_msgs
{
template <class ContainerAllocator>
struct MapSection_
{
  typedef MapSection_<ContainerAllocator> Type;

  MapSection_()
    : header()
    , id(0)
    , s(0.0)
    , refer_line()
    , z_coeffs()
    , lanes()  {
    }
  MapSection_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(0)
    , s(0.0)
    , refer_line(_alloc)
    , z_coeffs(_alloc)
    , lanes(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _id_type;
  _id_type id;

   typedef double _s_type;
  _s_type s;

   typedef  ::hadmap_msgs::MapReferLine_<ContainerAllocator>  _refer_line_type;
  _refer_line_type refer_line;

   typedef std::vector< ::hadmap_msgs::MapPolyCoeff_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::hadmap_msgs::MapPolyCoeff_<ContainerAllocator> >::other >  _z_coeffs_type;
  _z_coeffs_type z_coeffs;

   typedef std::vector< ::hadmap_msgs::MapLane_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::hadmap_msgs::MapLane_<ContainerAllocator> >::other >  _lanes_type;
  _lanes_type lanes;





  typedef boost::shared_ptr< ::hadmap_msgs::MapSection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hadmap_msgs::MapSection_<ContainerAllocator> const> ConstPtr;

}; // struct MapSection_

typedef ::hadmap_msgs::MapSection_<std::allocator<void> > MapSection;

typedef boost::shared_ptr< ::hadmap_msgs::MapSection > MapSectionPtr;
typedef boost::shared_ptr< ::hadmap_msgs::MapSection const> MapSectionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hadmap_msgs::MapSection_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hadmap_msgs::MapSection_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hadmap_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'hadmap_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/src/interfaces/ads_internal/ros/map/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hadmap_msgs::MapSection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hadmap_msgs::MapSection_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hadmap_msgs::MapSection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hadmap_msgs::MapSection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hadmap_msgs::MapSection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hadmap_msgs::MapSection_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hadmap_msgs::MapSection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c157895ff86d00b131821caeb238419d";
  }

  static const char* value(const ::hadmap_msgs::MapSection_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc157895ff86d00b1ULL;
  static const uint64_t static_value2 = 0x31821caeb238419dULL;
};

template<class ContainerAllocator>
struct DataType< ::hadmap_msgs::MapSection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hadmap_msgs/MapSection";
  }

  static const char* value(const ::hadmap_msgs::MapSection_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hadmap_msgs::MapSection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
uint32 id\n\
float64 s\n\
\n\
MapReferLine refer_line\n\
MapPolyCoeff[] z_coeffs\n\
MapLane[] lanes\n\
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
\n\
================================================================================\n\
MSG: hadmap_msgs/MapReferLine\n\
\n\
geometry_msgs/Point start_point\n\
float64 heading\n\
float64 length\n\
MapSplineCoeff spline_coeff\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: hadmap_msgs/MapSplineCoeff\n\
float64 start_offset\n\
uint8 degree\n\
uint8 dimension\n\
float64 scale\n\
float64[] spline_knots\n\
geometry_msgs/Point[] spline_points\n\
\n\
================================================================================\n\
MSG: hadmap_msgs/MapPolyCoeff\n\
float64 offset\n\
float64[] poly_parameters\n\
\n\
================================================================================\n\
MSG: hadmap_msgs/MapLane\n\
uint8 lane_type\n\
\n\
MapPolyCoeff[] poly_coeffs\n\
\n\
int16 predecessor\n\
int16 successor\n\
\n\
float32 lane_residual_len\n\
float32 speed_limit\n\
";
  }

  static const char* value(const ::hadmap_msgs::MapSection_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hadmap_msgs::MapSection_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.s);
      stream.next(m.refer_line);
      stream.next(m.z_coeffs);
      stream.next(m.lanes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MapSection_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hadmap_msgs::MapSection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hadmap_msgs::MapSection_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "s: ";
    Printer<double>::stream(s, indent + "  ", v.s);
    s << indent << "refer_line: ";
    s << std::endl;
    Printer< ::hadmap_msgs::MapReferLine_<ContainerAllocator> >::stream(s, indent + "  ", v.refer_line);
    s << indent << "z_coeffs[]" << std::endl;
    for (size_t i = 0; i < v.z_coeffs.size(); ++i)
    {
      s << indent << "  z_coeffs[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::hadmap_msgs::MapPolyCoeff_<ContainerAllocator> >::stream(s, indent + "    ", v.z_coeffs[i]);
    }
    s << indent << "lanes[]" << std::endl;
    for (size_t i = 0; i < v.lanes.size(); ++i)
    {
      s << indent << "  lanes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::hadmap_msgs::MapLane_<ContainerAllocator> >::stream(s, indent + "    ", v.lanes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HADMAP_MSGS_MESSAGE_MAPSECTION_H
