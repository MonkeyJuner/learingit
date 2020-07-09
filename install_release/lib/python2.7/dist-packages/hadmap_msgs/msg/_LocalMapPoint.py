# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hadmap_msgs/LocalMapPoint.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class LocalMapPoint(genpy.Message):
  _md5sum = "44cd12dbc0c0b0aceac900ebfe326f30"
  _type = "hadmap_msgs/LocalMapPoint"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 TYPE_CROSS = 0
uint8 TYPE_NOT_CROSS = 1

# lane point localization
geometry_msgs/Point point
# heading angle
float32 heading
# now: cross or not
uint8 type
# speed limit
float32 speed_limit

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  # Pseudo-constants
  TYPE_CROSS = 0
  TYPE_NOT_CROSS = 1

  __slots__ = ['point','heading','type','speed_limit']
  _slot_types = ['geometry_msgs/Point','float32','uint8','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       point,heading,type,speed_limit

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LocalMapPoint, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.point is None:
        self.point = geometry_msgs.msg.Point()
      if self.heading is None:
        self.heading = 0.
      if self.type is None:
        self.type = 0
      if self.speed_limit is None:
        self.speed_limit = 0.
    else:
      self.point = geometry_msgs.msg.Point()
      self.heading = 0.
      self.type = 0
      self.speed_limit = 0.

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
      buff.write(_get_struct_3dfBf().pack(_x.point.x, _x.point.y, _x.point.z, _x.heading, _x.type, _x.speed_limit))
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
      end += 33
      (_x.point.x, _x.point.y, _x.point.z, _x.heading, _x.type, _x.speed_limit,) = _get_struct_3dfBf().unpack(str[start:end])
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
      buff.write(_get_struct_3dfBf().pack(_x.point.x, _x.point.y, _x.point.z, _x.heading, _x.type, _x.speed_limit))
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
      end += 33
      (_x.point.x, _x.point.y, _x.point.z, _x.heading, _x.type, _x.speed_limit,) = _get_struct_3dfBf().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3dfBf = None
def _get_struct_3dfBf():
    global _struct_3dfBf
    if _struct_3dfBf is None:
        _struct_3dfBf = struct.Struct("<3dfBf")
    return _struct_3dfBf