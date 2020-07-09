// Generated by gencpp from file tos_msgs/TargetInfo.msg
// DO NOT EDIT!


#ifndef TOS_MSGS_MESSAGE_TARGETINFO_H
#define TOS_MSGS_MESSAGE_TARGETINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <tos_msgs/Container.h>

namespace tos_msgs
{
template <class ContainerAllocator>
struct TargetInfo_
{
  typedef TargetInfo_<ContainerAllocator> Type;

  TargetInfo_()
    : target_type(0)
    , section()
    , bay()
    , transfer_zone()
    , gantry_crane_id()
    , lane_id()
    , container()
    , move_stage()
    , ppos()  {
    }
  TargetInfo_(const ContainerAllocator& _alloc)
    : target_type(0)
    , section(_alloc)
    , bay(_alloc)
    , transfer_zone(_alloc)
    , gantry_crane_id(_alloc)
    , lane_id(_alloc)
    , container(_alloc)
    , move_stage(_alloc)
    , ppos(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _target_type_type;
  _target_type_type target_type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _section_type;
  _section_type section;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _bay_type;
  _bay_type bay;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _transfer_zone_type;
  _transfer_zone_type transfer_zone;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _gantry_crane_id_type;
  _gantry_crane_id_type gantry_crane_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _lane_id_type;
  _lane_id_type lane_id;

   typedef  ::tos_msgs::Container_<ContainerAllocator>  _container_type;
  _container_type container;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _move_stage_type;
  _move_stage_type move_stage;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _ppos_type;
  _ppos_type ppos;



  enum {
    NORMAL_YARD_CRANE = 0u,
    AUTOMATIC_YARD_CRANE = 1u,
    GANTRY_CRANE = 2u,
    TRANSFER_ZONE = 3u,
  };


  typedef boost::shared_ptr< ::tos_msgs::TargetInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tos_msgs::TargetInfo_<ContainerAllocator> const> ConstPtr;

}; // struct TargetInfo_

typedef ::tos_msgs::TargetInfo_<std::allocator<void> > TargetInfo;

typedef boost::shared_ptr< ::tos_msgs::TargetInfo > TargetInfoPtr;
typedef boost::shared_ptr< ::tos_msgs::TargetInfo const> TargetInfoConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tos_msgs::TargetInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tos_msgs::TargetInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tos_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'tos_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/src/app/msgs/tos_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tos_msgs::TargetInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tos_msgs::TargetInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tos_msgs::TargetInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tos_msgs::TargetInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tos_msgs::TargetInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tos_msgs::TargetInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tos_msgs::TargetInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "677d252aa7d6e6bd4ba970587d5907b8";
  }

  static const char* value(const ::tos_msgs::TargetInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x677d252aa7d6e6bdULL;
  static const uint64_t static_value2 = 0x4ba970587d5907b8ULL;
};

template<class ContainerAllocator>
struct DataType< ::tos_msgs::TargetInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tos_msgs/TargetInfo";
  }

  static const char* value(const ::tos_msgs::TargetInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tos_msgs::TargetInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# target type\n\
uint8 NORMAL_YARD_CRANE         = 0\n\
uint8 AUTOMATIC_YARD_CRANE      = 1\n\
uint8 GANTRY_CRANE      	= 2\n\
uint8 TRANSFER_ZONE      	= 3\n\
\n\
# target\n\
uint8 target_type\n\
\n\
# target info\n\
string section\n\
string bay\n\
string transfer_zone\n\
\n\
string gantry_crane_id\n\
string lane_id\n\
\n\
# container\n\
Container container\n\
\n\
# move stage\n\
string move_stage\n\
\n\
# for test\n\
string ppos\n\
\n\
================================================================================\n\
MSG: tos_msgs/Container\n\
string container_id\n\
uint8 container_size\n\
int32 container_weight\n\
uint8 container_pos \n\
";
  }

  static const char* value(const ::tos_msgs::TargetInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tos_msgs::TargetInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_type);
      stream.next(m.section);
      stream.next(m.bay);
      stream.next(m.transfer_zone);
      stream.next(m.gantry_crane_id);
      stream.next(m.lane_id);
      stream.next(m.container);
      stream.next(m.move_stage);
      stream.next(m.ppos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TargetInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tos_msgs::TargetInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tos_msgs::TargetInfo_<ContainerAllocator>& v)
  {
    s << indent << "target_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.target_type);
    s << indent << "section: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.section);
    s << indent << "bay: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.bay);
    s << indent << "transfer_zone: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.transfer_zone);
    s << indent << "gantry_crane_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.gantry_crane_id);
    s << indent << "lane_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.lane_id);
    s << indent << "container: ";
    s << std::endl;
    Printer< ::tos_msgs::Container_<ContainerAllocator> >::stream(s, indent + "  ", v.container);
    s << indent << "move_stage: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.move_stage);
    s << indent << "ppos: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ppos);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TOS_MSGS_MESSAGE_TARGETINFO_H