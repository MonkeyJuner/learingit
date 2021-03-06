# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from perception_msgs/Objects.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import perception_msgs.msg
import std_msgs.msg

class Objects(genpy.Message):
  _md5sum = "9d6a585f5cfab55beb66a5d4c7fccfda"
  _type = "perception_msgs/Objects"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header

uint64 second
uint64 fra_second
Object[] objects

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: perception_msgs/Object
int32 id
int32 age
int32 prediction_age

geometry_msgs/Point reference_point
geometry_msgs/Point[] reference_points
geometry_msgs/Point bounding_box_center
geometry_msgs/Point bounding_box_size
geometry_msgs/Point object_box_center
geometry_msgs/Point object_box_size

float64 object_box_orientation
float64 object_box_orientation_absolute

geometry_msgs/Point absolute_velocity
geometry_msgs/Point absolute_velocity_sigma
geometry_msgs/Point relative_velocity

geometry_msgs/Point absolute_acceleration
geometry_msgs/Point relative_acceleration

geometry_msgs/Point absolute_yaw_rate
geometry_msgs/Point relative_yaw_rate

int32 classification
int32 classification_age
int32 classification_certainty

geometry_msgs/Point[] contour_points
geometry_msgs/Point[] contour_points_absolute



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['header','second','fra_second','objects']
  _slot_types = ['std_msgs/Header','uint64','uint64','perception_msgs/Object[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,second,fra_second,objects

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Objects, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.second is None:
        self.second = 0
      if self.fra_second is None:
        self.fra_second = 0
      if self.objects is None:
        self.objects = []
    else:
      self.header = std_msgs.msg.Header()
      self.second = 0
      self.fra_second = 0
      self.objects = []

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
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2Q().pack(_x.second, _x.fra_second))
      length = len(self.objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.objects:
        _x = val1
        buff.write(_get_struct_3i().pack(_x.id, _x.age, _x.prediction_age))
        _v1 = val1.reference_point
        _x = _v1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        length = len(val1.reference_points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.reference_points:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v2 = val1.bounding_box_center
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v3 = val1.bounding_box_size
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v4 = val1.object_box_center
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v5 = val1.object_box_size
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_2d().pack(_x.object_box_orientation, _x.object_box_orientation_absolute))
        _v6 = val1.absolute_velocity
        _x = _v6
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v7 = val1.absolute_velocity_sigma
        _x = _v7
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v8 = val1.relative_velocity
        _x = _v8
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v9 = val1.absolute_acceleration
        _x = _v9
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v10 = val1.relative_acceleration
        _x = _v10
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v11 = val1.absolute_yaw_rate
        _x = _v11
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v12 = val1.relative_yaw_rate
        _x = _v12
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_3i().pack(_x.classification, _x.classification_age, _x.classification_certainty))
        length = len(val1.contour_points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.contour_points:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        length = len(val1.contour_points_absolute)
        buff.write(_struct_I.pack(length))
        for val2 in val1.contour_points_absolute:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.objects is None:
        self.objects = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.second, _x.fra_second,) = _get_struct_2Q().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objects = []
      for i in range(0, length):
        val1 = perception_msgs.msg.Object()
        _x = val1
        start = end
        end += 12
        (_x.id, _x.age, _x.prediction_age,) = _get_struct_3i().unpack(str[start:end])
        _v13 = val1.reference_point
        _x = _v13
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.reference_points = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.reference_points.append(val2)
        _v14 = val1.bounding_box_center
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v15 = val1.bounding_box_size
        _x = _v15
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v16 = val1.object_box_center
        _x = _v16
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v17 = val1.object_box_size
        _x = _v17
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 16
        (_x.object_box_orientation, _x.object_box_orientation_absolute,) = _get_struct_2d().unpack(str[start:end])
        _v18 = val1.absolute_velocity
        _x = _v18
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v19 = val1.absolute_velocity_sigma
        _x = _v19
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v20 = val1.relative_velocity
        _x = _v20
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v21 = val1.absolute_acceleration
        _x = _v21
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v22 = val1.relative_acceleration
        _x = _v22
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v23 = val1.absolute_yaw_rate
        _x = _v23
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v24 = val1.relative_yaw_rate
        _x = _v24
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 12
        (_x.classification, _x.classification_age, _x.classification_certainty,) = _get_struct_3i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.contour_points = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.contour_points.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.contour_points_absolute = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.contour_points_absolute.append(val2)
        self.objects.append(val1)
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
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2Q().pack(_x.second, _x.fra_second))
      length = len(self.objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.objects:
        _x = val1
        buff.write(_get_struct_3i().pack(_x.id, _x.age, _x.prediction_age))
        _v25 = val1.reference_point
        _x = _v25
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        length = len(val1.reference_points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.reference_points:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v26 = val1.bounding_box_center
        _x = _v26
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v27 = val1.bounding_box_size
        _x = _v27
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v28 = val1.object_box_center
        _x = _v28
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v29 = val1.object_box_size
        _x = _v29
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_2d().pack(_x.object_box_orientation, _x.object_box_orientation_absolute))
        _v30 = val1.absolute_velocity
        _x = _v30
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v31 = val1.absolute_velocity_sigma
        _x = _v31
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v32 = val1.relative_velocity
        _x = _v32
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v33 = val1.absolute_acceleration
        _x = _v33
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v34 = val1.relative_acceleration
        _x = _v34
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v35 = val1.absolute_yaw_rate
        _x = _v35
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v36 = val1.relative_yaw_rate
        _x = _v36
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_3i().pack(_x.classification, _x.classification_age, _x.classification_certainty))
        length = len(val1.contour_points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.contour_points:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        length = len(val1.contour_points_absolute)
        buff.write(_struct_I.pack(length))
        for val2 in val1.contour_points_absolute:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.objects is None:
        self.objects = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.second, _x.fra_second,) = _get_struct_2Q().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objects = []
      for i in range(0, length):
        val1 = perception_msgs.msg.Object()
        _x = val1
        start = end
        end += 12
        (_x.id, _x.age, _x.prediction_age,) = _get_struct_3i().unpack(str[start:end])
        _v37 = val1.reference_point
        _x = _v37
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.reference_points = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.reference_points.append(val2)
        _v38 = val1.bounding_box_center
        _x = _v38
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v39 = val1.bounding_box_size
        _x = _v39
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v40 = val1.object_box_center
        _x = _v40
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v41 = val1.object_box_size
        _x = _v41
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 16
        (_x.object_box_orientation, _x.object_box_orientation_absolute,) = _get_struct_2d().unpack(str[start:end])
        _v42 = val1.absolute_velocity
        _x = _v42
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v43 = val1.absolute_velocity_sigma
        _x = _v43
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v44 = val1.relative_velocity
        _x = _v44
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v45 = val1.absolute_acceleration
        _x = _v45
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v46 = val1.relative_acceleration
        _x = _v46
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v47 = val1.absolute_yaw_rate
        _x = _v47
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v48 = val1.relative_yaw_rate
        _x = _v48
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 12
        (_x.classification, _x.classification_age, _x.classification_certainty,) = _get_struct_3i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.contour_points = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.contour_points.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.contour_points_absolute = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.contour_points_absolute.append(val2)
        self.objects.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_2Q = None
def _get_struct_2Q():
    global _struct_2Q
    if _struct_2Q is None:
        _struct_2Q = struct.Struct("<2Q")
    return _struct_2Q
_struct_3i = None
def _get_struct_3i():
    global _struct_3i
    if _struct_3i is None:
        _struct_3i = struct.Struct("<3i")
    return _struct_3i
