# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hadmap_msgs/Point.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class Point(genpy.Message):
  _md5sum = "2ab908e483b91e26b3476f90cb2dabd7"
  _type = "hadmap_msgs/Point"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 id

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
  __slots__ = ['id','point','heading','delta_s','property']
  _slot_types = ['int32','geometry_msgs/Point','float32','float64','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,point,heading,delta_s,property

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Point, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.point is None:
        self.point = geometry_msgs.msg.Point()
      if self.heading is None:
        self.heading = 0.
      if self.delta_s is None:
        self.delta_s = 0.
      if self.property is None:
        self.property = 0
    else:
      self.id = 0
      self.point = geometry_msgs.msg.Point()
      self.heading = 0.
      self.delta_s = 0.
      self.property = 0

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
      buff.write(_get_struct_i3dfdB().pack(_x.id, _x.point.x, _x.point.y, _x.point.z, _x.heading, _x.delta_s, _x.property))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.point is None:
        self.point = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 41
      (_x.id, _x.point.x, _x.point.y, _x.point.z, _x.heading, _x.delta_s, _x.property,) = _get_struct_i3dfdB().unpack(str[start:end])
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
      buff.write(_get_struct_i3dfdB().pack(_x.id, _x.point.x, _x.point.y, _x.point.z, _x.heading, _x.delta_s, _x.property))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.point is None:
        self.point = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 41
      (_x.id, _x.point.x, _x.point.y, _x.point.z, _x.heading, _x.delta_s, _x.property,) = _get_struct_i3dfdB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i3dfdB = None
def _get_struct_i3dfdB():
    global _struct_i3dfdB
    if _struct_i3dfdB is None:
        _struct_i3dfdB = struct.Struct("<i3dfdB")
    return _struct_i3dfdB
