// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: proto/map_id.proto

#ifndef PROTOBUF_proto_2fmap_5fid_2eproto__INCLUDED
#define PROTOBUF_proto_2fmap_5fid_2eproto__INCLUDED

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 2006000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 2006000 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)

namespace trunk {
namespace hadmap {

// Internal implementation detail -- do not call these.
void  protobuf_AddDesc_proto_2fmap_5fid_2eproto();
void protobuf_AssignDesc_proto_2fmap_5fid_2eproto();
void protobuf_ShutdownFile_proto_2fmap_5fid_2eproto();

class Id;

// ===================================================================

class Id : public ::google::protobuf::Message {
 public:
  Id();
  virtual ~Id();

  Id(const Id& from);

  inline Id& operator=(const Id& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const Id& default_instance();

  void Swap(Id* other);

  // implements Message ----------------------------------------------

  Id* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const Id& from);
  void MergeFrom(const Id& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // optional string id = 1;
  inline bool has_id() const;
  inline void clear_id();
  static const int kIdFieldNumber = 1;
  inline const ::std::string& id() const;
  inline void set_id(const ::std::string& value);
  inline void set_id(const char* value);
  inline void set_id(const char* value, size_t size);
  inline ::std::string* mutable_id();
  inline ::std::string* release_id();
  inline void set_allocated_id(::std::string* id);

  // @@protoc_insertion_point(class_scope:trunk.hadmap.Id)
 private:
  inline void set_has_id();
  inline void clear_has_id();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::std::string* id_;
  friend void  protobuf_AddDesc_proto_2fmap_5fid_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5fid_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5fid_2eproto();

  void InitAsDefaultInstance();
  static Id* default_instance_;
};
// ===================================================================


// ===================================================================

// Id

// optional string id = 1;
inline bool Id::has_id() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void Id::set_has_id() {
  _has_bits_[0] |= 0x00000001u;
}
inline void Id::clear_has_id() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void Id::clear_id() {
  if (id_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    id_->clear();
  }
  clear_has_id();
}
inline const ::std::string& Id::id() const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.Id.id)
  return *id_;
}
inline void Id::set_id(const ::std::string& value) {
  set_has_id();
  if (id_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    id_ = new ::std::string;
  }
  id_->assign(value);
  // @@protoc_insertion_point(field_set:trunk.hadmap.Id.id)
}
inline void Id::set_id(const char* value) {
  set_has_id();
  if (id_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    id_ = new ::std::string;
  }
  id_->assign(value);
  // @@protoc_insertion_point(field_set_char:trunk.hadmap.Id.id)
}
inline void Id::set_id(const char* value, size_t size) {
  set_has_id();
  if (id_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    id_ = new ::std::string;
  }
  id_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:trunk.hadmap.Id.id)
}
inline ::std::string* Id::mutable_id() {
  set_has_id();
  if (id_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    id_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.Id.id)
  return id_;
}
inline ::std::string* Id::release_id() {
  clear_has_id();
  if (id_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = id_;
    id_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void Id::set_allocated_id(::std::string* id) {
  if (id_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete id_;
  }
  if (id) {
    set_has_id();
    id_ = id;
  } else {
    clear_has_id();
    id_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:trunk.hadmap.Id.id)
}


// @@protoc_insertion_point(namespace_scope)

}  // namespace hadmap
}  // namespace trunk

#ifndef SWIG
namespace google {
namespace protobuf {


}  // namespace google
}  // namespace protobuf
#endif  // SWIG

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_proto_2fmap_5fid_2eproto__INCLUDED
