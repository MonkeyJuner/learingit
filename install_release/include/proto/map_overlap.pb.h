// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: proto/map_overlap.proto

#ifndef PROTOBUF_proto_2fmap_5foverlap_2eproto__INCLUDED
#define PROTOBUF_proto_2fmap_5foverlap_2eproto__INCLUDED

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
#include "proto/map_id.pb.h"
// @@protoc_insertion_point(includes)

namespace trunk {
namespace hadmap {

// Internal implementation detail -- do not call these.
void  protobuf_AddDesc_proto_2fmap_5foverlap_2eproto();
void protobuf_AssignDesc_proto_2fmap_5foverlap_2eproto();
void protobuf_ShutdownFile_proto_2fmap_5foverlap_2eproto();

class LaneOverlapInfo;
class SignalOverlapInfo;
class CrosswalkOverlapInfo;
class JunctionOverlapInfo;
class ObjectOverlapInfo;
class Overlap;

// ===================================================================

class LaneOverlapInfo : public ::google::protobuf::Message {
 public:
  LaneOverlapInfo();
  virtual ~LaneOverlapInfo();

  LaneOverlapInfo(const LaneOverlapInfo& from);

  inline LaneOverlapInfo& operator=(const LaneOverlapInfo& from) {
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
  static const LaneOverlapInfo& default_instance();

  void Swap(LaneOverlapInfo* other);

  // implements Message ----------------------------------------------

  LaneOverlapInfo* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const LaneOverlapInfo& from);
  void MergeFrom(const LaneOverlapInfo& from);
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

  // @@protoc_insertion_point(class_scope:trunk.hadmap.LaneOverlapInfo)
 private:

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  friend void  protobuf_AddDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5foverlap_2eproto();

  void InitAsDefaultInstance();
  static LaneOverlapInfo* default_instance_;
};
// -------------------------------------------------------------------

class SignalOverlapInfo : public ::google::protobuf::Message {
 public:
  SignalOverlapInfo();
  virtual ~SignalOverlapInfo();

  SignalOverlapInfo(const SignalOverlapInfo& from);

  inline SignalOverlapInfo& operator=(const SignalOverlapInfo& from) {
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
  static const SignalOverlapInfo& default_instance();

  void Swap(SignalOverlapInfo* other);

  // implements Message ----------------------------------------------

  SignalOverlapInfo* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const SignalOverlapInfo& from);
  void MergeFrom(const SignalOverlapInfo& from);
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

  // @@protoc_insertion_point(class_scope:trunk.hadmap.SignalOverlapInfo)
 private:

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  friend void  protobuf_AddDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5foverlap_2eproto();

  void InitAsDefaultInstance();
  static SignalOverlapInfo* default_instance_;
};
// -------------------------------------------------------------------

class CrosswalkOverlapInfo : public ::google::protobuf::Message {
 public:
  CrosswalkOverlapInfo();
  virtual ~CrosswalkOverlapInfo();

  CrosswalkOverlapInfo(const CrosswalkOverlapInfo& from);

  inline CrosswalkOverlapInfo& operator=(const CrosswalkOverlapInfo& from) {
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
  static const CrosswalkOverlapInfo& default_instance();

  void Swap(CrosswalkOverlapInfo* other);

  // implements Message ----------------------------------------------

  CrosswalkOverlapInfo* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const CrosswalkOverlapInfo& from);
  void MergeFrom(const CrosswalkOverlapInfo& from);
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

  // @@protoc_insertion_point(class_scope:trunk.hadmap.CrosswalkOverlapInfo)
 private:

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  friend void  protobuf_AddDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5foverlap_2eproto();

  void InitAsDefaultInstance();
  static CrosswalkOverlapInfo* default_instance_;
};
// -------------------------------------------------------------------

class JunctionOverlapInfo : public ::google::protobuf::Message {
 public:
  JunctionOverlapInfo();
  virtual ~JunctionOverlapInfo();

  JunctionOverlapInfo(const JunctionOverlapInfo& from);

  inline JunctionOverlapInfo& operator=(const JunctionOverlapInfo& from) {
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
  static const JunctionOverlapInfo& default_instance();

  void Swap(JunctionOverlapInfo* other);

  // implements Message ----------------------------------------------

  JunctionOverlapInfo* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const JunctionOverlapInfo& from);
  void MergeFrom(const JunctionOverlapInfo& from);
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

  // @@protoc_insertion_point(class_scope:trunk.hadmap.JunctionOverlapInfo)
 private:

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  friend void  protobuf_AddDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5foverlap_2eproto();

  void InitAsDefaultInstance();
  static JunctionOverlapInfo* default_instance_;
};
// -------------------------------------------------------------------

class ObjectOverlapInfo : public ::google::protobuf::Message {
 public:
  ObjectOverlapInfo();
  virtual ~ObjectOverlapInfo();

  ObjectOverlapInfo(const ObjectOverlapInfo& from);

  inline ObjectOverlapInfo& operator=(const ObjectOverlapInfo& from) {
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
  static const ObjectOverlapInfo& default_instance();

  enum OverlapInfoCase {
    kLaneOverlapInfo = 2,
    kSignalOverlapInfo = 3,
    kCrosswalkOverlapInfo = 4,
    kJunctionOverlapInfo = 5,
    OVERLAP_INFO_NOT_SET = 0,
  };

  void Swap(ObjectOverlapInfo* other);

  // implements Message ----------------------------------------------

  ObjectOverlapInfo* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const ObjectOverlapInfo& from);
  void MergeFrom(const ObjectOverlapInfo& from);
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

  // optional .trunk.hadmap.Id id = 1;
  inline bool has_id() const;
  inline void clear_id();
  static const int kIdFieldNumber = 1;
  inline const ::trunk::hadmap::Id& id() const;
  inline ::trunk::hadmap::Id* mutable_id();
  inline ::trunk::hadmap::Id* release_id();
  inline void set_allocated_id(::trunk::hadmap::Id* id);

  // optional .trunk.hadmap.LaneOverlapInfo lane_overlap_info = 2;
  inline bool has_lane_overlap_info() const;
  inline void clear_lane_overlap_info();
  static const int kLaneOverlapInfoFieldNumber = 2;
  inline const ::trunk::hadmap::LaneOverlapInfo& lane_overlap_info() const;
  inline ::trunk::hadmap::LaneOverlapInfo* mutable_lane_overlap_info();
  inline ::trunk::hadmap::LaneOverlapInfo* release_lane_overlap_info();
  inline void set_allocated_lane_overlap_info(::trunk::hadmap::LaneOverlapInfo* lane_overlap_info);

  // optional .trunk.hadmap.SignalOverlapInfo signal_overlap_info = 3;
  inline bool has_signal_overlap_info() const;
  inline void clear_signal_overlap_info();
  static const int kSignalOverlapInfoFieldNumber = 3;
  inline const ::trunk::hadmap::SignalOverlapInfo& signal_overlap_info() const;
  inline ::trunk::hadmap::SignalOverlapInfo* mutable_signal_overlap_info();
  inline ::trunk::hadmap::SignalOverlapInfo* release_signal_overlap_info();
  inline void set_allocated_signal_overlap_info(::trunk::hadmap::SignalOverlapInfo* signal_overlap_info);

  // optional .trunk.hadmap.CrosswalkOverlapInfo crosswalk_overlap_info = 4;
  inline bool has_crosswalk_overlap_info() const;
  inline void clear_crosswalk_overlap_info();
  static const int kCrosswalkOverlapInfoFieldNumber = 4;
  inline const ::trunk::hadmap::CrosswalkOverlapInfo& crosswalk_overlap_info() const;
  inline ::trunk::hadmap::CrosswalkOverlapInfo* mutable_crosswalk_overlap_info();
  inline ::trunk::hadmap::CrosswalkOverlapInfo* release_crosswalk_overlap_info();
  inline void set_allocated_crosswalk_overlap_info(::trunk::hadmap::CrosswalkOverlapInfo* crosswalk_overlap_info);

  // optional .trunk.hadmap.JunctionOverlapInfo junction_overlap_info = 5;
  inline bool has_junction_overlap_info() const;
  inline void clear_junction_overlap_info();
  static const int kJunctionOverlapInfoFieldNumber = 5;
  inline const ::trunk::hadmap::JunctionOverlapInfo& junction_overlap_info() const;
  inline ::trunk::hadmap::JunctionOverlapInfo* mutable_junction_overlap_info();
  inline ::trunk::hadmap::JunctionOverlapInfo* release_junction_overlap_info();
  inline void set_allocated_junction_overlap_info(::trunk::hadmap::JunctionOverlapInfo* junction_overlap_info);

  inline OverlapInfoCase overlap_info_case() const;
  // @@protoc_insertion_point(class_scope:trunk.hadmap.ObjectOverlapInfo)
 private:
  inline void set_has_id();
  inline void clear_has_id();
  inline void set_has_lane_overlap_info();
  inline void set_has_signal_overlap_info();
  inline void set_has_crosswalk_overlap_info();
  inline void set_has_junction_overlap_info();

  inline bool has_overlap_info();
  void clear_overlap_info();
  inline void clear_has_overlap_info();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::trunk::hadmap::Id* id_;
  union OverlapInfoUnion {
    ::trunk::hadmap::LaneOverlapInfo* lane_overlap_info_;
    ::trunk::hadmap::SignalOverlapInfo* signal_overlap_info_;
    ::trunk::hadmap::CrosswalkOverlapInfo* crosswalk_overlap_info_;
    ::trunk::hadmap::JunctionOverlapInfo* junction_overlap_info_;
  } overlap_info_;
  ::google::protobuf::uint32 _oneof_case_[1];

  friend void  protobuf_AddDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5foverlap_2eproto();

  void InitAsDefaultInstance();
  static ObjectOverlapInfo* default_instance_;
};
// -------------------------------------------------------------------

class Overlap : public ::google::protobuf::Message {
 public:
  Overlap();
  virtual ~Overlap();

  Overlap(const Overlap& from);

  inline Overlap& operator=(const Overlap& from) {
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
  static const Overlap& default_instance();

  void Swap(Overlap* other);

  // implements Message ----------------------------------------------

  Overlap* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const Overlap& from);
  void MergeFrom(const Overlap& from);
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

  // optional .trunk.hadmap.Id id = 1;
  inline bool has_id() const;
  inline void clear_id();
  static const int kIdFieldNumber = 1;
  inline const ::trunk::hadmap::Id& id() const;
  inline ::trunk::hadmap::Id* mutable_id();
  inline ::trunk::hadmap::Id* release_id();
  inline void set_allocated_id(::trunk::hadmap::Id* id);

  // repeated .trunk.hadmap.ObjectOverlapInfo object = 2;
  inline int object_size() const;
  inline void clear_object();
  static const int kObjectFieldNumber = 2;
  inline const ::trunk::hadmap::ObjectOverlapInfo& object(int index) const;
  inline ::trunk::hadmap::ObjectOverlapInfo* mutable_object(int index);
  inline ::trunk::hadmap::ObjectOverlapInfo* add_object();
  inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::ObjectOverlapInfo >&
      object() const;
  inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::ObjectOverlapInfo >*
      mutable_object();

  // @@protoc_insertion_point(class_scope:trunk.hadmap.Overlap)
 private:
  inline void set_has_id();
  inline void clear_has_id();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::trunk::hadmap::Id* id_;
  ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::ObjectOverlapInfo > object_;
  friend void  protobuf_AddDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5foverlap_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5foverlap_2eproto();

  void InitAsDefaultInstance();
  static Overlap* default_instance_;
};
// ===================================================================


// ===================================================================

// LaneOverlapInfo

// -------------------------------------------------------------------

// SignalOverlapInfo

// -------------------------------------------------------------------

// CrosswalkOverlapInfo

// -------------------------------------------------------------------

// JunctionOverlapInfo

// -------------------------------------------------------------------

// ObjectOverlapInfo

// optional .trunk.hadmap.Id id = 1;
inline bool ObjectOverlapInfo::has_id() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void ObjectOverlapInfo::set_has_id() {
  _has_bits_[0] |= 0x00000001u;
}
inline void ObjectOverlapInfo::clear_has_id() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void ObjectOverlapInfo::clear_id() {
  if (id_ != NULL) id_->::trunk::hadmap::Id::Clear();
  clear_has_id();
}
inline const ::trunk::hadmap::Id& ObjectOverlapInfo::id() const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.ObjectOverlapInfo.id)
  return id_ != NULL ? *id_ : *default_instance_->id_;
}
inline ::trunk::hadmap::Id* ObjectOverlapInfo::mutable_id() {
  set_has_id();
  if (id_ == NULL) id_ = new ::trunk::hadmap::Id;
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.ObjectOverlapInfo.id)
  return id_;
}
inline ::trunk::hadmap::Id* ObjectOverlapInfo::release_id() {
  clear_has_id();
  ::trunk::hadmap::Id* temp = id_;
  id_ = NULL;
  return temp;
}
inline void ObjectOverlapInfo::set_allocated_id(::trunk::hadmap::Id* id) {
  delete id_;
  id_ = id;
  if (id) {
    set_has_id();
  } else {
    clear_has_id();
  }
  // @@protoc_insertion_point(field_set_allocated:trunk.hadmap.ObjectOverlapInfo.id)
}

// optional .trunk.hadmap.LaneOverlapInfo lane_overlap_info = 2;
inline bool ObjectOverlapInfo::has_lane_overlap_info() const {
  return overlap_info_case() == kLaneOverlapInfo;
}
inline void ObjectOverlapInfo::set_has_lane_overlap_info() {
  _oneof_case_[0] = kLaneOverlapInfo;
}
inline void ObjectOverlapInfo::clear_lane_overlap_info() {
  if (has_lane_overlap_info()) {
    delete overlap_info_.lane_overlap_info_;
    clear_has_overlap_info();
  }
}
inline const ::trunk::hadmap::LaneOverlapInfo& ObjectOverlapInfo::lane_overlap_info() const {
  return has_lane_overlap_info() ? *overlap_info_.lane_overlap_info_
                      : ::trunk::hadmap::LaneOverlapInfo::default_instance();
}
inline ::trunk::hadmap::LaneOverlapInfo* ObjectOverlapInfo::mutable_lane_overlap_info() {
  if (!has_lane_overlap_info()) {
    clear_overlap_info();
    set_has_lane_overlap_info();
    overlap_info_.lane_overlap_info_ = new ::trunk::hadmap::LaneOverlapInfo;
  }
  return overlap_info_.lane_overlap_info_;
}
inline ::trunk::hadmap::LaneOverlapInfo* ObjectOverlapInfo::release_lane_overlap_info() {
  if (has_lane_overlap_info()) {
    clear_has_overlap_info();
    ::trunk::hadmap::LaneOverlapInfo* temp = overlap_info_.lane_overlap_info_;
    overlap_info_.lane_overlap_info_ = NULL;
    return temp;
  } else {
    return NULL;
  }
}
inline void ObjectOverlapInfo::set_allocated_lane_overlap_info(::trunk::hadmap::LaneOverlapInfo* lane_overlap_info) {
  clear_overlap_info();
  if (lane_overlap_info) {
    set_has_lane_overlap_info();
    overlap_info_.lane_overlap_info_ = lane_overlap_info;
  }
}

// optional .trunk.hadmap.SignalOverlapInfo signal_overlap_info = 3;
inline bool ObjectOverlapInfo::has_signal_overlap_info() const {
  return overlap_info_case() == kSignalOverlapInfo;
}
inline void ObjectOverlapInfo::set_has_signal_overlap_info() {
  _oneof_case_[0] = kSignalOverlapInfo;
}
inline void ObjectOverlapInfo::clear_signal_overlap_info() {
  if (has_signal_overlap_info()) {
    delete overlap_info_.signal_overlap_info_;
    clear_has_overlap_info();
  }
}
inline const ::trunk::hadmap::SignalOverlapInfo& ObjectOverlapInfo::signal_overlap_info() const {
  return has_signal_overlap_info() ? *overlap_info_.signal_overlap_info_
                      : ::trunk::hadmap::SignalOverlapInfo::default_instance();
}
inline ::trunk::hadmap::SignalOverlapInfo* ObjectOverlapInfo::mutable_signal_overlap_info() {
  if (!has_signal_overlap_info()) {
    clear_overlap_info();
    set_has_signal_overlap_info();
    overlap_info_.signal_overlap_info_ = new ::trunk::hadmap::SignalOverlapInfo;
  }
  return overlap_info_.signal_overlap_info_;
}
inline ::trunk::hadmap::SignalOverlapInfo* ObjectOverlapInfo::release_signal_overlap_info() {
  if (has_signal_overlap_info()) {
    clear_has_overlap_info();
    ::trunk::hadmap::SignalOverlapInfo* temp = overlap_info_.signal_overlap_info_;
    overlap_info_.signal_overlap_info_ = NULL;
    return temp;
  } else {
    return NULL;
  }
}
inline void ObjectOverlapInfo::set_allocated_signal_overlap_info(::trunk::hadmap::SignalOverlapInfo* signal_overlap_info) {
  clear_overlap_info();
  if (signal_overlap_info) {
    set_has_signal_overlap_info();
    overlap_info_.signal_overlap_info_ = signal_overlap_info;
  }
}

// optional .trunk.hadmap.CrosswalkOverlapInfo crosswalk_overlap_info = 4;
inline bool ObjectOverlapInfo::has_crosswalk_overlap_info() const {
  return overlap_info_case() == kCrosswalkOverlapInfo;
}
inline void ObjectOverlapInfo::set_has_crosswalk_overlap_info() {
  _oneof_case_[0] = kCrosswalkOverlapInfo;
}
inline void ObjectOverlapInfo::clear_crosswalk_overlap_info() {
  if (has_crosswalk_overlap_info()) {
    delete overlap_info_.crosswalk_overlap_info_;
    clear_has_overlap_info();
  }
}
inline const ::trunk::hadmap::CrosswalkOverlapInfo& ObjectOverlapInfo::crosswalk_overlap_info() const {
  return has_crosswalk_overlap_info() ? *overlap_info_.crosswalk_overlap_info_
                      : ::trunk::hadmap::CrosswalkOverlapInfo::default_instance();
}
inline ::trunk::hadmap::CrosswalkOverlapInfo* ObjectOverlapInfo::mutable_crosswalk_overlap_info() {
  if (!has_crosswalk_overlap_info()) {
    clear_overlap_info();
    set_has_crosswalk_overlap_info();
    overlap_info_.crosswalk_overlap_info_ = new ::trunk::hadmap::CrosswalkOverlapInfo;
  }
  return overlap_info_.crosswalk_overlap_info_;
}
inline ::trunk::hadmap::CrosswalkOverlapInfo* ObjectOverlapInfo::release_crosswalk_overlap_info() {
  if (has_crosswalk_overlap_info()) {
    clear_has_overlap_info();
    ::trunk::hadmap::CrosswalkOverlapInfo* temp = overlap_info_.crosswalk_overlap_info_;
    overlap_info_.crosswalk_overlap_info_ = NULL;
    return temp;
  } else {
    return NULL;
  }
}
inline void ObjectOverlapInfo::set_allocated_crosswalk_overlap_info(::trunk::hadmap::CrosswalkOverlapInfo* crosswalk_overlap_info) {
  clear_overlap_info();
  if (crosswalk_overlap_info) {
    set_has_crosswalk_overlap_info();
    overlap_info_.crosswalk_overlap_info_ = crosswalk_overlap_info;
  }
}

// optional .trunk.hadmap.JunctionOverlapInfo junction_overlap_info = 5;
inline bool ObjectOverlapInfo::has_junction_overlap_info() const {
  return overlap_info_case() == kJunctionOverlapInfo;
}
inline void ObjectOverlapInfo::set_has_junction_overlap_info() {
  _oneof_case_[0] = kJunctionOverlapInfo;
}
inline void ObjectOverlapInfo::clear_junction_overlap_info() {
  if (has_junction_overlap_info()) {
    delete overlap_info_.junction_overlap_info_;
    clear_has_overlap_info();
  }
}
inline const ::trunk::hadmap::JunctionOverlapInfo& ObjectOverlapInfo::junction_overlap_info() const {
  return has_junction_overlap_info() ? *overlap_info_.junction_overlap_info_
                      : ::trunk::hadmap::JunctionOverlapInfo::default_instance();
}
inline ::trunk::hadmap::JunctionOverlapInfo* ObjectOverlapInfo::mutable_junction_overlap_info() {
  if (!has_junction_overlap_info()) {
    clear_overlap_info();
    set_has_junction_overlap_info();
    overlap_info_.junction_overlap_info_ = new ::trunk::hadmap::JunctionOverlapInfo;
  }
  return overlap_info_.junction_overlap_info_;
}
inline ::trunk::hadmap::JunctionOverlapInfo* ObjectOverlapInfo::release_junction_overlap_info() {
  if (has_junction_overlap_info()) {
    clear_has_overlap_info();
    ::trunk::hadmap::JunctionOverlapInfo* temp = overlap_info_.junction_overlap_info_;
    overlap_info_.junction_overlap_info_ = NULL;
    return temp;
  } else {
    return NULL;
  }
}
inline void ObjectOverlapInfo::set_allocated_junction_overlap_info(::trunk::hadmap::JunctionOverlapInfo* junction_overlap_info) {
  clear_overlap_info();
  if (junction_overlap_info) {
    set_has_junction_overlap_info();
    overlap_info_.junction_overlap_info_ = junction_overlap_info;
  }
}

inline bool ObjectOverlapInfo::has_overlap_info() {
  return overlap_info_case() != OVERLAP_INFO_NOT_SET;
}
inline void ObjectOverlapInfo::clear_has_overlap_info() {
  _oneof_case_[0] = OVERLAP_INFO_NOT_SET;
}
inline ObjectOverlapInfo::OverlapInfoCase ObjectOverlapInfo::overlap_info_case() const {
  return ObjectOverlapInfo::OverlapInfoCase(_oneof_case_[0]);
}
// -------------------------------------------------------------------

// Overlap

// optional .trunk.hadmap.Id id = 1;
inline bool Overlap::has_id() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void Overlap::set_has_id() {
  _has_bits_[0] |= 0x00000001u;
}
inline void Overlap::clear_has_id() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void Overlap::clear_id() {
  if (id_ != NULL) id_->::trunk::hadmap::Id::Clear();
  clear_has_id();
}
inline const ::trunk::hadmap::Id& Overlap::id() const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.Overlap.id)
  return id_ != NULL ? *id_ : *default_instance_->id_;
}
inline ::trunk::hadmap::Id* Overlap::mutable_id() {
  set_has_id();
  if (id_ == NULL) id_ = new ::trunk::hadmap::Id;
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.Overlap.id)
  return id_;
}
inline ::trunk::hadmap::Id* Overlap::release_id() {
  clear_has_id();
  ::trunk::hadmap::Id* temp = id_;
  id_ = NULL;
  return temp;
}
inline void Overlap::set_allocated_id(::trunk::hadmap::Id* id) {
  delete id_;
  id_ = id;
  if (id) {
    set_has_id();
  } else {
    clear_has_id();
  }
  // @@protoc_insertion_point(field_set_allocated:trunk.hadmap.Overlap.id)
}

// repeated .trunk.hadmap.ObjectOverlapInfo object = 2;
inline int Overlap::object_size() const {
  return object_.size();
}
inline void Overlap::clear_object() {
  object_.Clear();
}
inline const ::trunk::hadmap::ObjectOverlapInfo& Overlap::object(int index) const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.Overlap.object)
  return object_.Get(index);
}
inline ::trunk::hadmap::ObjectOverlapInfo* Overlap::mutable_object(int index) {
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.Overlap.object)
  return object_.Mutable(index);
}
inline ::trunk::hadmap::ObjectOverlapInfo* Overlap::add_object() {
  // @@protoc_insertion_point(field_add:trunk.hadmap.Overlap.object)
  return object_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::ObjectOverlapInfo >&
Overlap::object() const {
  // @@protoc_insertion_point(field_list:trunk.hadmap.Overlap.object)
  return object_;
}
inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::ObjectOverlapInfo >*
Overlap::mutable_object() {
  // @@protoc_insertion_point(field_mutable_list:trunk.hadmap.Overlap.object)
  return &object_;
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

#endif  // PROTOBUF_proto_2fmap_5foverlap_2eproto__INCLUDED
