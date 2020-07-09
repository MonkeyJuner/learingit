# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hadmap_msgs/MapSplineCoeff.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class MapSplineCoeff(genpy.Message):
  _md5sum = "34d58849d5e7cd6a6cb25c0db7a7a880"
  _type = "hadmap_msgs/MapSplineCoeff"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64 start_offset
uint8 degree
uint8 dimension
float64 scale
float64[] spline_knots
geometry_msgs/Point[] spline_points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['start_offset','degree','dimension','scale','spline_knots','spline_points']
  _slot_types = ['float64','uint8','uint8','float64','float64[]','geometry_msgs/Point[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       start_offset,degree,dimension,scale,spline_knots,spline_points

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MapSplineCoeff, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.start_offset is None:
        self.start_offset = 0.
      if self.degree is None:
        self.degree = 0
      if self.dimension is None:
        self.dimension = 0
      if self.scale is None:
        self.scale = 0.
      if self.spline_knots is None:
        self.spline_knots = []
      if self.spline_points is None:
        self.spline_points = []
    else:
      self.start_offset = 0.
      self.degree = 0
      self.dimension = 0
      self.scale = 0.
      self.spline_knots = []
      self.spline_points = []

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
      buff.write(_get_struct_d2Bd().pack(_x.start_offset, _x.degree, _x.dimension, _x.scale))
      length = len(self.spline_knots)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.spline_knots))
      length = len(self.spline_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.spline_points:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.spline_points is None:
        self.spline_points = None
      end = 0
      _x = self
      start = end
      end += 18
      (_x.start_offset, _x.degree, _x.dimension, _x.scale,) = _get_struct_d2Bd().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.spline_knots = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.spline_points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.spline_points.append(val1)
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
      buff.write(_get_struct_d2Bd().pack(_x.start_offset, _x.degree, _x.dimension, _x.scale))
      length = len(self.spline_knots)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.spline_knots.tostring())
      length = len(self.spline_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.spline_points:
        _x = val1
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
      if self.spline_points is None:
        self.spline_points = None
      end = 0
      _x = self
      start = end
      end += 18
      (_x.start_offset, _x.degree, _x.dimension, _x.scale,) = _get_struct_d2Bd().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.spline_knots = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.spline_points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.spline_points.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d2Bd = None
def _get_struct_d2Bd():
    global _struct_d2Bd
    if _struct_d2Bd is None:
        _struct_d2Bd = struct.Struct("<d2Bd")
    return _struct_d2Bd
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d