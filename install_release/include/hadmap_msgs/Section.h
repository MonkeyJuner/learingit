// Generated by gencpp from file hadmap_msgs/Section.msg
// DO NOT EDIT!


#ifndef HADMAP_MSGS_MESSAGE_SECTION_H
#define HADMAP_MSGS_MESSAGE_SECTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <hadmap_msgs/Lane.h>

namespace hadmap_msgs
{
template <class ContainerAllocator>
struct Section_
{
  typedef Section_<ContainerAllocator> Type;

  Section_()
    : id(0)
    , lanes()
    , predecessors()
    , successors()
    , type(0)
    , stop_distances()  {
    }
  Section_(const ContainerAllocator& _alloc)
    : id(0)
    , lanes(_alloc)
    , predecessors(_alloc)
    , successors(_alloc)
    , type(0)
    , stop_distances(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef std::vector< ::hadmap_msgs::Lane_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::hadmap_msgs::Lane_<ContainerAllocator> >::other >  _lanes_type;
  _lanes_type lanes;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _predecessors_type;
  _predecessors_type predecessors;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _successors_type;
  _successors_type successors;

   typedef uint8_t _type_type;
  _type_type type;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _stop_distances_type;
  _stop_distances_type stop_distances;



  enum {
    TYPE_NORMAL = 0u,
    TYPE_CROSS_BEFORE = 1u,
    TYPE_CROSS_AFTER = 2u,
    TYPE_CROSS_BEFORE_AND_AFTER = 3u,
  };


  typedef boost::shared_ptr< ::hadmap_msgs::Section_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hadmap_msgs::Section_<ContainerAllocator> const> ConstPtr;

}; // struct Section_

typedef ::hadmap_msgs::Section_<std::allocator<void> > Section;

typedef boost::shared_ptr< ::hadmap_msgs::Section > SectionPtr;
typedef boost::shared_ptr< ::hadmap_msgs::Section const> SectionConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hadmap_msgs::Section_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hadmap_msgs::Section_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hadmap_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'hadmap_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/src/interfaces/ads_internal/ros/map/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hadmap_msgs::Section_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hadmap_msgs::Section_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hadmap_msgs::Section_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hadmap_msgs::Section_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hadmap_msgs::Section_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hadmap_msgs::Section_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hadmap_msgs::Section_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9c159119e0202171ae854a4c79c42cd7";
  }

  static const char* value(const ::hadmap_msgs::Section_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9c159119e0202171ULL;
  static const uint64_t static_value2 = 0xae854a4c79c42cd7ULL;
};

template<class ContainerAllocator>
struct DataType< ::hadmap_msgs::Section_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hadmap_msgs/Section";
  }

  static const char* value(const ::hadmap_msgs::Section_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hadmap_msgs::Section_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 TYPE_NORMAL = 0\n\
uint8 TYPE_CROSS_BEFORE = 1\n\
uint8 TYPE_CROSS_AFTER = 2\n\
uint8 TYPE_CROSS_BEFORE_AND_AFTER = 3\n\
\n\
int32 id\n\
Lane[] lanes\n\
int32[] predecessors\n\
int32[] successors\n\
uint8 type # \n\
\n\
float64[] stop_distances\n\
\n\
================================================================================\n\
MSG: hadmap_msgs/Lane\n\
int32 id\n\
\n\
Point pt_start\n\
Point pt_end\n\
\n\
int32[] predecessors\n\
int32[] successors\n\
\n\
Point[] pts_center\n\
Point[] pts_left\n\
Point[] pts_right\n\
\n\
float64[] len_integral\n\
\n\
float64 speed_limit\n\
\n\
## not used\n\
uint8 line_left_type\n\
uint8 line_right_type\n\
\n\
## dynamic\n\
int32 resign_id\n\
float32 residual_len\n\
\n\
================================================================================\n\
MSG: hadmap_msgs/Point\n\
int32 id\n\
\n\
geometry_msgs/Point point\n\
\n\
## not used\n\
\n\
float32 heading\n\
float64 delta_s\n\
uint8 property\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::hadmap_msgs::Section_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hadmap_msgs::Section_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.lanes);
      stream.next(m.predecessors);
      stream.next(m.successors);
      stream.next(m.type);
      stream.next(m.stop_distances);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Section_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hadmap_msgs::Section_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hadmap_msgs::Section_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "lanes[]" << std::endl;
    for (size_t i = 0; i < v.lanes.size(); ++i)
    {
      s << indent << "  lanes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::hadmap_msgs::Lane_<ContainerAllocator> >::stream(s, indent + "    ", v.lanes[i]);
    }
    s << indent << "predecessors[]" << std::endl;
    for (size_t i = 0; i < v.predecessors.size(); ++i)
    {
      s << indent << "  predecessors[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.predecessors[i]);
    }
    s << indent << "successors[]" << std::endl;
    for (size_t i = 0; i < v.successors.size(); ++i)
    {
      s << indent << "  successors[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.successors[i]);
    }
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
    s << indent << "stop_distances[]" << std::endl;
    for (size_t i = 0; i < v.stop_distances.size(); ++i)
    {
      s << indent << "  stop_distances[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.stop_distances[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HADMAP_MSGS_MESSAGE_SECTION_H
