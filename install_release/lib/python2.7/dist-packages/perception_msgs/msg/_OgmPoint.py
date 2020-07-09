# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from perception_msgs/OgmPoint.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class OgmPoint(genpy.Message):
  _md5sum = "e2869d09395abac7946a917ec677fb46"
  _type = "perception_msgs/OgmPoint"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 UNCLASSIFIED = 0
uint8 UNKNOWN_SMALL = 1
uint8 UNKNOWN_BIG = 2
uint8 PEDESTRIAN = 3
uint8 BIKE = 4
uint8 CAR = 5
uint8 TRUCK = 6

float64 x
float64 y
float64 z
float64 p
uint8 type

"""
  # Pseudo-constants
  UNCLASSIFIED = 0
  UNKNOWN_SMALL = 1
  UNKNOWN_BIG = 2
  PEDESTRIAN = 3
  BIKE = 4
  CAR = 5
  TRUCK = 6

  __slots__ = ['x','y','z','p','type']
  _slot_types = ['float64','float64','float64','float64','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       x,y,z,p,type

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OgmPoint, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.z is None:
        self.z = 0.
      if self.p is None:
        self.p = 0.
      if self.type is None:
        self.type = 0
    else:
      self.x = 0.
      self.y = 0.
      self.z = 0.
      self.p = 0.
      self.type = 0

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
      buff.write(_get_struct_4dB().pack(_x.x, _x.y, _x.z, _x.p, _x.type))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 33
      (_x.x, _x.y, _x.z, _x.p, _x.type,) = _get_struct_4dB().unpack(str[start:end])
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
      buff.write(_get_struct_4dB().pack(_x.x, _x.y, _x.z, _x.p, _x.type))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 33
      (_x.x, _x.y, _x.z, _x.p, _x.type,) = _get_struct_4dB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4dB = None
def _get_struct_4dB():
    global _struct_4dB
    if _struct_4dB is None:
        _struct_4dB = struct.Struct("<4dB")
    return _struct_4dB