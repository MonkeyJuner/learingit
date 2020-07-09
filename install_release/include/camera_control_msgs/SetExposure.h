// Generated by gencpp from file camera_control_msgs/SetExposure.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_SETEXPOSURE_H
#define CAMERA_CONTROL_MSGS_MESSAGE_SETEXPOSURE_H

#include <ros/service_traits.h>


#include <camera_control_msgs/SetExposureRequest.h>
#include <camera_control_msgs/SetExposureResponse.h>


namespace camera_control_msgs
{

struct SetExposure
{

typedef SetExposureRequest Request;
typedef SetExposureResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetExposure
} // namespace camera_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::camera_control_msgs::SetExposure > {
  static const char* value()
  {
    return "07036591479e56cbaa8b13d231a2c756";
  }

  static const char* value(const ::camera_control_msgs::SetExposure&) { return value(); }
};

template<>
struct DataType< ::camera_control_msgs::SetExposure > {
  static const char* value()
  {
    return "camera_control_msgs/SetExposure";
  }

  static const char* value(const ::camera_control_msgs::SetExposure&) { return value(); }
};


// service_traits::MD5Sum< ::camera_control_msgs::SetExposureRequest> should match 
// service_traits::MD5Sum< ::camera_control_msgs::SetExposure > 
template<>
struct MD5Sum< ::camera_control_msgs::SetExposureRequest>
{
  static const char* value()
  {
    return MD5Sum< ::camera_control_msgs::SetExposure >::value();
  }
  static const char* value(const ::camera_control_msgs::SetExposureRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_control_msgs::SetExposureRequest> should match 
// service_traits::DataType< ::camera_control_msgs::SetExposure > 
template<>
struct DataType< ::camera_control_msgs::SetExposureRequest>
{
  static const char* value()
  {
    return DataType< ::camera_control_msgs::SetExposure >::value();
  }
  static const char* value(const ::camera_control_msgs::SetExposureRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::camera_control_msgs::SetExposureResponse> should match 
// service_traits::MD5Sum< ::camera_control_msgs::SetExposure > 
template<>
struct MD5Sum< ::camera_control_msgs::SetExposureResponse>
{
  static const char* value()
  {
    return MD5Sum< ::camera_control_msgs::SetExposure >::value();
  }
  static const char* value(const ::camera_control_msgs::SetExposureResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_control_msgs::SetExposureResponse> should match 
// service_traits::DataType< ::camera_control_msgs::SetExposure > 
template<>
struct DataType< ::camera_control_msgs::SetExposureResponse>
{
  static const char* value()
  {
    return DataType< ::camera_control_msgs::SetExposure >::value();
  }
  static const char* value(const ::camera_control_msgs::SetExposureResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_SETEXPOSURE_H