// Generated by gencpp from file pmt/pmtsrvResponse.msg
// DO NOT EDIT!


#ifndef PMT_MESSAGE_PMTSRVRESPONSE_H
#define PMT_MESSAGE_PMTSRVRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pmt
{
template <class ContainerAllocator>
struct pmtsrvResponse_
{
  typedef pmtsrvResponse_<ContainerAllocator> Type;

  pmtsrvResponse_()
    : G(0)  {
    }
  pmtsrvResponse_(const ContainerAllocator& _alloc)
    : G(0)  {
  (void)_alloc;
    }



   typedef int32_t _G_type;
  _G_type G;





  typedef boost::shared_ptr< ::pmt::pmtsrvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pmt::pmtsrvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct pmtsrvResponse_

typedef ::pmt::pmtsrvResponse_<std::allocator<void> > pmtsrvResponse;

typedef boost::shared_ptr< ::pmt::pmtsrvResponse > pmtsrvResponsePtr;
typedef boost::shared_ptr< ::pmt::pmtsrvResponse const> pmtsrvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pmt::pmtsrvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pmt::pmtsrvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pmt::pmtsrvResponse_<ContainerAllocator1> & lhs, const ::pmt::pmtsrvResponse_<ContainerAllocator2> & rhs)
{
  return lhs.G == rhs.G;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pmt::pmtsrvResponse_<ContainerAllocator1> & lhs, const ::pmt::pmtsrvResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pmt

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pmt::pmtsrvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pmt::pmtsrvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pmt::pmtsrvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pmt::pmtsrvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pmt::pmtsrvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pmt::pmtsrvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pmt::pmtsrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7adb7cd12dd68fe99d90c5f708b06dac";
  }

  static const char* value(const ::pmt::pmtsrvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7adb7cd12dd68fe9ULL;
  static const uint64_t static_value2 = 0x9d90c5f708b06dacULL;
};

template<class ContainerAllocator>
struct DataType< ::pmt::pmtsrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pmt/pmtsrvResponse";
  }

  static const char* value(const ::pmt::pmtsrvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pmt::pmtsrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 G\n"
;
  }

  static const char* value(const ::pmt::pmtsrvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pmt::pmtsrvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.G);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pmtsrvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pmt::pmtsrvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pmt::pmtsrvResponse_<ContainerAllocator>& v)
  {
    s << indent << "G: ";
    Printer<int32_t>::stream(s, indent + "  ", v.G);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PMT_MESSAGE_PMTSRVRESPONSE_H