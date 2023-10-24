// Generated by gencpp from file traj_gennav/ReadPathFromFileResponse.msg
// DO NOT EDIT!


#ifndef TRAJ_GENNAV_MESSAGE_READPATHFROMFILERESPONSE_H
#define TRAJ_GENNAV_MESSAGE_READPATHFROMFILERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace traj_gennav
{
template <class ContainerAllocator>
struct ReadPathFromFileResponse_
{
  typedef ReadPathFromFileResponse_<ContainerAllocator> Type;

  ReadPathFromFileResponse_()
    {
    }
  ReadPathFromFileResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ReadPathFromFileResponse_

typedef ::traj_gennav::ReadPathFromFileResponse_<std::allocator<void> > ReadPathFromFileResponse;

typedef boost::shared_ptr< ::traj_gennav::ReadPathFromFileResponse > ReadPathFromFileResponsePtr;
typedef boost::shared_ptr< ::traj_gennav::ReadPathFromFileResponse const> ReadPathFromFileResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace traj_gennav

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "traj_gennav/ReadPathFromFileResponse";
  }

  static const char* value(const ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReadPathFromFileResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::traj_gennav::ReadPathFromFileResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // TRAJ_GENNAV_MESSAGE_READPATHFROMFILERESPONSE_H
