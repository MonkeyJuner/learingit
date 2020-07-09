// Generated by gencpp from file camera_control_msgs/SetBinning.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_SETBINNING_H
#define CAMERA_CONTROL_MSGS_MESSAGE_SETBINNING_H

#include <ros/service_traits.h>


#include <camera_control_msgs/SetBinningRequest.h>
#include <camera_control_msgs/SetBinningResponse.h>


namespace camera_control_msgs
{

struct SetBinning
{

typedef SetBinningRequest Request;
typedef SetBinningResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetBinning
} // namespace camera_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::camera_control_msgs::SetBinning > {
  static const char* value()
  {
    return "fb7b82cb93bc5513ade2d601c7a7d975";
  }

  static const char* value(const ::camera_control_msgs::SetBinning&) { return value(); }
};

template<>
struct DataType< ::camera_control_msgs::SetBinning > {
  static const char* value()
  {
    return "camera_control_msgs/SetBinning";
  }

  static const char* value(const ::camera_control_msgs::SetBinning&) { return value(); }
};


// service_traits::MD5Sum< ::camera_control_msgs::SetBinningRequest> should match 
// service_traits::MD5Sum< ::camera_control_msgs::SetBinning > 
template<>
struct MD5Sum< ::camera_control_msgs::SetBinningRequest>
{
  static const char* value()
  {
    return MD5Sum< ::camera_control_msgs::SetBinning >::value();
  }
  static const char* value(const ::camera_control_msgs::SetBinningRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_control_msgs::SetBinningRequest> should match 
// service_traits::DataType< ::camera_control_msgs::SetBinning > 
template<>
struct DataType< ::camera_control_msgs::SetBinningRequest>
{
  static const char* value()
  {
    return DataType< ::camera_control_msgs::SetBinning >::value();
  }
  static const char* value(const ::camera_control_msgs::SetBinningRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::camera_control_msgs::SetBinningResponse> should match 
// service_traits::MD5Sum< ::camera_control_msgs::SetBinning > 
template<>
struct MD5Sum< ::camera_control_msgs::SetBinningResponse>
{
  static const char* value()
  {
    return MD5Sum< ::camera_control_msgs::SetBinning >::value();
  }
  static const char* value(const ::camera_control_msgs::SetBinningResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_control_msgs::SetBinningResponse> should match 
// service_traits::DataType< ::camera_control_msgs::SetBinning > 
template<>
struct DataType< ::camera_control_msgs::SetBinningResponse>
{
  static const char* value()
  {
    return DataType< ::camera_control_msgs::SetBinning >::value();
  }
  static const char* value(const ::camera_control_msgs::SetBinningResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_SETBINNING_H