# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tos_msgs/VehicleTarget.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class VehicleTarget(genpy.Message):
  _md5sum = "71267172c38fac2a6326d1c7bdcba91e"
  _type = "tos_msgs/VehicleTarget"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """uint8 TAG_ON_ANQIAO = 1
uint8 TAG_ON_CHANGQIAO = 2

uint8 VESSEL_ORIENTATION_FORWARD = 0
uint8 VESSEL_ORIENTATION_BACKWARD = 1

Header header
uint32 task_id
int32 send_packet_id
string chid
geometry_msgs/Point stop_point
int32 stop_tag_id
uint8 stop_tag_type
float64 brake_distance
float64 hadmap_stop_shift
float64 tag_stop_shift
string lane_id

uint8 brake_tag_id_forward
float64 brake_distance_forward

uint8 brake_tag_id_backward
float64 brake_distance_backward

uint8 vessel_orientation



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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  # Pseudo-constants
  TAG_ON_ANQIAO = 1
  TAG_ON_CHANGQIAO = 2
  VESSEL_ORIENTATION_FORWARD = 0
  VESSEL_ORIENTATION_BACKWARD = 1

  __slots__ = ['header','task_id','send_packet_id','chid','stop_point','stop_tag_id','stop_tag_type','brake_distance','hadmap_stop_shift','tag_stop_shift','lane_id','brake_tag_id_forward','brake_distance_forward','brake_tag_id_backward','brake_distance_backward','vessel_orientation']
  _slot_types = ['std_msgs/Header','uint32','int32','string','geometry_msgs/Point','int32','uint8','float64','float64','float64','string','uint8','float64','uint8','float64','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,task_id,send_packet_id,chid,stop_point,stop_tag_id,stop_tag_type,brake_distance,hadmap_stop_shift,tag_stop_shift,lane_id,brake_tag_id_forward,brake_distance_forward,brake_tag_id_backward,brake_distance_backward,vessel_orientation

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VehicleTarget, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.task_id is None:
        self.task_id = 0
      if self.send_packet_id is None:
        self.send_packet_id = 0
      if self.chid is None:
        self.chid = ''
      if self.stop_point is None:
        self.stop_point = geometry_msgs.msg.Point()
      if self.stop_tag_id is None:
        self.stop_tag_id = 0
      if self.stop_tag_type is None:
        self.stop_tag_type = 0
      if self.brake_distance is None:
        self.brake_distance = 0.
      if self.hadmap_stop_shift is None:
        self.hadmap_stop_shift = 0.
      if self.tag_stop_shift is None:
        self.tag_stop_shift = 0.
      if self.lane_id is None:
        self.lane_id = ''
      if self.brake_tag_id_forward is None:
        self.brake_tag_id_forward = 0
      if self.brake_distance_forward is None:
        self.brake_distance_forward = 0.
      if self.brake_tag_id_backward is None:
        self.brake_tag_id_backward = 0
      if self.brake_distance_backward is None:
        self.brake_distance_backward = 0.
      if self.vessel_orientation is None:
        self.vessel_orientation = 0
    else:
      self.header = std_msgs.msg.Header()
      self.task_id = 0
      self.send_packet_id = 0
      self.chid = ''
      self.stop_point = geometry_msgs.msg.Point()
      self.stop_tag_id = 0
      self.stop_tag_type = 0
      self.brake_distance = 0.
      self.hadmap_stop_shift = 0.
      self.tag_stop_shift = 0.
      self.lane_id = ''
      self.brake_tag_id_forward = 0
      self.brake_distance_forward = 0.
      self.brake_tag_id_backward = 0
      self.brake_distance_backward = 0.
      self.vessel_orientation = 0

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
      buff.write(_get_struct_Ii().pack(_x.task_id, _x.send_packet_id))
      _x = self.chid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3diB3d().pack(_x.stop_point.x, _x.stop_point.y, _x.stop_point.z, _x.stop_tag_id, _x.stop_tag_type, _x.brake_distance, _x.hadmap_stop_shift, _x.tag_stop_shift))
      _x = self.lane_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_BdBdB().pack(_x.brake_tag_id_forward, _x.brake_distance_forward, _x.brake_tag_id_backward, _x.brake_distance_backward, _x.vessel_orientation))
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
      if self.stop_point is None:
        self.stop_point = geometry_msgs.msg.Point()
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
      end += 8
      (_x.task_id, _x.send_packet_id,) = _get_struct_Ii().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.chid = str[start:end].decode('utf-8')
      else:
        self.chid = str[start:end]
      _x = self
      start = end
      end += 53
      (_x.stop_point.x, _x.stop_point.y, _x.stop_point.z, _x.stop_tag_id, _x.stop_tag_type, _x.brake_distance, _x.hadmap_stop_shift, _x.tag_stop_shift,) = _get_struct_3diB3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.lane_id = str[start:end].decode('utf-8')
      else:
        self.lane_id = str[start:end]
      _x = self
      start = end
      end += 19
      (_x.brake_tag_id_forward, _x.brake_distance_forward, _x.brake_tag_id_backward, _x.brake_distance_backward, _x.vessel_orientation,) = _get_struct_BdBdB().unpack(str[start:end])
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
      buff.write(_get_struct_Ii().pack(_x.task_id, _x.send_packet_id))
      _x = self.chid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3diB3d().pack(_x.stop_point.x, _x.stop_point.y, _x.stop_point.z, _x.stop_tag_id, _x.stop_tag_type, _x.brake_distance, _x.hadmap_stop_shift, _x.tag_stop_shift))
      _x = self.lane_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_BdBdB().pack(_x.brake_tag_id_forward, _x.brake_distance_forward, _x.brake_tag_id_backward, _x.brake_distance_backward, _x.vessel_orientation))
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
      if self.stop_point is None:
        self.stop_point = geometry_msgs.msg.Point()
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
      end += 8
      (_x.task_id, _x.send_packet_id,) = _get_struct_Ii().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.chid = str[start:end].decode('utf-8')
      else:
        self.chid = str[start:end]
      _x = self
      start = end
      end += 53
      (_x.stop_point.x, _x.stop_point.y, _x.stop_point.z, _x.stop_tag_id, _x.stop_tag_type, _x.brake_distance, _x.hadmap_stop_shift, _x.tag_stop_shift,) = _get_struct_3diB3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.lane_id = str[start:end].decode('utf-8')
      else:
        self.lane_id = str[start:end]
      _x = self
      start = end
      end += 19
      (_x.brake_tag_id_forward, _x.brake_distance_forward, _x.brake_tag_id_backward, _x.brake_distance_backward, _x.vessel_orientation,) = _get_struct_BdBdB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_Ii = None
def _get_struct_Ii():
    global _struct_Ii
    if _struct_Ii is None:
        _struct_Ii = struct.Struct("<Ii")
    return _struct_Ii
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3diB3d = None
def _get_struct_3diB3d():
    global _struct_3diB3d
    if _struct_3diB3d is None:
        _struct_3diB3d = struct.Struct("<3diB3d")
    return _struct_3diB3d
_struct_BdBdB = None
def _get_struct_BdBdB():
    global _struct_BdBdB
    if _struct_BdBdB is None:
        _struct_BdBdB = struct.Struct("<BdBdB")
    return _struct_BdBdB
