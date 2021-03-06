# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hadmap_msgs/Section.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import hadmap_msgs.msg

class Section(genpy.Message):
  _md5sum = "9c159119e0202171ae854a4c79c42cd7"
  _type = "hadmap_msgs/Section"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 TYPE_NORMAL = 0
uint8 TYPE_CROSS_BEFORE = 1
uint8 TYPE_CROSS_AFTER = 2
uint8 TYPE_CROSS_BEFORE_AND_AFTER = 3

int32 id
Lane[] lanes
int32[] predecessors
int32[] successors
uint8 type # 

float64[] stop_distances

================================================================================
MSG: hadmap_msgs/Lane
int32 id

Point pt_start
Point pt_end

int32[] predecessors
int32[] successors

Point[] pts_center
Point[] pts_left
Point[] pts_right

float64[] len_integral

float64 speed_limit

## not used
uint8 line_left_type
uint8 line_right_type

## dynamic
int32 resign_id
float32 residual_len

================================================================================
MSG: hadmap_msgs/Point
int32 id

geometry_msgs/Point point

## not used

float32 heading
float64 delta_s
uint8 property

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  # Pseudo-constants
  TYPE_NORMAL = 0
  TYPE_CROSS_BEFORE = 1
  TYPE_CROSS_AFTER = 2
  TYPE_CROSS_BEFORE_AND_AFTER = 3

  __slots__ = ['id','lanes','predecessors','successors','type','stop_distances']
  _slot_types = ['int32','hadmap_msgs/Lane[]','int32[]','int32[]','uint8','float64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,lanes,predecessors,successors,type,stop_distances

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Section, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.lanes is None:
        self.lanes = []
      if self.predecessors is None:
        self.predecessors = []
      if self.successors is None:
        self.successors = []
      if self.type is None:
        self.type = 0
      if self.stop_distances is None:
        self.stop_distances = []
    else:
      self.id = 0
      self.lanes = []
      self.predecessors = []
      self.successors = []
      self.type = 0
      self.stop_distances = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_i().pack(self.id))
      length = len(self.lanes)
      buff.write(_struct_I.pack(length))
      for val1 in self.lanes:
        buff.write(_get_struct_i().pack(val1.id))
        _v1 = val1.pt_start
        buff.write(_get_struct_i().pack(_v1.id))
        _v2 = _v1.point
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v1
        buff.write(_get_struct_fdB().pack(_x.heading, _x.delta_s, _x.property))
        _v3 = val1.pt_end
        buff.write(_get_struct_i().pack(_v3.id))
        _v4 = _v3.point
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v3
        buff.write(_get_struct_fdB().pack(_x.heading, _x.delta_s, _x.property))
        length = len(val1.predecessors)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(struct.pack(pattern, *val1.predecessors))
        length = len(val1.successors)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(struct.pack(pattern, *val1.successors))
        length = len(val1.pts_center)
        buff.write(_struct_I.pack(length))
        for val2 in val1.pts_center:
          buff.write(_get_struct_i().pack(val2.id))
          _v5 = val2.point
          _x = _v5
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _x = val2
          buff.write(_get_struct_fdB().pack(_x.heading, _x.delta_s, _x.property))
        length = len(val1.pts_left)
        buff.write(_struct_I.pack(length))
        for val2 in val1.pts_left:
          buff.write(_get_struct_i().pack(val2.id))
          _v6 = val2.point
          _x = _v6
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _x = val2
          buff.write(_get_struct_fdB().pack(_x.heading, _x.delta_s, _x.property))
        length = len(val1.pts_right)
        buff.write(_struct_I.pack(length))
        for val2 in val1.pts_right:
          buff.write(_get_struct_i().pack(val2.id))
          _v7 = val2.point
          _x = _v7
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _x = val2
          buff.write(_get_struct_fdB().pack(_x.heading, _x.delta_s, _x.property))
        length = len(val1.len_integral)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.len_integral))
        _x = val1
        buff.write(_get_struct_d2Bif().pack(_x.speed_limit, _x.line_left_type, _x.line_right_type, _x.resign_id, _x.residual_len))
      length = len(self.predecessors)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.predecessors))
      length = len(self.successors)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.successors))
      buff.write(_get_struct_B().pack(self.type))
      length = len(self.stop_distances)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.stop_distances))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.lanes is None:
        self.lanes = None
      end = 0
      start = end
      end += 4
      (self.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lanes = []
      for i in range(0, length):
        val1 = hadmap_msgs.msg.Lane()
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        _v8 = val1.pt_start
        start = end
        end += 4
        (_v8.id,) = _get_struct_i().unpack(str[start:end])
        _v9 = _v8.point
        _x = _v9
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = _v8
        start = end
        end += 13
        (_x.heading, _x.delta_s, _x.property,) = _get_struct_fdB().unpack(str[start:end])
        _v10 = val1.pt_end
        start = end
        end += 4
        (_v10.id,) = _get_struct_i().unpack(str[start:end])
        _v11 = _v10.point
        _x = _v11
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = _v10
        start = end
        end += 13
        (_x.heading, _x.delta_s, _x.property,) = _get_struct_fdB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        end += struct.calcsize(pattern)
        val1.predecessors = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        end += struct.calcsize(pattern)
        val1.successors = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.pts_center = []
        for i in range(0, length):
          val2 = hadmap_msgs.msg.Point()
          start = end
          end += 4
          (val2.id,) = _get_struct_i().unpack(str[start:end])
          _v12 = val2.point
          _x = _v12
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _x = val2
          start = end
          end += 13
          (_x.heading, _x.delta_s, _x.property,) = _get_struct_fdB().unpack(str[start:end])
          val1.pts_center.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.pts_left = []
        for i in range(0, length):
          val2 = hadmap_msgs.msg.Point()
          start = end
          end += 4
          (val2.id,) = _get_struct_i().unpack(str[start:end])
          _v13 = val2.point
          _x = _v13
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _x = val2
          start = end
          end += 13
          (_x.heading, _x.delta_s, _x.property,) = _get_struct_fdB().unpack(str[start:end])
          val1.pts_left.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.pts_right = []
        for i in range(0, length):
          val2 = hadmap_msgs.msg.Point()
          start = end
          end += 4
          (val2.id,) = _get_struct_i().unpack(str[start:end])
          _v14 = val2.point
          _x = _v14
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _x = val2
          start = end
          end += 13
          (_x.heading, _x.delta_s, _x.property,) = _get_struct_fdB().unpack(str[start:end])
          val1.pts_right.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.len_integral = struct.unpack(pattern, str[start:end])
        _x = val1
        start = end
        end += 18
        (_x.speed_limit, _x.line_left_type, _x.line_right_type, _x.resign_id, _x.residual_len,) = _get_struct_d2Bif().unpack(str[start:end])
        self.lanes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.predecessors = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.successors = struct.unpack(pattern, str[start:end])
      start = end
      end += 1
      (self.type,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.stop_distances = struct.unpack(pattern, str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_get_struct_i().pack(self.id))
      length = len(self.lanes)
      buff.write(_struct_I.pack(length))
      for val1 in self.lanes:
        buff.write(_get_struct_i().pack(val1.id))
        _v15 = val1.pt_start
        buff.write(_get_struct_i().pack(_v15.id))
        _v16 = _v15.point
        _x = _v16
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v15
        buff.write(_get_struct_fdB().pack(_x.heading, _x.delta_s, _x.property))
        _v17 = val1.pt_end
        buff.write(_get_struct_i().pack(_v17.id))
        _v18 = _v17.point
        _x = _v18
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v17
        buff.write(_get_struct_fdB().pack(_x.heading, _x.delta_s, _x.property))
        length = len(val1.predecessors)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(val1.predecessors.tostring())
        length = len(val1.successors)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(val1.successors.tostring())
        length = len(val1.pts_center)
        buff.write(_struct_I.pack(length))
        for val2 in val1.pts_center:
          buff.write(_get_struct_i().pack(val2.id))
          _v19 = val2.point
          _x = _v19
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _x = val2
          buff.write(_get_struct_fdB().pack(_x.heading, _x.delta_s, _x.property))
        length = len(val1.pts_left)
        buff.write(_struct_I.pack(length))
        for val2 in val1.pts_left:
          buff.write(_get_struct_i().pack(val2.id))
          _v20 = val2.point
          _x = _v20
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _x = val2
          buff.write(_get_struct_fdB().pack(_x.heading, _x.delta_s, _x.property))
        length = len(val1.pts_right)
        buff.write(_struct_I.pack(length))
        for val2 in val1.pts_right:
          buff.write(_get_struct_i().pack(val2.id))
          _v21 = val2.point
          _x = _v21
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _x = val2
          buff.write(_get_struct_fdB().pack(_x.heading, _x.delta_s, _x.property))
        length = len(val1.len_integral)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.len_integral.tostring())
        _x = val1
        buff.write(_get_struct_d2Bif().pack(_x.speed_limit, _x.line_left_type, _x.line_right_type, _x.resign_id, _x.residual_len))
      length = len(self.predecessors)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.predecessors.tostring())
      length = len(self.successors)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.successors.tostring())
      buff.write(_get_struct_B().pack(self.type))
      length = len(self.stop_distances)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.stop_distances.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.lanes is None:
        self.lanes = None
      end = 0
      start = end
      end += 4
      (self.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lanes = []
      for i in range(0, length):
        val1 = hadmap_msgs.msg.Lane()
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        _v22 = val1.pt_start
        start = end
        end += 4
        (_v22.id,) = _get_struct_i().unpack(str[start:end])
        _v23 = _v22.point
        _x = _v23
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = _v22
        start = end
        end += 13
        (_x.heading, _x.delta_s, _x.property,) = _get_struct_fdB().unpack(str[start:end])
        _v24 = val1.pt_end
        start = end
        end += 4
        (_v24.id,) = _get_struct_i().unpack(str[start:end])
        _v25 = _v24.point
        _x = _v25
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = _v24
        start = end
        end += 13
        (_x.heading, _x.delta_s, _x.property,) = _get_struct_fdB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        end += struct.calcsize(pattern)
        val1.predecessors = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        end += struct.calcsize(pattern)
        val1.successors = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.pts_center = []
        for i in range(0, length):
          val2 = hadmap_msgs.msg.Point()
          start = end
          end += 4
          (val2.id,) = _get_struct_i().unpack(str[start:end])
          _v26 = val2.point
          _x = _v26
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _x = val2
          start = end
          end += 13
          (_x.heading, _x.delta_s, _x.property,) = _get_struct_fdB().unpack(str[start:end])
          val1.pts_center.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.pts_left = []
        for i in range(0, length):
          val2 = hadmap_msgs.msg.Point()
          start = end
          end += 4
          (val2.id,) = _get_struct_i().unpack(str[start:end])
          _v27 = val2.point
          _x = _v27
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _x = val2
          start = end
          end += 13
          (_x.heading, _x.delta_s, _x.property,) = _get_struct_fdB().unpack(str[start:end])
          val1.pts_left.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.pts_right = []
        for i in range(0, length):
          val2 = hadmap_msgs.msg.Point()
          start = end
          end += 4
          (val2.id,) = _get_struct_i().unpack(str[start:end])
          _v28 = val2.point
          _x = _v28
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _x = val2
          start = end
          end += 13
          (_x.heading, _x.delta_s, _x.property,) = _get_struct_fdB().unpack(str[start:end])
          val1.pts_right.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.len_integral = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        _x = val1
        start = end
        end += 18
        (_x.speed_limit, _x.line_left_type, _x.line_right_type, _x.resign_id, _x.residual_len,) = _get_struct_d2Bif().unpack(str[start:end])
        self.lanes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.predecessors = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.successors = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 1
      (self.type,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.stop_distances = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_d2Bif = None
def _get_struct_d2Bif():
    global _struct_d2Bif
    if _struct_d2Bif is None:
        _struct_d2Bif = struct.Struct("<d2Bif")
    return _struct_d2Bif
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_fdB = None
def _get_struct_fdB():
    global _struct_fdB
    if _struct_fdB is None:
        _struct_fdB = struct.Struct("<fdB")
    return _struct_fdB
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
