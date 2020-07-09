# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tos_msgs/VehicleStopAccurate.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class VehicleStopAccurate(genpy.Message):
  _md5sum = "e35e264833827db6110049455f7aabe3"
  _type = "tos_msgs/VehicleStopAccurate"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """uint8 STOP_UNKNOWN = 0
uint8 STOP_FOR_MAP = 1
uint8 STOP_FOR_TAG = 2
uint8 STOP_FOR_PLC = 3

Header header
uint32 task_id
string chid
uint8 stop_for
int32 send_packet_id
int32 stop_tag_id
uint8 stop_tag_type
float64 stop_offset

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
"""
  # Pseudo-constants
  STOP_UNKNOWN = 0
  STOP_FOR_MAP = 1
  STOP_FOR_TAG = 2
  STOP_FOR_PLC = 3

  __slots__ = ['header','task_id','chid','stop_for','send_packet_id','stop_tag_id','stop_tag_type','stop_offset']
  _slot_types = ['std_msgs/Header','uint32','string','uint8','int32','int32','uint8','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,task_id,chid,stop_for,send_packet_id,stop_tag_id,stop_tag_type,stop_offset

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VehicleStopAccurate, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.task_id is None:
        self.task_id = 0
      if self.chid is None:
        self.chid = ''
      if self.stop_for is None:
        self.stop_for = 0
      if self.send_packet_id is None:
        self.send_packet_id = 0
      if self.stop_tag_id is None:
        self.stop_tag_id = 0
      if self.stop_tag_type is None:
        self.stop_tag_type = 0
      if self.stop_offset is None:
        self.stop_offset = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.task_id = 0
      self.chid = ''
      self.stop_for = 0
      self.send_packet_id = 0
      self.stop_tag_id = 0
      self.stop_tag_type = 0
      self.stop_offset = 0.

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
      buff.write(_get_struct_I().pack(self.task_id))
      _x = self.chid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B2iBd().pack(_x.stop_for, _x.send_packet_id, _x.stop_tag_id, _x.stop_tag_type, _x.stop_offset))
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
      start = end
      end += 4
      (self.task_id,) = _get_struct_I().unpack(str[start:end])
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
      end += 18
      (_x.stop_for, _x.send_packet_id, _x.stop_tag_id, _x.stop_tag_type, _x.stop_offset,) = _get_struct_B2iBd().unpack(str[start:end])
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
      buff.write(_get_struct_I().pack(self.task_id))
      _x = self.chid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B2iBd().pack(_x.stop_for, _x.send_packet_id, _x.stop_tag_id, _x.stop_tag_type, _x.stop_offset))
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
      start = end
      end += 4
      (self.task_id,) = _get_struct_I().unpack(str[start:end])
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
      end += 18
      (_x.stop_for, _x.send_packet_id, _x.stop_tag_id, _x.stop_tag_type, _x.stop_offset,) = _get_struct_B2iBd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B2iBd = None
def _get_struct_B2iBd():
    global _struct_B2iBd
    if _struct_B2iBd is None:
        _struct_B2iBd = struct.Struct("<B2iBd")
    return _struct_B2iBd