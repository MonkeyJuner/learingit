// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: proto/map_crosswalk.proto

#ifndef PROTOBUF_proto_2fmap_5fcrosswalk_2eproto__INCLUDED
#define PROTOBUF_proto_2fmap_5fcrosswalk_2eproto__INCLUDED

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
#include "proto/map_geometry.pb.h"
#include "proto/map_id.pb.h"
// @@protoc_insertion_point(includes)

namespace trunk {
namespace hadmap {

// Internal implementation detail -- do not call these.
void  protobuf_AddDesc_proto_2fmap_5fcrosswalk_2eproto();
void protobuf_AssignDesc_proto_2fmap_5fcrosswalk_2eproto();
void protobuf_ShutdownFile_proto_2fmap_5fcrosswalk_2eproto();

class Crosswalk;

// ===================================================================

class Crosswalk : public ::google::protobuf::Message {
 public:
  Crosswalk();
  virtual ~Crosswalk();

  Crosswalk(const Crosswalk& from);

  inline Crosswalk& operator=(const Crosswalk& from) {
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
  static const Crosswalk& default_instance();

  void Swap(Crosswalk* other);

  // implements Message ----------------------------------------------

  Crosswalk* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const Crosswalk& from);
  void MergeFrom(const Crosswalk& from);
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

  // optional .trunk.hadmap.Polygon polygon = 2;
  inline bool has_polygon() const;
  inline void clear_polygon();
  static const int kPolygonFieldNumber = 2;
  inline const ::trunk::hadmap::Polygon& polygon() const;
  inline ::trunk::hadmap::Polygon* mutable_polygon();
  inline ::trunk::hadmap::Polygon* release_polygon();
  inline void set_allocated_polygon(::trunk::hadmap::Polygon* polygon);

  // repeated .trunk.hadmap.Id overlap_id = 3;
  inline int overlap_id_size() const;
  inline void clear_overlap_id();
  static const int kOverlapIdFieldNumber = 3;
  inline const ::trunk::hadmap::Id& overlap_id(int index) const;
  inline ::trunk::hadmap::Id* mutable_overlap_id(int index);
  inline ::trunk::hadmap::Id* add_overlap_id();
  inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >&
      overlap_id() const;
  inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >*
      mutable_overlap_id();

  // @@protoc_insertion_point(class_scope:trunk.hadmap.Crosswalk)
 private:
  inline void set_has_id();
  inline void clear_has_id();
  inline void set_has_polygon();
  inline void clear_has_polygon();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::trunk::hadmap::Id* id_;
  ::trunk::hadmap::Polygon* polygon_;
  ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id > overlap_id_;
  friend void  protobuf_AddDesc_proto_2fmap_5fcrosswalk_2eproto();
  friend void protobuf_AssignDesc_proto_2fmap_5fcrosswalk_2eproto();
  friend void protobuf_ShutdownFile_proto_2fmap_5fcrosswalk_2eproto();

  void InitAsDefaultInstance();
  static Crosswalk* default_instance_;
};
// ===================================================================


// ===================================================================

// Crosswalk

// optional .trunk.hadmap.Id id = 1;
inline bool Crosswalk::has_id() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void Crosswalk::set_has_id() {
  _has_bits_[0] |= 0x00000001u;
}
inline void Crosswalk::clear_has_id() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void Crosswalk::clear_id() {
  if (id_ != NULL) id_->::trunk::hadmap::Id::Clear();
  clear_has_id();
}
inline const ::trunk::hadmap::Id& Crosswalk::id() const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.Crosswalk.id)
  return id_ != NULL ? *id_ : *default_instance_->id_;
}
inline ::trunk::hadmap::Id* Crosswalk::mutable_id() {
  set_has_id();
  if (id_ == NULL) id_ = new ::trunk::hadmap::Id;
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.Crosswalk.id)
  return id_;
}
inline ::trunk::hadmap::Id* Crosswalk::release_id() {
  clear_has_id();
  ::trunk::hadmap::Id* temp = id_;
  id_ = NULL;
  return temp;
}
inline void Crosswalk::set_allocated_id(::trunk::hadmap::Id* id) {
  delete id_;
  id_ = id;
  if (id) {
    set_has_id();
  } else {
    clear_has_id();
  }
  // @@protoc_insertion_point(field_set_allocated:trunk.hadmap.Crosswalk.id)
}

// optional .trunk.hadmap.Polygon polygon = 2;
inline bool Crosswalk::has_polygon() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void Crosswalk::set_has_polygon() {
  _has_bits_[0] |= 0x00000002u;
}
inline void Crosswalk::clear_has_polygon() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void Crosswalk::clear_polygon() {
  if (polygon_ != NULL) polygon_->::trunk::hadmap::Polygon::Clear();
  clear_has_polygon();
}
inline const ::trunk::hadmap::Polygon& Crosswalk::polygon() const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.Crosswalk.polygon)
  return polygon_ != NULL ? *polygon_ : *default_instance_->polygon_;
}
inline ::trunk::hadmap::Polygon* Crosswalk::mutable_polygon() {
  set_has_polygon();
  if (polygon_ == NULL) polygon_ = new ::trunk::hadmap::Polygon;
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.Crosswalk.polygon)
  return polygon_;
}
inline ::trunk::hadmap::Polygon* Crosswalk::release_polygon() {
  clear_has_polygon();
  ::trunk::hadmap::Polygon* temp = polygon_;
  polygon_ = NULL;
  return temp;
}
inline void Crosswalk::set_allocated_polygon(::trunk::hadmap::Polygon* polygon) {
  delete polygon_;
  polygon_ = polygon;
  if (polygon) {
    set_has_polygon();
  } else {
    clear_has_polygon();
  }
  // @@protoc_insertion_point(field_set_allocated:trunk.hadmap.Crosswalk.polygon)
}

// repeated .trunk.hadmap.Id overlap_id = 3;
inline int Crosswalk::overlap_id_size() const {
  return overlap_id_.size();
}
inline void Crosswalk::clear_overlap_id() {
  overlap_id_.Clear();
}
inline const ::trunk::hadmap::Id& Crosswalk::overlap_id(int index) const {
  // @@protoc_insertion_point(field_get:trunk.hadmap.Crosswalk.overlap_id)
  return overlap_id_.Get(index);
}
inline ::trunk::hadmap::Id* Crosswalk::mutable_overlap_id(int index) {
  // @@protoc_insertion_point(field_mutable:trunk.hadmap.Crosswalk.overlap_id)
  return overlap_id_.Mutable(index);
}
inline ::trunk::hadmap::Id* Crosswalk::add_overlap_id() {
  // @@protoc_insertion_point(field_add:trunk.hadmap.Crosswalk.overlap_id)
  return overlap_id_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >&
Crosswalk::overlap_id() const {
  // @@protoc_insertion_point(field_list:trunk.hadmap.Crosswalk.overlap_id)
  return overlap_id_;
}
inline ::google::protobuf::RepeatedPtrField< ::trunk::hadmap::Id >*
Crosswalk::mutable_overlap_id() {
  // @@protoc_insertion_point(field_mutable_list:trunk.hadmap.Crosswalk.overlap_id)
  return &overlap_id_;
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

#endif  // PROTOBUF_proto_2fmap_5fcrosswalk_2eproto__INCLUDED
