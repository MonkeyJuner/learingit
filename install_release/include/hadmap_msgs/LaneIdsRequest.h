// Generated by gencpp from file hadmap_msgs/LaneIdsRequest.msg
// DO NOT EDIT!


#ifndef HADMAP_MSGS_MESSAGE_LANEIDSREQUEST_H
#define HADMAP_MSGS_MESSAGE_LANEIDSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hadmap_msgs
{
template <class ContainerAllocator>
struct LaneIdsRequest_
{
  typedef LaneIdsRequest_<ContainerAllocator> Type;

  LaneIdsRequest_()
    : idx(0)  {
    }
  LaneIdsRequest_(const ContainerAllocator& _alloc)
    : idx(0)  {
  (void)_alloc;
    }



   typedef int32_t _idx_type;
  _idx_type idx;





  typedef boost::shared_ptr< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LaneIdsRequest_

typedef ::hadmap_msgs::LaneIdsRequest_<std::allocator<void> > LaneIdsRequest;

typedef boost::shared_ptr< ::hadmap_msgs::LaneIdsRequest > LaneIdsRequestPtr;
typedef boost::shared_ptr< ::hadmap_msgs::LaneIdsRequest const> LaneIdsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hadmap_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'hadmap_msgs': ['/home/wuhaisheng/Workspace/catkin_integration/src/interfaces/ads_internal/ros/map/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d754bdc13f4ba76e8c11d82437f16e9b";
  }

  static const char* value(const ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd754bdc13f4ba76eULL;
  static const uint64_t static_value2 = 0x8c11d82437f16e9bULL;
};

template<class ContainerAllocator>
struct DataType< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hadmap_msgs/LaneIdsRequest";
  }

  static const char* value(const ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 idx\n\
";
  }

  static const char* value(const ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.idx);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LaneIdsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hadmap_msgs::LaneIdsRequest_<ContainerAllocator>& v)
  {
    s << indent << "idx: ";
    Printer<int32_t>::stream(s, indent + "  ", v.idx);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HADMAP_MSGS_MESSAGE_LANEIDSREQUEST_H
