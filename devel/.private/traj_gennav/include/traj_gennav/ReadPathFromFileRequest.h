// Generated by gencpp from file traj_gennav/ReadPathFromFileRequest.msg
// DO NOT EDIT!


#ifndef TRAJ_GENNAV_MESSAGE_READPATHFROMFILEREQUEST_H
#define TRAJ_GENNAV_MESSAGE_READPATHFROMFILEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>

namespace traj_gennav
{
template <class ContainerAllocator>
struct ReadPathFromFileRequest_
{
  typedef ReadPathFromFileRequest_<ContainerAllocator> Type;

  ReadPathFromFileRequest_()
    : filename()  {
    }
  ReadPathFromFileRequest_(const ContainerAllocator& _alloc)
    : filename(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::String_<ContainerAllocator>  _filename_type;
  _filename_type filename;





  typedef boost::shared_ptr< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ReadPathFromFileRequest_

typedef ::traj_gennav::ReadPathFromFileRequest_<std::allocator<void> > ReadPathFromFileRequest;

typedef boost::shared_ptr< ::traj_gennav::ReadPathFromFileRequest > ReadPathFromFileRequestPtr;
typedef boost::shared_ptr< ::traj_gennav::ReadPathFromFileRequest const> ReadPathFromFileRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator1> & lhs, const ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator2> & rhs)
{
  return lhs.filename == rhs.filename;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator1> & lhs, const ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace traj_gennav

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "716e25f9d9dc76ceba197f93cbf05dc7";
  }

  static const char* value(const ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x716e25f9d9dc76ceULL;
  static const uint64_t static_value2 = 0xba197f93cbf05dc7ULL;
};

template<class ContainerAllocator>
struct DataType< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "traj_gennav/ReadPathFromFileRequest";
  }

  static const char* value(const ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message to specify .yaml mission file to load\n"
"std_msgs/String filename\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
;
  }

  static const char* value(const ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.filename);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReadPathFromFileRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::traj_gennav::ReadPathFromFileRequest_<ContainerAllocator>& v)
  {
    s << indent << "filename: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.filename);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRAJ_GENNAV_MESSAGE_READPATHFROMFILEREQUEST_H
