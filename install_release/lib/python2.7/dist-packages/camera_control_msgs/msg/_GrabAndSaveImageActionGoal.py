# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from camera_control_msgs/GrabAndSaveImageActionGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import camera_control_msgs.msg
import genpy
import actionlib_msgs.msg
import std_msgs.msg

class GrabAndSaveImageActionGoal(genpy.Message):
  _md5sum = "ca187b6ecb464f9dbe4befbffca80547"
  _type = "camera_control_msgs/GrabAndSaveImageActionGoal"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
GrabAndSaveImageGoal goal

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
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: camera_control_msgs/GrabAndSaveImageGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# The 'GrabAndSaveImageAction' has a similar goal as the 'GrabImagesAction' in
# case of only grabbing one image. It additionally contains a string describing
# the full storage path of the image to be captured.
# It wont provide the grabbed image via the result topic. Instead it only
# returns a flag indicating the success.

##########################################
################## GOAL ##################
##########################################

# Flag which indicates if the exposure time is provided and hence should be
# set before grabbing
bool exposure_given

# Only relevant, if exposure_given is true:
# The target exposure time in microseconds. This values can be overriden from
# the brightness search, in case that the flag exposure_fixed is not true.
float32 exposure_time

# Flag which indicates if the gain is provided and hence should be set before
# grabbing
bool gain_given

# Only relevant, if gain_given is true:
# The target gain in percent of the maximal value the camera supports.
# For USB-Cameras, the gain is in dB, for GigE-Cameras it is given in so
# called 'device specific units'. This value can be overriden from the
# brightness search, in case that the gain_fixed flag is set to false.
float32 gain_value

# Flag which indicates if the gamma value is provided and hence should be set
# before grabbing
bool gamma_given

# Only relevant, if gain_given is true:
# Gamma correction of pixel intensity.
# Adjusts the brightness of the pixel values output by the camera's sensor
# to account for a non-linearity in the human perception of brightness or
# of the display system (such as CRT).
float32 gamma_value

# Flag which indicates if the brightness value is provided and hence should
# be set before grabbing
bool brightness_given

# Only relevant, if brightness_given is true:
# The average intensity value of the resulting image. It depends the exposure
# time as well as the gain setting.
float32 brightness_value

# Only relevant, if brightness_given is true:
# If the camera should try reach the desired brightness, at least one of the
# following flags MUST be set. If both are set, the interface will use the
# profile that tries to keep the gain at minimum to reduce white noise.
# 'exposure_auto' will adapt the exposure time to reach the brightness, wheras
# 'gain_auto' does so by adapting the gain. If one of these flags is set to
# false, the connected property will be kept fix.
# In most of the cases trying to reach a target brightness only by varying the
# gain and keeping the exposure time fix is not a good approach, because the
# exposure range is many times higher than the gain range.
bool exposure_auto
bool gain_auto

# File path and image name (including file-extension) to store the grabbed
# image
string img_storage_path_and_name
"""
  __slots__ = ['header','goal_id','goal']
  _slot_types = ['std_msgs/Header','actionlib_msgs/GoalID','camera_control_msgs/GrabAndSaveImageGoal']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,goal_id,goal

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GrabAndSaveImageActionGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_id is None:
        self.goal_id = actionlib_msgs.msg.GoalID()
      if self.goal is None:
        self.goal = camera_control_msgs.msg.GrabAndSaveImageGoal()
    else:
      self.header = std_msgs.msg.Header()
      self.goal_id = actionlib_msgs.msg.GoalID()
      self.goal = camera_control_msgs.msg.GrabAndSaveImageGoal()

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
      buff.write(_get_struct_2I().pack(_x.goal_id.stamp.secs, _x.goal_id.stamp.nsecs))
      _x = self.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_BfBfBfBf2B().pack(_x.goal.exposure_given, _x.goal.exposure_time, _x.goal.gain_given, _x.goal.gain_value, _x.goal.gamma_given, _x.goal.gamma_value, _x.goal.brightness_given, _x.goal.brightness_value, _x.goal.exposure_auto, _x.goal.gain_auto))
      _x = self.goal.img_storage_path_and_name
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_id is None:
        self.goal_id = actionlib_msgs.msg.GoalID()
      if self.goal is None:
        self.goal = camera_control_msgs.msg.GrabAndSaveImageGoal()
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
      (_x.goal_id.stamp.secs, _x.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 22
      (_x.goal.exposure_given, _x.goal.exposure_time, _x.goal.gain_given, _x.goal.gain_value, _x.goal.gamma_given, _x.goal.gamma_value, _x.goal.brightness_given, _x.goal.brightness_value, _x.goal.exposure_auto, _x.goal.gain_auto,) = _get_struct_BfBfBfBf2B().unpack(str[start:end])
      self.goal.exposure_given = bool(self.goal.exposure_given)
      self.goal.gain_given = bool(self.goal.gain_given)
      self.goal.gamma_given = bool(self.goal.gamma_given)
      self.goal.brightness_given = bool(self.goal.brightness_given)
      self.goal.exposure_auto = bool(self.goal.exposure_auto)
      self.goal.gain_auto = bool(self.goal.gain_auto)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.img_storage_path_and_name = str[start:end].decode('utf-8')
      else:
        self.goal.img_storage_path_and_name = str[start:end]
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
      buff.write(_get_struct_2I().pack(_x.goal_id.stamp.secs, _x.goal_id.stamp.nsecs))
      _x = self.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_BfBfBfBf2B().pack(_x.goal.exposure_given, _x.goal.exposure_time, _x.goal.gain_given, _x.goal.gain_value, _x.goal.gamma_given, _x.goal.gamma_value, _x.goal.brightness_given, _x.goal.brightness_value, _x.goal.exposure_auto, _x.goal.gain_auto))
      _x = self.goal.img_storage_path_and_name
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_id is None:
        self.goal_id = actionlib_msgs.msg.GoalID()
      if self.goal is None:
        self.goal = camera_control_msgs.msg.GrabAndSaveImageGoal()
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
      (_x.goal_id.stamp.secs, _x.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 22
      (_x.goal.exposure_given, _x.goal.exposure_time, _x.goal.gain_given, _x.goal.gain_value, _x.goal.gamma_given, _x.goal.gamma_value, _x.goal.brightness_given, _x.goal.brightness_value, _x.goal.exposure_auto, _x.goal.gain_auto,) = _get_struct_BfBfBfBf2B().unpack(str[start:end])
      self.goal.exposure_given = bool(self.goal.exposure_given)
      self.goal.gain_given = bool(self.goal.gain_given)
      self.goal.gamma_given = bool(self.goal.gamma_given)
      self.goal.brightness_given = bool(self.goal.brightness_given)
      self.goal.exposure_auto = bool(self.goal.exposure_auto)
      self.goal.gain_auto = bool(self.goal.gain_auto)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.img_storage_path_and_name = str[start:end].decode('utf-8')
      else:
        self.goal.img_storage_path_and_name = str[start:end]
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
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_BfBfBfBf2B = None
def _get_struct_BfBfBfBf2B():
    global _struct_BfBfBfBf2B
    if _struct_BfBfBfBf2B is None:
        _struct_BfBfBfBf2B = struct.Struct("<BfBfBfBf2B")
    return _struct_BfBfBfBf2B
