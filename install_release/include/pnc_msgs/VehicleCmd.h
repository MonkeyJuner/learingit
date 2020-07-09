// Generated by gencpp from file pnc_msgs/VehicleCmd.msg
// DO NOT EDIT!


#ifndef PNC_MSGS_MESSAGE_VEHICLECMD_H
#define PNC_MSGS_MESSAGE_VEHICLECMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <pncc_msgs/Gear.h>

namespace pnc_msgs
{
template <class ContainerAllocator>
struct VehicleCmd_
{
  typedef VehicleCmd_<ContainerAllocator> Type;

  VehicleCmd_()
    : header()
    , steering_mode(0)
    , steering_angle(0.0)
    , steering_speed(0.0)
    , throttle_mode(0)
    , throttle(0.0)
    , brake_mode(0)
    , brake(0.0)
    , acceleration_request(0.0)
    , acceleration_mode(0)
    , gear()
    , gear_mode(0)
    , turn_light_mode(0)
    , turn_light(0)
    , light_mode(0)
    , light(0)
    , wiper_mode(0)
    , wiper(0)
    , door_mode(0)
    , door(0)
    , horn_mode(0)
    , horn(0)
    , auto_driver_cmd(0)
    , e_stop_cmd(0)  {
    }
  VehicleCmd_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , steering_mode(0)
    , steering_angle(0.0)
    , steering_speed(0.0)
    , throttle_mode(0)
    , throttle(0.0)
    , brake_mode(0)
    , brake(0.0)
    , acceleration_request(0.0)
    , acceleration_mode(0)
    , gear(_alloc)
    , gear_mode(0)
    , turn_light_mode(0)
    , turn_light(0)
    , light_mode(0)
    , light(0)
    , wiper_mode(0)
    , wiper(0)
    , door_mode(0)
    , door(0)
    , horn_mode(0)
    , horn(0)
    , auto_driver_cmd(0)
    , e_stop_cmd(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _steering_mode_type;
  _steering_mode_type steering_mode;

   typedef double _steering_angle_type;
  _steering_angle_type steering_angle;

   typedef double _steering_speed_type;
  _steering_speed_type steering_speed;

   typedef uint8_t _throttle_mode_type;
  _throttle_mode_type throttle_mode;

   typedef double _throttle_type;
  _throttle_type throttle;

   typedef uint8_t _brake_mode_type;
  _brake_mode_type brake_mode;

   typedef double _brake_type;
  _brake_type brake;

   typedef double _acceleration_request_type;
  _acceleration_request_type acceleration_request;

   typedef uint8_t _acceleration_mode_type;
  _acceleration_mode_type acceleration_mode;

   typedef  ::pncc_msgs::Gear_<ContainerAllocator>  _gear_type;
  _gear_type gear;

   typedef uint8_t _gear_mode_type;
  _gear_mode_type gear_mode;

   typedef uint8_t _turn_light_mode_type;
  _turn_light_mode_type turn_light_mode;

   typedef uint8_t _turn_light_type;
  _turn_light_type turn_light;

   typedef uint8_t _light_mode_type;
  _light_mode_type light_mode;

   typedef uint8_t _light_type;
  _light_type light;

   typedef uint8_t _wiper_mode_type;
  _wiper_mode_type wiper_mode;

   typedef uint8_t _wiper_type;
  _wiper_type wiper;

   typedef uint8_t _door_mode_type;
  _door_mode_type door_mode;

   typedef uint8_t _door_type;
  _door_type door;

   typedef uint8_t _horn_mode_type;
  _horn_mode_type horn_mode;

   typedef uint8_t _horn_type;
  _horn_type horn;

   typedef uint8_t _auto_driver_cmd_type;
  _auto_driver_cmd_type auto_driver_cmd;

   typedef uint8_t _e_stop_cmd_type;
  _e_stop_cmd_type e_stop_cmd;



  enum {
    MODE_MANUAL = 100u,
    MODE_AUTO = 101u,
    OFF = 150u,
    ON = 151u,
    TURN_LIGHT_LEFT = 0u,
    TURN_LIGHT_RIGHT = 1u,
    TURN_LIGHT_BOTH = 2u,
    TURN_LIGHT_INVALID = 3u,
    LIGHT_CLOSE = 0u,
    LIGHT_NEAR = 1u,
    LIGHT_FAR = 2u,
    LIGHT_INVALID = 3u,
    WIPER_CLOSE = 0u,
    WIPER_RUN = 1u,
    WIPER_RESERVE = 2u,
    WIPER_INVALID = 3u,
    DOOR_NO_CONTROL = 0u,
    DOOR_NORMAL_OPEN = 1u,
    DOOR_EMERGENCY_OPEN = 2u,
    DOOR_RESERVE = 3u,
    HORN_NO_CONTROL = 0u,
    HORN_OPEN = 1u,
  };


  typedef boost::shared_ptr< ::pnc_msgs::VehicleCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pnc_msgs::VehicleCmd_<ContainerAllocator> const> ConstPtr;

}; // struct VehicleCmd_

typedef ::pnc_msgs::VehicleCmd_<std::allocator<void> > VehicleCmd;

typedef boost::shared_ptr< ::pnc_msgs::VehicleCmd > VehicleCmdPtr;
typedef boost::shared_ptr< ::pnc_msgs::VehicleCmd const> VehicleCmdConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pnc_msgs::VehicleCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pnc_msgs::VehicleCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pnc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'pncc_msgs': ['/home/xjm/catkin_ws/src/interfaces/ros/pncc/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'pnc_msgs': ['/home/xjm/catkin_ws/src/messages/ros/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pnc_msgs::VehicleCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pnc_msgs::VehicleCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pnc_msgs::VehicleCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pnc_msgs::VehicleCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pnc_msgs::VehicleCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pnc_msgs::VehicleCmd_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pnc_msgs::VehicleCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d13944380411e88decad84bf9d937781";
  }

  static const char* value(const ::pnc_msgs::VehicleCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd13944380411e88dULL;
  static const uint64_t static_value2 = 0xecad84bf9d937781ULL;
};

template<class ContainerAllocator>
struct DataType< ::pnc_msgs::VehicleCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pnc_msgs/VehicleCmd";
  }

  static const char* value(const ::pnc_msgs::VehicleCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pnc_msgs::VehicleCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 MODE_MANUAL = 100\n\
uint8 MODE_AUTO = 101\n\
\n\
uint8 OFF = 150              # For horn, left_light and right_light\n\
uint8 ON = 151               # For horn, left_light and right_light\n\
\n\
uint8 TURN_LIGHT_LEFT = 0\n\
uint8 TURN_LIGHT_RIGHT = 1\n\
uint8 TURN_LIGHT_BOTH = 2\n\
uint8 TURN_LIGHT_INVALID = 3\n\
\n\
uint8 LIGHT_CLOSE = 0\n\
uint8 LIGHT_NEAR = 1\n\
uint8 LIGHT_FAR = 2\n\
uint8 LIGHT_INVALID = 3\n\
\n\
uint8 WIPER_CLOSE = 0\n\
uint8 WIPER_RUN = 1\n\
uint8 WIPER_RESERVE = 2\n\
uint8 WIPER_INVALID = 3\n\
\n\
uint8 DOOR_NO_CONTROL = 0\n\
uint8 DOOR_NORMAL_OPEN = 1\n\
uint8 DOOR_EMERGENCY_OPEN = 2\n\
uint8 DOOR_RESERVE = 3\n\
\n\
uint8 HORN_NO_CONTROL = 0\n\
uint8 HORN_OPEN = 1\n\
\n\
Header header\n\
\n\
uint8 steering_mode\n\
float64 steering_angle     # -1.0 ~ 1.0, positive number on the right side\n\
float64 steering_speed     # 0.0 ~ 1.0\n\
\n\
uint8 throttle_mode\n\
float64 throttle           # 0.0 ~ 1.0\n\
uint8 brake_mode\n\
float64 brake              # 0.0 ~ 1.0\n\
\n\
float64 acceleration_request   # m/s2\n\
uint8 acceleration_mode\n\
\n\
pncc_msgs/Gear gear\n\
uint8 gear_mode\n\
\n\
uint8 turn_light_mode\n\
uint8 turn_light            #0:left  1:right  2:both  3:invalid\n\
\n\
uint8 light_mode\n\
uint8 light                 #front light    0:close  1:near light   2:far light  3:invalid\n\
\n\
uint8 wiper_mode\n\
uint8 wiper                 #0:wiper close  1:run wiper  2:reserve  3:invalid\n\
\n\
uint8 door_mode\n\
uint8 door                  #0:no control  1:normal open  2:emergency open  3:reserve\n\
\n\
uint8 horn_mode\n\
uint8 horn               #0:no control  1:open\n\
\n\
uint8 auto_driver_cmd\n\
uint8 e_stop_cmd\n\
\n\
\n\
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
MSG: pncc_msgs/Gear\n\
uint8 GEAR_P = 0\n\
uint8 GEAR_R = 1\n\
uint8 GEAR_N = 2\n\
uint8 GEAR_D = 3\n\
uint8 GEAR_1 = 4\n\
uint8 GEAR_2 = 5\n\
uint8 GEAR_3 = 6\n\
uint8 GEAR_4 = 7\n\
uint8 GEAR_5 = 8\n\
uint8 GEAR_6 = 9\n\
uint8 GEAR_7 = 10\n\
uint8 GEAR_8 = 11\n\
uint8 GEAR_9 = 12\n\
uint8 GEAR_10 = 13\n\
uint8 GEAR_11 = 14\n\
uint8 GEAR_12 = 15\n\
\n\
\n\
uint8 value\n\
";
  }

  static const char* value(const ::pnc_msgs::VehicleCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pnc_msgs::VehicleCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.steering_mode);
      stream.next(m.steering_angle);
      stream.next(m.steering_speed);
      stream.next(m.throttle_mode);
      stream.next(m.throttle);
      stream.next(m.brake_mode);
      stream.next(m.brake);
      stream.next(m.acceleration_request);
      stream.next(m.acceleration_mode);
      stream.next(m.gear);
      stream.next(m.gear_mode);
      stream.next(m.turn_light_mode);
      stream.next(m.turn_light);
      stream.next(m.light_mode);
      stream.next(m.light);
      stream.next(m.wiper_mode);
      stream.next(m.wiper);
      stream.next(m.door_mode);
      stream.next(m.door);
      stream.next(m.horn_mode);
      stream.next(m.horn);
      stream.next(m.auto_driver_cmd);
      stream.next(m.e_stop_cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VehicleCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pnc_msgs::VehicleCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pnc_msgs::VehicleCmd_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "steering_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.steering_mode);
    s << indent << "steering_angle: ";
    Printer<double>::stream(s, indent + "  ", v.steering_angle);
    s << indent << "steering_speed: ";
    Printer<double>::stream(s, indent + "  ", v.steering_speed);
    s << indent << "throttle_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.throttle_mode);
    s << indent << "throttle: ";
    Printer<double>::stream(s, indent + "  ", v.throttle);
    s << indent << "brake_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.brake_mode);
    s << indent << "brake: ";
    Printer<double>::stream(s, indent + "  ", v.brake);
    s << indent << "acceleration_request: ";
    Printer<double>::stream(s, indent + "  ", v.acceleration_request);
    s << indent << "acceleration_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.acceleration_mode);
    s << indent << "gear: ";
    s << std::endl;
    Printer< ::pncc_msgs::Gear_<ContainerAllocator> >::stream(s, indent + "  ", v.gear);
    s << indent << "gear_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gear_mode);
    s << indent << "turn_light_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.turn_light_mode);
    s << indent << "turn_light: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.turn_light);
    s << indent << "light_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.light_mode);
    s << indent << "light: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.light);
    s << indent << "wiper_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.wiper_mode);
    s << indent << "wiper: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.wiper);
    s << indent << "door_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.door_mode);
    s << indent << "door: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.door);
    s << indent << "horn_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.horn_mode);
    s << indent << "horn: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.horn);
    s << indent << "auto_driver_cmd: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.auto_driver_cmd);
    s << indent << "e_stop_cmd: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.e_stop_cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PNC_MSGS_MESSAGE_VEHICLECMD_H
