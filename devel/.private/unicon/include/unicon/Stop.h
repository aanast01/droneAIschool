// Generated by gencpp from file unicon/Stop.msg
// DO NOT EDIT!


#ifndef UNICON_MESSAGE_STOP_H
#define UNICON_MESSAGE_STOP_H

#include <ros/service_traits.h>


#include <unicon/StopRequest.h>
#include <unicon/StopResponse.h>


namespace unicon
{

struct Stop
{

typedef StopRequest Request;
typedef StopResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Stop
} // namespace unicon


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::unicon::Stop > {
  static const char* value()
  {
    return "094fea5bf24fa26870a84bcc4ec8c441";
  }

  static const char* value(const ::unicon::Stop&) { return value(); }
};

template<>
struct DataType< ::unicon::Stop > {
  static const char* value()
  {
    return "unicon/Stop";
  }

  static const char* value(const ::unicon::Stop&) { return value(); }
};


// service_traits::MD5Sum< ::unicon::StopRequest> should match
// service_traits::MD5Sum< ::unicon::Stop >
template<>
struct MD5Sum< ::unicon::StopRequest>
{
  static const char* value()
  {
    return MD5Sum< ::unicon::Stop >::value();
  }
  static const char* value(const ::unicon::StopRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::unicon::StopRequest> should match
// service_traits::DataType< ::unicon::Stop >
template<>
struct DataType< ::unicon::StopRequest>
{
  static const char* value()
  {
    return DataType< ::unicon::Stop >::value();
  }
  static const char* value(const ::unicon::StopRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::unicon::StopResponse> should match
// service_traits::MD5Sum< ::unicon::Stop >
template<>
struct MD5Sum< ::unicon::StopResponse>
{
  static const char* value()
  {
    return MD5Sum< ::unicon::Stop >::value();
  }
  static const char* value(const ::unicon::StopResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::unicon::StopResponse> should match
// service_traits::DataType< ::unicon::Stop >
template<>
struct DataType< ::unicon::StopResponse>
{
  static const char* value()
  {
    return DataType< ::unicon::Stop >::value();
  }
  static const char* value(const ::unicon::StopResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UNICON_MESSAGE_STOP_H