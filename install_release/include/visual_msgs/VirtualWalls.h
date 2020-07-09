// Generated by gencpp from file visual_msgs/VirtualWalls.msg
// DO NOT EDIT!


#ifndef VISUAL_MSGS_MESSAGE_VIRTUALWALLS_H
#define VISUAL_MSGS_MESSAGE_VIRTUALWALLS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <visual_msgs/VirtualWall.h>

namespace visual_msgs
{
template <class ContainerAllocator>
struct VirtualWalls_
{
  typedef VirtualWalls_<ContainerAllocator> Type;

  VirtualWalls_()
    : header()
    , walls()  {
    }
  VirtualWalls_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , walls(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::visual_msgs::VirtualWall_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::visual_msgs::VirtualWall_<ContainerAllocator> >::other >  _walls_type;
  _walls_type walls;





  typedef boost::shared_ptr< ::visual_msgs::VirtualWalls_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::visual_msgs::VirtualWalls_<ContainerAllocator> const> ConstPtr;

}; // struct VirtualWalls_

typedef ::visual_msgs::VirtualWalls_<std::allocator<void> > VirtualWalls;

typedef boost::shared_ptr< ::visual_msgs::VirtualWalls > VirtualWallsPtr;
typedef boost::shared_ptr< ::visual_msgs::VirtualWalls const> VirtualWallsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::visual_msgs::VirtualWalls_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::visual_msgs::VirtualWalls_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace visual_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'visual_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/src/interfaces/ads_internal/ros/visual/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::visual_msgs::VirtualWalls_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::visual_msgs::VirtualWalls_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::visual_msgs::VirtualWalls_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::visual_msgs::VirtualWalls_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::visual_msgs::VirtualWalls_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::visual_msgs::VirtualWalls_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::visual_msgs::VirtualWalls_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eeccf1d1abd9782305d24f6691c59a03";
  }

  static const char* value(const ::visual_msgs::VirtualWalls_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeeccf1d1abd97823ULL;
  static const uint64_t static_value2 = 0x05d24f6691c59a03ULL;
};

template<class ContainerAllocator>
struct DataType< ::visual_msgs::VirtualWalls_<ContainerAllocator> >
{
  static const char* value()
  {
    return "visual_msgs/VirtualWalls";
  }

  static const char* value(const ::visual_msgs::VirtualWalls_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::visual_msgs::VirtualWalls_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
visual_msgs/VirtualWall[] walls\n\
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
MSG: visual_msgs/VirtualWall\n\
uint8 UNCLASSIFIED          = 0\n\
uint8 STOP_SIGN_ABSOLUTE    = 1\n\
uint8 STOP_SIGN_RELATIVE    = 2\n\
uint8 OBJECT                = 3\n\
uint8 OBJECT_VIRTUAL        = 4\n\
uint8 OBJECT_CLOSE          = 5\n\
uint8 OGM                   = 6\n\
uint8 HMAP_SPEED_LIMIT      = 7\n\
uint8 CURV_SPEED_LIMIT      = 8\n\
uint8 LONGITUDE_CMD         = 9\n\
\n\
uint8   type\n\
uint32  id\n\
float64 distance\n\
float64 speed\n\
\n\
float64 x           # Optional\n\
float64 y           # Optional\n\
float64 z           # Optional\n\
float64 heading     # Optional\n\
\n\
\n\
";
  }

  static const char* value(const ::visual_msgs::VirtualWalls_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::visual_msgs::VirtualWalls_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.walls);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VirtualWalls_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::visual_msgs::VirtualWalls_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::visual_msgs::VirtualWalls_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "walls[]" << std::endl;
    for (size_t i = 0; i < v.walls.size(); ++i)
    {
      s << indent << "  walls[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::visual_msgs::VirtualWall_<ContainerAllocator> >::stream(s, indent + "    ", v.walls[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISUAL_MSGS_MESSAGE_VIRTUALWALLS_H
