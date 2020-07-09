// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: proto/map_road.proto

#ifndef PROTOBUF_proto_2fmap_5froad_2eproto__INCLUDED
#define PROTOBUF_proto_2fmap_5froad_2eproto__INCLUDED

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
#include <google/protobuf/generated_enum_reflection.h>
#include <google/protobuf/unknown_field_set.h>
#include "proto/map_id.pb.h"
#include "proto/map_geometry.pb.h"
// @@protoc_insertion_point(includes)

namespace trunk {
namespace hadmap {

// Internal implementation detail -- do not call these.
void  protobuf_AddDesc_proto_2fmap_5froad_2eproto();
void protobuf_AssignDesc_proto_2fmap_5froad_2eproto();
void protobuf_ShutdownFile_proto_2fmap_5froad_2eproto();

class BoundaryEdge;
class BoundaryPolygon;
class RoadSection;
class Road;

enum BoundaryEdge_Type {
  BoundaryEdge_Type_UNKNOWN = 0,
  BoundaryEdge_Type_NORMAL = 1,
  BoundaryEdge_Type_LEFT_BOUNDARY = 2,
  BoundaryEdge_Type_RIGHT_BOUNDARY = 3
};
bool BoundaryEdge_Type_IsValid(int value);
const BoundaryEdge_Type BoundaryEdge_Type_Type_MIN = BoundaryEdge_Type_UNKNOWN;
const BoundaryEdge_Type BoundaryEdge_Type_Type_MAX = BoundaryEdge_Type_RIGHT_BOUNDARY;
const int BoundaryEdge_Type_Type_ARRAYSIZE = BoundaryEdge_Type_Type_MAX + 1;

const ::google::protobuf::EnumDescriptor* BoundaryEdge_Type_descriptor();
inline const ::std::string& BoundaryEdge_Type_Name(BoundaryEdge_Type value) {
  return ::google::protobuf::internal::NameOfEnum(
    BoundaryEdge_Type_descriptor(), value);
}
inline bool BoundaryEdge_Type_Parse(
    const ::std::string& name, BoundaryEdge_Type* value) {
  return ::google::protobuf::internal::ParseNamedEnum<BoundaryEdge_Type>(
    BoundaryEdge_Type_descriptor(), name, value);
}
// ===================================================================

class BoundaryEdge : public ::google::protobuf::Message {
 public:
  BoundaryEdge();
  virtual ~BoundaryEdge();

  BoundaryEdge(const BoundaryEdge& from);

  inline BoundaryEdge& operator=(const BoundaryEdge& from) {
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
  static const BoundaryEdge& default_instance();

  void Swap(BoundaryEdge* other);

  // implements Message ----------------------------------------------

  BoundaryEdge* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const BoundaryEdge& from);
  void MergeFrom(const BoundaryEdge& from);
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

  typedef BoundaryEdge_Type Type;
  static const Type UNKNOWN = BoundaryEdge_Type_UNKNOWN;
  static const Type NORMAL = BoundaryEdge_Type_NORMAL;
  static const Type LEFT_BOUNDARY = BoundaryEdge_Type_LEFT_BOUNDARY;
  static const Type RIGHT_BOUNDARY = BoundaryEdge_Type_RIGHT_BOUNDARY;
  static inline bool Type_IsValid(int value) {
    return BoundaryEdge_Type_IsValid(value);
  }
  static const Type Type_MIN =
    BoundaryEdge_Type_Type_MIN;
  static const Type Type_MAX =
    BoundaryEdge_Type_Type_MAX;
  static const int Type_ARRAYSIZE =
    BoundaryEdge_Type_Type_ARRAYSIZE;
  static inline const ::google::protobuf::EnumDescriptor*
  Type_descriptor() {
    return BoundaryEdge_Type_descriptor();
  }
  static inline const ::std::string& Type_Name(Type value) {
    return BoundaryEdge_Type_Name(value);
  }
  static inline bool Type_Parse(const ::std::string& name,
      Type* value) {
    return BoundaryEdge_Type_Parse(name, value);
  }

  // accessors -------------------------------------------------------

  // optional .trunk.hadmap.Polygon curve = 1;
  inline bool has_curve() const;
  inline void clear_curve();
  static const int kCurveFieldNumber = 1;
  inline const ::trunk::hadmap::Polygon& curve() const;
  inline ::trunk::hadmap::Polygon* mutable_curve();
  inline ::trunk::hadmap::Polygon* release_curve();
  inline void set_allocated_curve(::trunk::hadmap::Polygon* curve);

  // optional .trunk.hadmap.BoundaryEdge.Type type = 2;
  inline bool has_type() const;
  inline void clear_type();
  static const int kTypeFieldNumber = 2;
  inline ::trunk::hadmap::BoundaryEdge_Type type() const;
  inline void set_type(::trunk::hadmap::BoundaryEdge_Type value);

  // @@protoc_insertion_point(class_scope:trunk.hadmap.BoundaryEdge)
 private:
  inline void set_has_curve();
  inline void clear_has_curve();
  inline void set_has_type();
  inline void clear_has_type();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::trunk::hadmap::Polygon* curve_;
  int type_;
  friend void  protobuf_AddDesc_proto_2fmap_5froad_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5froad_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5froad_2eproto();

  void InitAsDefaultInstance();
  static BoundaryEdge* default_instance_;
};
// -------------------------------------------------------------------

class BoundaryPolygon : public ::google::protobuf::Message {
 public:
  BoundaryPolygon();
  virtual ~BoundaryPolygon();

  BoundaryPolygon(const BoundaryPolygon& from);

  inline BoundaryPolygon& operator=(const BoundaryPolygon& from) {
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
  static const BoundaryPolygon& default_instance();

  void Swap(BoundaryPolygon* other);

  // implements Message ----------------------------------------------

  BoundaryPolygon* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const BoundaryPolygon& from);
  void MergeFrom(const BoundaryPolygon& from);
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

  // repeated .trunk.hadmap.BoundaryEdge edge = 1;
  inline int edge_size() const;
  inline void clear_edge();
  static const int kEdgeFieldNumber = 1;
  inline const ::trunk::hadmap::BoundaryEdge& edge(int index) const;
  inline ::trunk::hadmap::BoundaryEdge* mutable_edge(int index);
  inline ::trunk::hadmap::BoundaryEdge* add_edge();
  inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::BoundaryEdge >&
      edge() const;
  inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::BoundaryEdge >*
      mutable_edge();

  // @@protoc_insertion_point(class_scope:trunk.hadmap.BoundaryPolygon)
 private:

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::BoundaryEdge > edge_;
  friend void  protobuf_AddDesc_proto_2fmap_5froad_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5froad_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5froad_2eproto();

  void InitAsDefaultInstance();
  static BoundaryPolygon* default_instance_;
};
// -------------------------------------------------------------------

class RoadSection : public ::google::protobuf::Message {
 public:
  RoadSection();
  virtual ~RoadSection();

  RoadSection(const RoadSection& from);

  inline RoadSection& operator=(const RoadSection& from) {
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
  static const RoadSection& default_instance();

  void Swap(RoadSection* other);

  // implements Message ----------------------------------------------

  RoadSection* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const RoadSection& from);
  void MergeFrom(const RoadSection& from);
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

  // repeated .trunk.hadmap.Id lane_id = 2;
  inline int lane_id_size() const;
  inline void clear_lane_id();
  static const int kLaneIdFieldNumber = 2;
  inline const ::trunk::hadmap::Id& lane_id(int index) const;
  inline ::trunk::hadmap::Id* mutable_lane_id(int index);
  inline ::trunk::hadmap::Id* add_lane_id();
  inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >&
      lane_id() const;
  inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >*
      mutable_lane_id();

  // optional .trunk.hadmap.BoundaryPolygon boundary = 3;
  inline bool has_boundary() const;
  inline void clear_boundary();
  static const int kBoundaryFieldNumber = 3;
  inline const ::trunk::hadmap::BoundaryPolygon& boundary() const;
  inline ::trunk::hadmap::BoundaryPolygon* mutable_boundary();
  inline ::trunk::hadmap::BoundaryPolygon* release_boundary();
  inline void set_allocated_boundary(::trunk::hadmap::BoundaryPolygon* boundary);

  // @@protoc_insertion_point(class_scope:trunk.hadmap.RoadSection)
 private:
  inline void set_has_id();
  inline void clear_has_id();
  inline void set_has_boundary();
  inline void clear_has_boundary();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::trunk::hadmap::Id* id_;
  ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id > lane_id_;
  ::trunk::hadmap::BoundaryPolygon* boundary_;
  friend void  protobuf_AddDesc_proto_2fmap_5froad_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5froad_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5froad_2eproto();

  void InitAsDefaultInstance();
  static RoadSection* default_instance_;
};
// -------------------------------------------------------------------

class Road : public ::google::protobuf::Message {
 public:
  Road();
  virtual ~Road();

  Road(const Road& from);

  inline Road& operator=(const Road& from) {
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
  static const Road& default_instance();

  void Swap(Road* other);

  // implements Message ----------------------------------------------

  Road* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const Road& from);
  void MergeFrom(const Road& from);
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

  // repeated .trunk.hadmap.RoadSection section = 2;
  inline int section_size() const;
  inline void clear_section();
  static const int kSectionFieldNumber = 2;
  inline const ::trunk::hadmap::RoadSection& section(int index) const;
  inline ::trunk::hadmap::RoadSection* mutable_section(int index);
  inline ::trunk::hadmap::RoadSection* add_section();
  inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::RoadSection >&
      section() const;
  inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::RoadSection >*
      mutable_section();

  // optional .trunk.hadmap.Id junction_id = 3;
  inline bool has_junction_id() const;
  inline void clear_junction_id();
  static const int kJunctionIdFieldNumber = 3;
  inline const ::trunk::hadmap::Id& junction_id() const;
  inline ::trunk::hadmap::Id* mutable_junction_id();
  inline ::trunk::hadmap::Id* release_junction_id();
  inline void set_allocated_junction_id(::trunk::hadmap::Id* junction_id);

  // repeated .trunk.hadmap.Id predecessor_id = 4;
  inline int predecessor_id_size() const;
  inline void clear_predecessor_id();
  static const int kPredecessorIdFieldNumber = 4;
  inline const ::trunk::hadmap::Id& predecessor_id(int index) const;
  inline ::trunk::hadmap::Id* mutable_predecessor_id(int index);
  inline ::trunk::hadmap::Id* add_predecessor_id();
  inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >&
      predecessor_id() const;
  inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >*
      mutable_predecessor_id();

  // repeated .trunk.hadmap.Id successor_id = 5;
  inline int successor_id_size() const;
  inline void clear_successor_id();
  static const int kSuccessorIdFieldNumber = 5;
  inline const ::trunk::hadmap::Id& successor_id(int index) const;
  inline ::trunk::hadmap::Id* mutable_successor_id(int index);
  inline ::trunk::hadmap::Id* add_successor_id();
  inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >&
      successor_id() const;
  inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >*
      mutable_successor_id();

  // @@protoc_insertion_point(class_scope:trunk.hadmap.Road)
 private:
  inline void set_has_id();
  inline void clear_has_id();
  inline void set_has_junction_id();
  inline void clear_has_junction_id();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::trunk::hadmap::Id* id_;
  ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::RoadSection > section_;
  ::trunk::hadmap::Id* junction_id_;
  ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id > predecessor_id_;
  ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id > successor_id_;
  friend void  protobuf_AddDesc_proto_2fmap_5froad_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5froad_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5froad_2eproto();

  void InitAsDefaultInstance();
  static Road* default_instance_;
};
// ===================================================================


// ===================================================================

// BoundaryEdge

// optional .trunk.hadmap.Polygon curve = 1;
inline bool BoundaryEdge::has_curve() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void BoundaryEdge::set_has_curve() {
  _has_bits_[0] |= 0x00000001u;
}
inline void BoundaryEdge::clear_has_curve() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void BoundaryEdge::clear_curve() {
  if (curve_ != NULL) curve_->::trunk::hadmap::Polygon::Clear();
  clear_has_curve();
}
inline const ::trunk::hadmap::Polygon& BoundaryEdge::curve() const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.BoundaryEdge.curve)
  return curve_ != NULL ? *curve_ : *default_instance_->curve_;
}
inline ::trunk::hadmap::Polygon* BoundaryEdge::mutable_curve() {
  set_has_curve();
  if (curve_ == NULL) curve_ = new ::trunk::hadmap::Polygon;
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.BoundaryEdge.curve)
  return curve_;
}
inline ::trunk::hadmap::Polygon* BoundaryEdge::release_curve() {
  clear_has_curve();
  ::trunk::hadmap::Polygon* temp = curve_;
  curve_ = NULL;
  return temp;
}
inline void BoundaryEdge::set_allocated_curve(::trunk::hadmap::Polygon* curve) {
  delete curve_;
  curve_ = curve;
  if (curve) {
    set_has_curve();
  } else {
    clear_has_curve();
  }
  // @@protoc_insertion_point(field_set_allocated:trunk.hadmap.BoundaryEdge.curve)
}

// optional .trunk.hadmap.BoundaryEdge.Type type = 2;
inline bool BoundaryEdge::has_type() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void BoundaryEdge::set_has_type() {
  _has_bits_[0] |= 0x00000002u;
}
inline void BoundaryEdge::clear_has_type() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void BoundaryEdge::clear_type() {
  type_ = 0;
  clear_has_type();
}
inline ::trunk::hadmap::BoundaryEdge_Type BoundaryEdge::type() const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.BoundaryEdge.type)
  return static_cast< ::trunk::hadmap::BoundaryEdge_Type >(type_);
}
inline void BoundaryEdge::set_type(::trunk::hadmap::BoundaryEdge_Type value) {
  assert(::trunk::hadmap::BoundaryEdge_Type_IsValid(value));
  set_has_type();
  type_ = value;
  // @@protoc_insertion_point(field_set:trunk.hadmap.BoundaryEdge.type)
}

// -------------------------------------------------------------------

// BoundaryPolygon

// repeated .trunk.hadmap.BoundaryEdge edge = 1;
inline int BoundaryPolygon::edge_size() const {
  return edge_.size();
}
inline void BoundaryPolygon::clear_edge() {
  edge_.Clear();
}
inline const ::trunk::hadmap::BoundaryEdge& BoundaryPolygon::edge(int index) const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.BoundaryPolygon.edge)
  return edge_.Get(index);
}
inline ::trunk::hadmap::BoundaryEdge* BoundaryPolygon::mutable_edge(int index) {
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.BoundaryPolygon.edge)
  return edge_.Mutable(index);
}
inline ::trunk::hadmap::BoundaryEdge* BoundaryPolygon::add_edge() {
  // @@protoc_insertion_point(field_add:trunk.hadmap.BoundaryPolygon.edge)
  return edge_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::BoundaryEdge >&
BoundaryPolygon::edge() const {
  // @@protoc_insertion_point(field_list:trunk.hadmap.BoundaryPolygon.edge)
  return edge_;
}
inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::BoundaryEdge >*
BoundaryPolygon::mutable_edge() {
  // @@protoc_insertion_point(field_mutable_list:trunk.hadmap.BoundaryPolygon.edge)
  return &edge_;
}

// -------------------------------------------------------------------

// RoadSection

// optional .trunk.hadmap.Id id = 1;
inline bool RoadSection::has_id() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void RoadSection::set_has_id() {
  _has_bits_[0] |= 0x00000001u;
}
inline void RoadSection::clear_has_id() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void RoadSection::clear_id() {
  if (id_ != NULL) id_->::trunk::hadmap::Id::Clear();
  clear_has_id();
}
inline const ::trunk::hadmap::Id& RoadSection::id() const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.RoadSection.id)
  return id_ != NULL ? *id_ : *default_instance_->id_;
}
inline ::trunk::hadmap::Id* RoadSection::mutable_id() {
  set_has_id();
  if (id_ == NULL) id_ = new ::trunk::hadmap::Id;
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.RoadSection.id)
  return id_;
}
inline ::trunk::hadmap::Id* RoadSection::release_id() {
  clear_has_id();
  ::trunk::hadmap::Id* temp = id_;
  id_ = NULL;
  return temp;
}
inline void RoadSection::set_allocated_id(::trunk::hadmap::Id* id) {
  delete id_;
  id_ = id;
  if (id) {
    set_has_id();
  } else {
    clear_has_id();
  }
  // @@protoc_insertion_point(field_set_allocated:trunk.hadmap.RoadSection.id)
}

// repeated .trunk.hadmap.Id lane_id = 2;
inline int RoadSection::lane_id_size() const {
  return lane_id_.size();
}
inline void RoadSection::clear_lane_id() {
  lane_id_.Clear();
}
inline const ::trunk::hadmap::Id& RoadSection::lane_id(int index) const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.RoadSection.lane_id)
  return lane_id_.Get(index);
}
inline ::trunk::hadmap::Id* RoadSection::mutable_lane_id(int index) {
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.RoadSection.lane_id)
  return lane_id_.Mutable(index);
}
inline ::trunk::hadmap::Id* RoadSection::add_lane_id() {
  // @@protoc_insertion_point(field_add:trunk.hadmap.RoadSection.lane_id)
  return lane_id_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >&
RoadSection::lane_id() const {
  // @@protoc_insertion_point(field_list:trunk.hadmap.RoadSection.lane_id)
  return lane_id_;
}
inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >*
RoadSection::mutable_lane_id() {
  // @@protoc_insertion_point(field_mutable_list:trunk.hadmap.RoadSection.lane_id)
  return &lane_id_;
}

// optional .trunk.hadmap.BoundaryPolygon boundary = 3;
inline bool RoadSection::has_boundary() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void RoadSection::set_has_boundary() {
  _has_bits_[0] |= 0x00000004u;
}
inline void RoadSection::clear_has_boundary() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void RoadSection::clear_boundary() {
  if (boundary_ != NULL) boundary_->::trunk::hadmap::BoundaryPolygon::Clear();
  clear_has_boundary();
}
inline const ::trunk::hadmap::BoundaryPolygon& RoadSection::boundary() const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.RoadSection.boundary)
  return boundary_ != NULL ? *boundary_ : *default_instance_->boundary_;
}
inline ::trunk::hadmap::BoundaryPolygon* RoadSection::mutable_boundary() {
  set_has_boundary();
  if (boundary_ == NULL) boundary_ = new ::trunk::hadmap::BoundaryPolygon;
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.RoadSection.boundary)
  return boundary_;
}
inline ::trunk::hadmap::BoundaryPolygon* RoadSection::release_boundary() {
  clear_has_boundary();
  ::trunk::hadmap::BoundaryPolygon* temp = boundary_;
  boundary_ = NULL;
  return temp;
}
inline void RoadSection::set_allocated_boundary(::trunk::hadmap::BoundaryPolygon* boundary) {
  delete boundary_;
  boundary_ = boundary;
  if (boundary) {
    set_has_boundary();
  } else {
    clear_has_boundary();
  }
  // @@protoc_insertion_point(field_set_allocated:trunk.hadmap.RoadSection.boundary)
}

// -------------------------------------------------------------------

// Road

// optional .trunk.hadmap.Id id = 1;
inline bool Road::has_id() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void Road::set_has_id() {
  _has_bits_[0] |= 0x00000001u;
}
inline void Road::clear_has_id() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void Road::clear_id() {
  if (id_ != NULL) id_->::trunk::hadmap::Id::Clear();
  clear_has_id();
}
inline const ::trunk::hadmap::Id& Road::id() const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.Road.id)
  return id_ != NULL ? *id_ : *default_instance_->id_;
}
inline ::trunk::hadmap::Id* Road::mutable_id() {
  set_has_id();
  if (id_ == NULL) id_ = new ::trunk::hadmap::Id;
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.Road.id)
  return id_;
}
inline ::trunk::hadmap::Id* Road::release_id() {
  clear_has_id();
  ::trunk::hadmap::Id* temp = id_;
  id_ = NULL;
  return temp;
}
inline void Road::set_allocated_id(::trunk::hadmap::Id* id) {
  delete id_;
  id_ = id;
  if (id) {
    set_has_id();
  } else {
    clear_has_id();
  }
  // @@protoc_insertion_point(field_set_allocated:trunk.hadmap.Road.id)
}

// repeated .trunk.hadmap.RoadSection section = 2;
inline int Road::section_size() const {
  return section_.size();
}
inline void Road::clear_section() {
  section_.Clear();
}
inline const ::trunk::hadmap::RoadSection& Road::section(int index) const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.Road.section)
  return section_.Get(index);
}
inline ::trunk::hadmap::RoadSection* Road::mutable_section(int index) {
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.Road.section)
  return section_.Mutable(index);
}
inline ::trunk::hadmap::RoadSection* Road::add_section() {
  // @@protoc_insertion_point(field_add:trunk.hadmap.Road.section)
  return section_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::RoadSection >&
Road::section() const {
  // @@protoc_insertion_point(field_list:trunk.hadmap.Road.section)
  return section_;
}
inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::RoadSection >*
Road::mutable_section() {
  // @@protoc_insertion_point(field_mutable_list:trunk.hadmap.Road.section)
  return &section_;
}

// optional .trunk.hadmap.Id junction_id = 3;
inline bool Road::has_junction_id() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void Road::set_has_junction_id() {
  _has_bits_[0] |= 0x00000004u;
}
inline void Road::clear_has_junction_id() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void Road::clear_junction_id() {
  if (junction_id_ != NULL) junction_id_->::trunk::hadmap::Id::Clear();
  clear_has_junction_id();
}
inline const ::trunk::hadmap::Id& Road::junction_id() const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.Road.junction_id)
  return junction_id_ != NULL ? *junction_id_ : *default_instance_->junction_id_;
}
inline ::trunk::hadmap::Id* Road::mutable_junction_id() {
  set_has_junction_id();
  if (junction_id_ == NULL) junction_id_ = new ::trunk::hadmap::Id;
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.Road.junction_id)
  return junction_id_;
}
inline ::trunk::hadmap::Id* Road::release_junction_id() {
  clear_has_junction_id();
  ::trunk::hadmap::Id* temp = junction_id_;
  junction_id_ = NULL;
  return temp;
}
inline void Road::set_allocated_junction_id(::trunk::hadmap::Id* junction_id) {
  delete junction_id_;
  junction_id_ = junction_id;
  if (junction_id) {
    set_has_junction_id();
  } else {
    clear_has_junction_id();
  }
  // @@protoc_insertion_point(field_set_allocated:trunk.hadmap.Road.junction_id)
}

// repeated .trunk.hadmap.Id predecessor_id = 4;
inline int Road::predecessor_id_size() const {
  return predecessor_id_.size();
}
inline void Road::clear_predecessor_id() {
  predecessor_id_.Clear();
}
inline const ::trunk::hadmap::Id& Road::predecessor_id(int index) const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.Road.predecessor_id)
  return predecessor_id_.Get(index);
}
inline ::trunk::hadmap::Id* Road::mutable_predecessor_id(int index) {
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.Road.predecessor_id)
  return predecessor_id_.Mutable(index);
}
inline ::trunk::hadmap::Id* Road::add_predecessor_id() {
  // @@protoc_insertion_point(field_add:trunk.hadmap.Road.predecessor_id)
  return predecessor_id_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >&
Road::predecessor_id() const {
  // @@protoc_insertion_point(field_list:trunk.hadmap.Road.predecessor_id)
  return predecessor_id_;
}
inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >*
Road::mutable_predecessor_id() {
  // @@protoc_insertion_point(field_mutable_list:trunk.hadmap.Road.predecessor_id)
  return &predecessor_id_;
}

// repeated .trunk.hadmap.Id successor_id = 5;
inline int Road::successor_id_size() const {
  return successor_id_.size();
}
inline void Road::clear_successor_id() {
  successor_id_.Clear();
}
inline const ::trunk::hadmap::Id& Road::successor_id(int index) const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.Road.successor_id)
  return successor_id_.Get(index);
}
inline ::trunk::hadmap::Id* Road::mutable_successor_id(int index) {
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.Road.successor_id)
  return successor_id_.Mutable(index);
}
inline ::trunk::hadmap::Id* Road::add_successor_id() {
  // @@protoc_insertion_point(field_add:trunk.hadmap.Road.successor_id)
  return successor_id_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >&
Road::successor_id() const {
  // @@protoc_insertion_point(field_list:trunk.hadmap.Road.successor_id)
  return successor_id_;
}
inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >*
Road::mutable_successor_id() {
  // @@protoc_insertion_point(field_mutable_list:trunk.hadmap.Road.successor_id)
  return &successor_id_;
}


// @@protoc_insertion_point(namespace_scope)

}  // namespace hadmap
}  // namespace trunk

#ifndef SWIG
namespace google {
namespace protobuf {

template <> struct is_proto_enum< ::trunk::hadmap::BoundaryEdge_Type> : ::google::protobuf::internal::true_type {};
template <>
inline const EnumDescriptor* GetEnumDescriptor< ::trunk::hadmap::BoundaryEdge_Type>() {
  return ::trunk::hadmap::BoundaryEdge_Type_descriptor();
}

}  // namespace google
}  // namespace protobuf
#endif  // SWIG

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_proto_2fmap_5froad_2eproto__INCLUDED