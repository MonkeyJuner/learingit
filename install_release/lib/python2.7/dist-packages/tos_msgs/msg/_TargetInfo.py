# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tos_msgs/TargetInfo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import tos_msgs.msg

class TargetInfo(genpy.Message):
  _md5sum = "677d252aa7d6e6bd4ba970587d5907b8"
  _type = "tos_msgs/TargetInfo"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# target type
uint8 NORMAL_YARD_CRANE         = 0
uint8 AUTOMATIC_YARD_CRANE      = 1
uint8 GANTRY_CRANE      	= 2
uint8 TRANSFER_ZONE      	= 3

# target
uint8 target_type

# target info
string section
string bay
string transfer_zone

string gantry_crane_id
string lane_id

# container
Container container

# move stage
string move_stage

# for test
string ppos

================================================================================
MSG: tos_msgs/Container
string container_id
uint8 container_size
int32 container_weight
uint8 container_pos 
"""
  # Pseudo-constants
  NORMAL_YARD_CRANE = 0
  AUTOMATIC_YARD_CRANE = 1
  GANTRY_CRANE = 2
  TRANSFER_ZONE = 3

  __slots__ = ['target_type','section','bay','transfer_zone','gantry_crane_id','lane_id','container','move_stage','ppos']
  _slot_types = ['uint8','string','string','string','string','string','tos_msgs/Container','string','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       target_type,section,bay,transfer_zone,gantry_crane_id,lane_id,container,move_stage,ppos

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TargetInfo, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.target_type is None:
        self.target_type = 0
      if self.section is None:
        self.section = ''
      if self.bay is None:
        self.bay = ''
      if self.transfer_zone is None:
        self.transfer_zone = ''
      if self.gantry_crane_id is None:
        self.gantry_crane_id = ''
      if self.lane_id is None:
        self.lane_id = ''
      if self.container is None:
        self.container = tos_msgs.msg.Container()
      if self.move_stage is None:
        self.move_stage = ''
      if self.ppos is None:
        self.ppos = ''
    else:
      self.target_type = 0
      self.section = ''
      self.bay = ''
      self.transfer_zone = ''
      self.gantry_crane_id = ''
      self.lane_id = ''
      self.container = tos_msgs.msg.Container()
      self.move_stage = ''
      self.ppos = ''

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
      buff.write(_get_struct_B().pack(self.target_type))
      _x = self.section
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.bay
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.transfer_zone
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.gantry_crane_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.lane_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.container.container_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_BiB().pack(_x.container.container_size, _x.container.container_weight, _x.container.container_pos))
      _x = self.move_stage
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.ppos
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.container is None:
        self.container = tos_msgs.msg.Container()
      end = 0
      start = end
      end += 1
      (self.target_type,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.section = str[start:end].decode('utf-8')
      else:
        self.section = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.bay = str[start:end].decode('utf-8')
      else:
        self.bay = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.transfer_zone = str[start:end].decode('utf-8')
      else:
        self.transfer_zone = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gantry_crane_id = str[start:end].decode('utf-8')
      else:
        self.gantry_crane_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.lane_id = str[start:end].decode('utf-8')
      else:
        self.lane_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.container.container_id = str[start:end].decode('utf-8')
      else:
        self.container.container_id = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.container.container_size, _x.container.container_weight, _x.container.container_pos,) = _get_struct_BiB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.move_stage = str[start:end].decode('utf-8')
      else:
        self.move_stage = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ppos = str[start:end].decode('utf-8')
      else:
        self.ppos = str[start:end]
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
      buff.write(_get_struct_B().pack(self.target_type))
      _x = self.section
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.bay
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.transfer_zone
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.gantry_crane_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.lane_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.container.container_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_BiB().pack(_x.container.container_size, _x.container.container_weight, _x.container.container_pos))
      _x = self.move_stage
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.ppos
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.container is None:
        self.container = tos_msgs.msg.Container()
      end = 0
      start = end
      end += 1
      (self.target_type,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.section = str[start:end].decode('utf-8')
      else:
        self.section = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.bay = str[start:end].decode('utf-8')
      else:
        self.bay = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.transfer_zone = str[start:end].decode('utf-8')
      else:
        self.transfer_zone = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gantry_crane_id = str[start:end].decode('utf-8')
      else:
        self.gantry_crane_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.lane_id = str[start:end].decode('utf-8')
      else:
        self.lane_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.container.container_id = str[start:end].decode('utf-8')
      else:
        self.container.container_id = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.container.container_size, _x.container.container_weight, _x.container.container_pos,) = _get_struct_BiB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.move_stage = str[start:end].decode('utf-8')
      else:
        self.move_stage = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ppos = str[start:end].decode('utf-8')
      else:
        self.ppos = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_BiB = None
def _get_struct_BiB():
    global _struct_BiB
    if _struct_BiB is None:
        _struct_BiB = struct.Struct("<BiB")
    return _struct_BiB
