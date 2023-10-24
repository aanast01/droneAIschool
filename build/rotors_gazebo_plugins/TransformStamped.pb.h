// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: TransformStamped.proto

#ifndef PROTOBUF_INCLUDED_TransformStamped_2eproto
#define PROTOBUF_INCLUDED_TransformStamped_2eproto

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 3006001
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 3006001 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/arena.h>
#include <google/protobuf/arenastring.h>
#include <google/protobuf/generated_message_table_driven.h>
#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/inlined_string_field.h>
#include <google/protobuf/metadata.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>  // IWYU pragma: export
#include <google/protobuf/extension_set.h>  // IWYU pragma: export
#include <google/protobuf/unknown_field_set.h>
#include "Header.pb.h"
#include "Transform.pb.h"
// @@protoc_insertion_point(includes)
#define PROTOBUF_INTERNAL_EXPORT_protobuf_TransformStamped_2eproto 

namespace protobuf_TransformStamped_2eproto {
// Internal implementation detail -- do not use these members.
struct TableStruct {
  static const ::google::protobuf::internal::ParseTableField entries[];
  static const ::google::protobuf::internal::AuxillaryParseTableField aux[];
  static const ::google::protobuf::internal::ParseTable schema[1];
  static const ::google::protobuf::internal::FieldMetadata field_metadata[];
  static const ::google::protobuf::internal::SerializationTable serialization_table[];
  static const ::google::protobuf::uint32 offsets[];
};
void AddDescriptors();
}  // namespace protobuf_TransformStamped_2eproto
namespace gz_geometry_msgs {
class TransformStamped;
class TransformStampedDefaultTypeInternal;
extern TransformStampedDefaultTypeInternal _TransformStamped_default_instance_;
}  // namespace gz_geometry_msgs
namespace google {
namespace protobuf {
template<> ::gz_geometry_msgs::TransformStamped* Arena::CreateMaybeMessage<::gz_geometry_msgs::TransformStamped>(Arena*);
}  // namespace protobuf
}  // namespace google
namespace gz_geometry_msgs {

// ===================================================================

class TransformStamped : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:gz_geometry_msgs.TransformStamped) */ {
 public:
  TransformStamped();
  virtual ~TransformStamped();

  TransformStamped(const TransformStamped& from);

  inline TransformStamped& operator=(const TransformStamped& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  TransformStamped(TransformStamped&& from) noexcept
    : TransformStamped() {
    *this = ::std::move(from);
  }

  inline TransformStamped& operator=(TransformStamped&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _internal_metadata_.unknown_fields();
  }
  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return _internal_metadata_.mutable_unknown_fields();
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const TransformStamped& default_instance();

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const TransformStamped* internal_default_instance() {
    return reinterpret_cast<const TransformStamped*>(
               &_TransformStamped_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  void Swap(TransformStamped* other);
  friend void swap(TransformStamped& a, TransformStamped& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline TransformStamped* New() const final {
    return CreateMaybeMessage<TransformStamped>(NULL);
  }

  TransformStamped* New(::google::protobuf::Arena* arena) const final {
    return CreateMaybeMessage<TransformStamped>(arena);
  }
  void CopyFrom(const ::google::protobuf::Message& from) final;
  void MergeFrom(const ::google::protobuf::Message& from) final;
  void CopyFrom(const TransformStamped& from);
  void MergeFrom(const TransformStamped& from);
  void Clear() final;
  bool IsInitialized() const final;

  size_t ByteSizeLong() const final;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input) final;
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const final;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      bool deterministic, ::google::protobuf::uint8* target) const final;
  int GetCachedSize() const final { return _cached_size_.Get(); }

  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const final;
  void InternalSwap(TransformStamped* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return NULL;
  }
  inline void* MaybeArenaPtr() const {
    return NULL;
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const final;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // required .gz_std_msgs.Header header = 1;
  bool has_header() const;
  void clear_header();
  static const int kHeaderFieldNumber = 1;
  private:
  const ::gz_std_msgs::Header& _internal_header() const;
  public:
  const ::gz_std_msgs::Header& header() const;
  ::gz_std_msgs::Header* release_header();
  ::gz_std_msgs::Header* mutable_header();
  void set_allocated_header(::gz_std_msgs::Header* header);

  // required .gz_geometry_msgs.Transform transform = 2;
  bool has_transform() const;
  void clear_transform();
  static const int kTransformFieldNumber = 2;
  private:
  const ::gz_geometry_msgs::Transform& _internal_transform() const;
  public:
  const ::gz_geometry_msgs::Transform& transform() const;
  ::gz_geometry_msgs::Transform* release_transform();
  ::gz_geometry_msgs::Transform* mutable_transform();
  void set_allocated_transform(::gz_geometry_msgs::Transform* transform);

  // @@protoc_insertion_point(class_scope:gz_geometry_msgs.TransformStamped)
 private:
  void set_has_header();
  void clear_has_header();
  void set_has_transform();
  void clear_has_transform();

  // helper for ByteSizeLong()
  size_t RequiredFieldsByteSizeFallback() const;

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::internal::HasBits<1> _has_bits_;
  mutable ::google::protobuf::internal::CachedSize _cached_size_;
  ::gz_std_msgs::Header* header_;
  ::gz_geometry_msgs::Transform* transform_;
  friend struct ::protobuf_TransformStamped_2eproto::TableStruct;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// TransformStamped

// required .gz_std_msgs.Header header = 1;
inline bool TransformStamped::has_header() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void TransformStamped::set_has_header() {
  _has_bits_[0] |= 0x00000001u;
}
inline void TransformStamped::clear_has_header() {
  _has_bits_[0] &= ~0x00000001u;
}
inline const ::gz_std_msgs::Header& TransformStamped::_internal_header() const {
  return *header_;
}
inline const ::gz_std_msgs::Header& TransformStamped::header() const {
  const ::gz_std_msgs::Header* p = header_;
  // @@protoc_insertion_point(field_get:gz_geometry_msgs.TransformStamped.header)
  return p != NULL ? *p : *reinterpret_cast<const ::gz_std_msgs::Header*>(
      &::gz_std_msgs::_Header_default_instance_);
}
inline ::gz_std_msgs::Header* TransformStamped::release_header() {
  // @@protoc_insertion_point(field_release:gz_geometry_msgs.TransformStamped.header)
  clear_has_header();
  ::gz_std_msgs::Header* temp = header_;
  header_ = NULL;
  return temp;
}
inline ::gz_std_msgs::Header* TransformStamped::mutable_header() {
  set_has_header();
  if (header_ == NULL) {
    auto* p = CreateMaybeMessage<::gz_std_msgs::Header>(GetArenaNoVirtual());
    header_ = p;
  }
  // @@protoc_insertion_point(field_mutable:gz_geometry_msgs.TransformStamped.header)
  return header_;
}
inline void TransformStamped::set_allocated_header(::gz_std_msgs::Header* header) {
  ::google::protobuf::Arena* message_arena = GetArenaNoVirtual();
  if (message_arena == NULL) {
    delete reinterpret_cast< ::google::protobuf::MessageLite*>(header_);
  }
  if (header) {
    ::google::protobuf::Arena* submessage_arena = NULL;
    if (message_arena != submessage_arena) {
      header = ::google::protobuf::internal::GetOwnedMessage(
          message_arena, header, submessage_arena);
    }
    set_has_header();
  } else {
    clear_has_header();
  }
  header_ = header;
  // @@protoc_insertion_point(field_set_allocated:gz_geometry_msgs.TransformStamped.header)
}

// required .gz_geometry_msgs.Transform transform = 2;
inline bool TransformStamped::has_transform() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void TransformStamped::set_has_transform() {
  _has_bits_[0] |= 0x00000002u;
}
inline void TransformStamped::clear_has_transform() {
  _has_bits_[0] &= ~0x00000002u;
}
inline const ::gz_geometry_msgs::Transform& TransformStamped::_internal_transform() const {
  return *transform_;
}
inline const ::gz_geometry_msgs::Transform& TransformStamped::transform() const {
  const ::gz_geometry_msgs::Transform* p = transform_;
  // @@protoc_insertion_point(field_get:gz_geometry_msgs.TransformStamped.transform)
  return p != NULL ? *p : *reinterpret_cast<const ::gz_geometry_msgs::Transform*>(
      &::gz_geometry_msgs::_Transform_default_instance_);
}
inline ::gz_geometry_msgs::Transform* TransformStamped::release_transform() {
  // @@protoc_insertion_point(field_release:gz_geometry_msgs.TransformStamped.transform)
  clear_has_transform();
  ::gz_geometry_msgs::Transform* temp = transform_;
  transform_ = NULL;
  return temp;
}
inline ::gz_geometry_msgs::Transform* TransformStamped::mutable_transform() {
  set_has_transform();
  if (transform_ == NULL) {
    auto* p = CreateMaybeMessage<::gz_geometry_msgs::Transform>(GetArenaNoVirtual());
    transform_ = p;
  }
  // @@protoc_insertion_point(field_mutable:gz_geometry_msgs.TransformStamped.transform)
  return transform_;
}
inline void TransformStamped::set_allocated_transform(::gz_geometry_msgs::Transform* transform) {
  ::google::protobuf::Arena* message_arena = GetArenaNoVirtual();
  if (message_arena == NULL) {
    delete reinterpret_cast< ::google::protobuf::MessageLite*>(transform_);
  }
  if (transform) {
    ::google::protobuf::Arena* submessage_arena = NULL;
    if (message_arena != submessage_arena) {
      transform = ::google::protobuf::internal::GetOwnedMessage(
          message_arena, transform, submessage_arena);
    }
    set_has_transform();
  } else {
    clear_has_transform();
  }
  transform_ = transform;
  // @@protoc_insertion_point(field_set_allocated:gz_geometry_msgs.TransformStamped.transform)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__

// @@protoc_insertion_point(namespace_scope)

}  // namespace gz_geometry_msgs

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_INCLUDED_TransformStamped_2eproto
