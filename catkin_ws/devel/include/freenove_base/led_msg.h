// Generated by gencpp from file freenove_base/led_msg.msg
// DO NOT EDIT!


#ifndef FREENOVE_BASE_MESSAGE_LED_MSG_H
#define FREENOVE_BASE_MESSAGE_LED_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace freenove_base
{
template <class ContainerAllocator>
struct led_msg_
{
  typedef led_msg_<ContainerAllocator> Type;

  led_msg_()
    : r(0)
    , g(0)
    , b(0)  {
    }
  led_msg_(const ContainerAllocator& _alloc)
    : r(0)
    , g(0)
    , b(0)  {
  (void)_alloc;
    }



   typedef int32_t _r_type;
  _r_type r;

   typedef int32_t _g_type;
  _g_type g;

   typedef int32_t _b_type;
  _b_type b;





  typedef boost::shared_ptr< ::freenove_base::led_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::freenove_base::led_msg_<ContainerAllocator> const> ConstPtr;

}; // struct led_msg_

typedef ::freenove_base::led_msg_<std::allocator<void> > led_msg;

typedef boost::shared_ptr< ::freenove_base::led_msg > led_msgPtr;
typedef boost::shared_ptr< ::freenove_base::led_msg const> led_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::freenove_base::led_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::freenove_base::led_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::freenove_base::led_msg_<ContainerAllocator1> & lhs, const ::freenove_base::led_msg_<ContainerAllocator2> & rhs)
{
  return lhs.r == rhs.r &&
    lhs.g == rhs.g &&
    lhs.b == rhs.b;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::freenove_base::led_msg_<ContainerAllocator1> & lhs, const ::freenove_base::led_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace freenove_base

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::freenove_base::led_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::freenove_base::led_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::freenove_base::led_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::freenove_base::led_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::freenove_base::led_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::freenove_base::led_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::freenove_base::led_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "84687e3e5559ed0c71018e843bbfb5cd";
  }

  static const char* value(const ::freenove_base::led_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x84687e3e5559ed0cULL;
  static const uint64_t static_value2 = 0x71018e843bbfb5cdULL;
};

template<class ContainerAllocator>
struct DataType< ::freenove_base::led_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "freenove_base/led_msg";
  }

  static const char* value(const ::freenove_base::led_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::freenove_base::led_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 r\n"
"int32 g\n"
"int32 b\n"
;
  }

  static const char* value(const ::freenove_base::led_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::freenove_base::led_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.r);
      stream.next(m.g);
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct led_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::freenove_base::led_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::freenove_base::led_msg_<ContainerAllocator>& v)
  {
    s << indent << "r: ";
    Printer<int32_t>::stream(s, indent + "  ", v.r);
    s << indent << "g: ";
    Printer<int32_t>::stream(s, indent + "  ", v.g);
    s << indent << "b: ";
    Printer<int32_t>::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FREENOVE_BASE_MESSAGE_LED_MSG_H
