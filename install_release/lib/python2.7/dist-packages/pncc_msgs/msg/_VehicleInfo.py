# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pncc_msgs/VehicleInfo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import pncc_msgs.msg
import std_msgs.msg

class VehicleInfo(genpy.Message):
  _md5sum = "5250ff1105cef33cd8779a4c67c998f2"
  _type = "pncc_msgs/VehicleInfo"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """uint8 MODE_MANUAL = 70
uint8 MODE_AUTO = 71
uint8 MODE_INTERVENED = 72

Header header

float64 vehicle_speed    # m/s
float64 odometer         # m

float64[] wheel_speed    # m/s, start from FL, clockwise.
float64[] wheel_odometer # m, start from FL, clockwise.

float64 wheel_angle_left # degree
float64 wheel_angle_right# degree

float64 yaw_rate         # rad/s
float64 gx               # m/s2
float64 gy               # m/s2

uint8 steering_mode
float64 steering_angle   # degree

uint8 throttle_mode
float64 throttle         # 0.0 ~ 1.0; -1.0 for unavailable.

uint8 brake_mode
float64 brake            # 0.0 ~ 1.0; -1.0 for unavailable.

uint8 acceleration_mode
float64 acceleration     # m/s2

uint8 gear_mode
Gear gear

uint8 turn_light_status
uint8 door_status
uint8 wiper_status
uint8 horn_status
uint8 light_status
uint8 dump_energy_status

uint8 auto_driver_status           #0:auto_driver          1:human intervention 2:udp lost 3:can lost 5:cdc lost
uint16 vehicle_error_status        #contain eight status, each status takes 2 bits          steering_error/gear_error/throttle_error/brake_error/vehicle_error

uint8 emergency_stop_status        #0:normal 1:stop_status

float64 brake_air_pressure_0 # air pressure
float64 brake_air_pressure_1

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
MSG: pncc_msgs/Gear
uint8 GEAR_P = 0
uint8 GEAR_R = 1
uint8 GEAR_N = 2
uint8 GEAR_D = 3
uint8 GEAR_1 = 4
uint8 GEAR_2 = 5
uint8 GEAR_3 = 6
uint8 GEAR_4 = 7
uint8 GEAR_5 = 8
uint8 GEAR_6 = 9
uint8 GEAR_7 = 10
uint8 GEAR_8 = 11
uint8 GEAR_9 = 12
uint8 GEAR_10 = 13
uint8 GEAR_11 = 14
uint8 GEAR_12 = 15


uint8 value
"""
  # Pseudo-constants
  MODE_MANUAL = 70
  MODE_AUTO = 71
  MODE_INTERVENED = 72

  __slots__ = ['header','vehicle_speed','odometer','wheel_speed','wheel_odometer','wheel_angle_left','wheel_angle_right','yaw_rate','gx','gy','steering_mode','steering_angle','throttle_mode','throttle','brake_mode','brake','acceleration_mode','acceleration','gear_mode','gear','turn_light_status','door_status','wiper_status','horn_status','light_status','dump_energy_status','auto_driver_status','vehicle_error_status','emergency_stop_status','brake_air_pressure_0','brake_air_pressure_1']
  _slot_types = ['std_msgs/Header','float64','float64','float64[]','float64[]','float64','float64','float64','float64','float64','uint8','float64','uint8','float64','uint8','float64','uint8','float64','uint8','pncc_msgs/Gear','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint16','uint8','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,vehicle_speed,odometer,wheel_speed,wheel_odometer,wheel_angle_left,wheel_angle_right,yaw_rate,gx,gy,steering_mode,steering_angle,throttle_mode,throttle,brake_mode,brake,acceleration_mode,acceleration,gear_mode,gear,turn_light_status,door_status,wiper_status,horn_status,light_status,dump_energy_status,auto_driver_status,vehicle_error_status,emergency_stop_status,brake_air_pressure_0,brake_air_pressure_1

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VehicleInfo, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.vehicle_speed is None:
        self.vehicle_speed = 0.
      if self.odometer is None:
        self.odometer = 0.
      if self.wheel_speed is None:
        self.wheel_speed = []
      if self.wheel_odometer is None:
        self.wheel_odometer = []
      if self.wheel_angle_left is None:
        self.wheel_angle_left = 0.
      if self.wheel_angle_right is None:
        self.wheel_angle_right = 0.
      if self.yaw_rate is None:
        self.yaw_rate = 0.
      if self.gx is None:
        self.gx = 0.
      if self.gy is None:
        self.gy = 0.
      if self.steering_mode is None:
        self.steering_mode = 0
      if self.steering_angle is None:
        self.steering_angle = 0.
      if self.throttle_mode is None:
        self.throttle_mode = 0
      if self.throttle is None:
        self.throttle = 0.
      if self.brake_mode is None:
        self.brake_mode = 0
      if self.brake is None:
        self.brake = 0.
      if self.acceleration_mode is None:
        self.acceleration_mode = 0
      if self.acceleration is None:
        self.acceleration = 0.
      if self.gear_mode is None:
        self.gear_mode = 0
      if self.gear is None:
        self.gear = pncc_msgs.msg.Gear()
      if self.turn_light_status is None:
        self.turn_light_status = 0
      if self.door_status is None:
        self.door_status = 0
      if self.wiper_status is None:
        self.wiper_status = 0
      if self.horn_status is None:
        self.horn_status = 0
      if self.light_status is None:
        self.light_status = 0
      if self.dump_energy_status is None:
        self.dump_energy_status = 0
      if self.auto_driver_status is None:
        self.auto_driver_status = 0
      if self.vehicle_error_status is None:
        self.vehicle_error_status = 0
      if self.emergency_stop_status is None:
        self.emergency_stop_status = 0
      if self.brake_air_pressure_0 is None:
        self.brake_air_pressure_0 = 0.
      if self.brake_air_pressure_1 is None:
        self.brake_air_pressure_1 = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.vehicle_speed = 0.
      self.odometer = 0.
      self.wheel_speed = []
      self.wheel_odometer = []
      self.wheel_angle_left = 0.
      self.wheel_angle_right = 0.
      self.yaw_rate = 0.
      self.gx = 0.
      self.gy = 0.
      self.steering_mode = 0
      self.steering_angle = 0.
      self.throttle_mode = 0
      self.throttle = 0.
      self.brake_mode = 0
      self.brake = 0.
      self.acceleration_mode = 0
      self.acceleration = 0.
      self.gear_mode = 0
      self.gear = pncc_msgs.msg.Gear()
      self.turn_light_status = 0
      self.door_status = 0
      self.wiper_status = 0
      self.horn_status = 0
      self.light_status = 0
      self.dump_energy_status = 0
      self.auto_driver_status = 0
      self.vehicle_error_status = 0
      self.emergency_stop_status = 0
      self.brake_air_pressure_0 = 0.
      self.brake_air_pressure_1 = 0.

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
      buff.write(_get_struct_2d().pack(_x.vehicle_speed, _x.odometer))
      length = len(self.wheel_speed)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.wheel_speed))
      length = len(self.wheel_odometer)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.wheel_odometer))
      _x = self
      buff.write(_get_struct_5dBdBdBdBd9BHB2d().pack(_x.wheel_angle_left, _x.wheel_angle_right, _x.yaw_rate, _x.gx, _x.gy, _x.steering_mode, _x.steering_angle, _x.throttle_mode, _x.throttle, _x.brake_mode, _x.brake, _x.acceleration_mode, _x.acceleration, _x.gear_mode, _x.gear.value, _x.turn_light_status, _x.door_status, _x.wiper_status, _x.horn_status, _x.light_status, _x.dump_energy_status, _x.auto_driver_status, _x.vehicle_error_status, _x.emergency_stop_status, _x.brake_air_pressure_0, _x.brake_air_pressure_1))
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
      if self.gear is None:
        self.gear = pncc_msgs.msg.Gear()
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
      (_x.vehicle_speed, _x.odometer,) = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.wheel_speed = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.wheel_odometer = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 104
      (_x.wheel_angle_left, _x.wheel_angle_right, _x.yaw_rate, _x.gx, _x.gy, _x.steering_mode, _x.steering_angle, _x.throttle_mode, _x.throttle, _x.brake_mode, _x.brake, _x.acceleration_mode, _x.acceleration, _x.gear_mode, _x.gear.value, _x.turn_light_status, _x.door_status, _x.wiper_status, _x.horn_status, _x.light_status, _x.dump_energy_status, _x.auto_driver_status, _x.vehicle_error_status, _x.emergency_stop_status, _x.brake_air_pressure_0, _x.brake_air_pressure_1,) = _get_struct_5dBdBdBdBd9BHB2d().unpack(str[start:end])
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
      buff.write(_get_struct_2d().pack(_x.vehicle_speed, _x.odometer))
      length = len(self.wheel_speed)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.wheel_speed.tostring())
      length = len(self.wheel_odometer)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.wheel_odometer.tostring())
      _x = self
      buff.write(_get_struct_5dBdBdBdBd9BHB2d().pack(_x.wheel_angle_left, _x.wheel_angle_right, _x.yaw_rate, _x.gx, _x.gy, _x.steering_mode, _x.steering_angle, _x.throttle_mode, _x.throttle, _x.brake_mode, _x.brake, _x.acceleration_mode, _x.acceleration, _x.gear_mode, _x.gear.value, _x.turn_light_status, _x.door_status, _x.wiper_status, _x.horn_status, _x.light_status, _x.dump_energy_status, _x.auto_driver_status, _x.vehicle_error_status, _x.emergency_stop_status, _x.brake_air_pressure_0, _x.brake_air_pressure_1))
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
      if self.gear is None:
        self.gear = pncc_msgs.msg.Gear()
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
      (_x.vehicle_speed, _x.odometer,) = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.wheel_speed = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.wheel_odometer = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 104
      (_x.wheel_angle_left, _x.wheel_angle_right, _x.yaw_rate, _x.gx, _x.gy, _x.steering_mode, _x.steering_angle, _x.throttle_mode, _x.throttle, _x.brake_mode, _x.brake, _x.acceleration_mode, _x.acceleration, _x.gear_mode, _x.gear.value, _x.turn_light_status, _x.door_status, _x.wiper_status, _x.horn_status, _x.light_status, _x.dump_energy_status, _x.auto_driver_status, _x.vehicle_error_status, _x.emergency_stop_status, _x.brake_air_pressure_0, _x.brake_air_pressure_1,) = _get_struct_5dBdBdBdBd9BHB2d().unpack(str[start:end])
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
_struct_5dBdBdBdBd9BHB2d = None
def _get_struct_5dBdBdBdBd9BHB2d():
    global _struct_5dBdBdBdBd9BHB2d
    if _struct_5dBdBdBdBd9BHB2d is None:
        _struct_5dBdBdBdBd9BHB2d = struct.Struct("<5dBdBdBdBd9BHB2d")
    return _struct_5dBdBdBdBd9BHB2d