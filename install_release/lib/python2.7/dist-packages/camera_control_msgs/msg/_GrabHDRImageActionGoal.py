# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from camera_control_msgs/GrabHDRImageActionGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import camera_control_msgs.msg
import genpy
import actionlib_msgs.msg
import std_msgs.msg

class GrabHDRImageActionGoal(genpy.Message):
  _md5sum = "e5c43c11d71f1742c983b6fc06cc3a87"
  _type = "camera_control_msgs/GrabHDRImageActionGoal"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
GrabHDRImageGoal goal

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
MSG: camera_control_msgs/GrabHDRImageGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
##########################################
################## GOAL ##################
##########################################

########################################## DEPRECATED !!!
uint8 BRIGHTNESS = 1
uint8 EXPOSURE = 2
# select between desired mean brightness or exposure
uint8 target_type
# list of target exposures/brightness -> resulting 'images' list has same size
float32[] target_values
########################################## DEPRECATED !!!

# Flag which indicates if the exposure times are provided and hence should be
# set before grabbing
bool exposure_given

# The list of target exposure time in microseconds.
# It is possible to grab only one image as well as several images with
# different exposure times. This values can be overriden from the brightness
# search, in case that the flag exposure_fixed is not true.
# The interface will only try to set these values if the exposure_given flag is
# set to true.
float32[] exposure_times

# If the exposure_fixed flag is set, the exposure time will stay fix in
# case of a brightness search. Hence the target brightness will be reached
# only by varying the gain
bool exposure_fixed


# Flag which indicates if the brightness values are provided and hence should
# be set before grabbing
bool brightness_given

# The average intensity values of the images. It depends the exposure time
# as well as the gain setting. The interface will only try to reach this
# value if the brightness_given flag is set to true.
float32[] brightness_values

# The brightness_continuous flag controls the auto brightness function.
# If it is set to false, the given brightness will only be reached once.
# Hence changing light conditions lead to changing brightness values.
# If it is set to true, the given brightness will be reached continuously,
# trying to adapt to changing light conditions.
bool brightness_continuous


# Flag which indicates if the gain is provided and hence should be set before
# grabbing
bool gain_given

# The target gain values in percent of the maximal value the camera supports
# For USB-Cameras, the gain is in dB, for GigE-Cameras it is given in so
# called 'device specific units'. This value can be overriden from the
# brightness search, in case that the gain_fixed flag is set to false.
# The interface will only try to reach this values if the gain_given flag is
# set to true.
float32[] gain_values

# If the gain_fixed flag is set, the gain value will stay fix in
# case of a brightness search. Hence the target brightness will be reached
# only by varying the exposure
bool gain_fixed

# Flag which indicates if the gamma value is provided and hence should be set
# before grabbing
bool gamma_given

# Gamma correction of pixel intensity.
# Adjusts the brightness of the pixel values output by the camera's sensor
# to account for a non-linearity in the human perception of brightness or
# of the display system (such as CRT).
# The interface will only try to reach this value if the gamma_given flag is
# set to true.
float32[] gamma_values

"""
  __slots__ = ['header','goal_id','goal']
  _slot_types = ['std_msgs/Header','actionlib_msgs/GoalID','camera_control_msgs/GrabHDRImageGoal']

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
      super(GrabHDRImageActionGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_id is None:
        self.goal_id = actionlib_msgs.msg.GoalID()
      if self.goal is None:
        self.goal = camera_control_msgs.msg.GrabHDRImageGoal()
    else:
      self.header = std_msgs.msg.Header()
      self.goal_id = actionlib_msgs.msg.GoalID()
      self.goal = camera_control_msgs.msg.GrabHDRImageGoal()

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
      buff.write(_get_struct_B().pack(self.goal.target_type))
      length = len(self.goal.target_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.goal.target_values))
      buff.write(_get_struct_B().pack(self.goal.exposure_given))
      length = len(self.goal.exposure_times)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.goal.exposure_times))
      _x = self
      buff.write(_get_struct_2B().pack(_x.goal.exposure_fixed, _x.goal.brightness_given))
      length = len(self.goal.brightness_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.goal.brightness_values))
      _x = self
      buff.write(_get_struct_2B().pack(_x.goal.brightness_continuous, _x.goal.gain_given))
      length = len(self.goal.gain_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.goal.gain_values))
      _x = self
      buff.write(_get_struct_2B().pack(_x.goal.gain_fixed, _x.goal.gamma_given))
      length = len(self.goal.gamma_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.goal.gamma_values))
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
        self.goal = camera_control_msgs.msg.GrabHDRImageGoal()
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
      start = end
      end += 1
      (self.goal.target_type,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.target_values = struct.unpack(pattern, str[start:end])
      start = end
      end += 1
      (self.goal.exposure_given,) = _get_struct_B().unpack(str[start:end])
      self.goal.exposure_given = bool(self.goal.exposure_given)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.exposure_times = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 2
      (_x.goal.exposure_fixed, _x.goal.brightness_given,) = _get_struct_2B().unpack(str[start:end])
      self.goal.exposure_fixed = bool(self.goal.exposure_fixed)
      self.goal.brightness_given = bool(self.goal.brightness_given)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.brightness_values = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 2
      (_x.goal.brightness_continuous, _x.goal.gain_given,) = _get_struct_2B().unpack(str[start:end])
      self.goal.brightness_continuous = bool(self.goal.brightness_continuous)
      self.goal.gain_given = bool(self.goal.gain_given)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.gain_values = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 2
      (_x.goal.gain_fixed, _x.goal.gamma_given,) = _get_struct_2B().unpack(str[start:end])
      self.goal.gain_fixed = bool(self.goal.gain_fixed)
      self.goal.gamma_given = bool(self.goal.gamma_given)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.gamma_values = struct.unpack(pattern, str[start:end])
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
      buff.write(_get_struct_B().pack(self.goal.target_type))
      length = len(self.goal.target_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.goal.target_values.tostring())
      buff.write(_get_struct_B().pack(self.goal.exposure_given))
      length = len(self.goal.exposure_times)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.goal.exposure_times.tostring())
      _x = self
      buff.write(_get_struct_2B().pack(_x.goal.exposure_fixed, _x.goal.brightness_given))
      length = len(self.goal.brightness_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.goal.brightness_values.tostring())
      _x = self
      buff.write(_get_struct_2B().pack(_x.goal.brightness_continuous, _x.goal.gain_given))
      length = len(self.goal.gain_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.goal.gain_values.tostring())
      _x = self
      buff.write(_get_struct_2B().pack(_x.goal.gain_fixed, _x.goal.gamma_given))
      length = len(self.goal.gamma_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.goal.gamma_values.tostring())
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
        self.goal = camera_control_msgs.msg.GrabHDRImageGoal()
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
      start = end
      end += 1
      (self.goal.target_type,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.target_values = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 1
      (self.goal.exposure_given,) = _get_struct_B().unpack(str[start:end])
      self.goal.exposure_given = bool(self.goal.exposure_given)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.exposure_times = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 2
      (_x.goal.exposure_fixed, _x.goal.brightness_given,) = _get_struct_2B().unpack(str[start:end])
      self.goal.exposure_fixed = bool(self.goal.exposure_fixed)
      self.goal.brightness_given = bool(self.goal.brightness_given)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.brightness_values = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 2
      (_x.goal.brightness_continuous, _x.goal.gain_given,) = _get_struct_2B().unpack(str[start:end])
      self.goal.brightness_continuous = bool(self.goal.brightness_continuous)
      self.goal.gain_given = bool(self.goal.gain_given)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.gain_values = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 2
      (_x.goal.gain_fixed, _x.goal.gamma_given,) = _get_struct_2B().unpack(str[start:end])
      self.goal.gain_fixed = bool(self.goal.gain_fixed)
      self.goal.gamma_given = bool(self.goal.gamma_given)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.gamma_values = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
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
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B