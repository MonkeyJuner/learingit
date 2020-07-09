# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gnss_msgs/GnssImuInfo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class GnssImuInfo(genpy.Message):
  _md5sum = "11dc712d4d164c4b214a63c633cf7ef7"
  _type = "gnss_msgs/GnssImuInfo"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """int32 POSITION_TYPE_NONE = 0
int32 POSITION_TYPE_FIXEDPOS = 1
int32 POSITION_TYPE_FIXEDHEIGHT = 2
int32 POSITION_TYPE_DOPPLER_VELOCITY = 8
int32 POSITION_TYPE_SINGLE = 16
int32 POSITION_TYPE_PSRDIFF = 17
int32 POSITION_TYPE_SBAS = 18
#int32 POSITION_TYPE_WAAS = 18
int32 POSITION_TYPE_PROPAGATED = 19
int32 POSITION_TYPE_OMNISTAR = 20
int32 POSITION_TYPE_L1_FLOAT = 32
int32 POSITION_TYPE_IONOFREE_FLOAT = 33
int32 POSITION_TYPE_NARROW_FLOAT = 34
int32 POSITION_TYPE_L1_INT = 48
int32 POSITION_TYPE_WIDE_INT = 49
int32 POSITION_TYPE_NARROW_INT = 50
int32 POSITION_TYPE_OMNISTAR_HP = 64
int32 POSITION_TYPE_OMNISTAR_XP = 65
#int32 POSITION_TYPE_PPP_CONVERGING = 68
#int32 POSITION_TYPE_PPP = 69
#int32 POSITION_TYPE_OPERATIONAL = 70
#int32 POSITION_TYPE_WARNING = 71
#int32 POSITION_TYPE_OUT_OF_BOUNDS = 72

Header header

# position
float64 latitude
float64 longitude
float64 altitude

float64 utm_east
float64 utm_north

float32 latitude_std
float32 longitude_std
float32 altitude_std

# velocity
float64 north_velocity
float64 east_velocity
float64 up_velocity

float32 north_velocity_std
float32 east_velocity_std
float32 up_velocity_std

# attitude
float64 roll
float64 pitch
float64 yaw

float64 x
float64 y
float64 z
float64 w

float32 roll_std
float32 pitch_std
float32 yaw_std

#angular velocity
float64 roll_rate
float64 pitch_rate
float64 yaw_rate

#acceleration
float64 ax
float64 ay
float64 az

#INS550D status
#initialization status
uint8 init_position
uint8 init_velocity
uint8 init_pitchroll
uint8 init_yaw

#gps status
int32 gps_status
int32 gps_satellitenum

#wheel speed status
int32 wheelspeed_status

#device status
float64 temperature

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
  POSITION_TYPE_NONE = 0
  POSITION_TYPE_FIXEDPOS = 1
  POSITION_TYPE_FIXEDHEIGHT = 2
  POSITION_TYPE_DOPPLER_VELOCITY = 8
  POSITION_TYPE_SINGLE = 16
  POSITION_TYPE_PSRDIFF = 17
  POSITION_TYPE_SBAS = 18
  POSITION_TYPE_PROPAGATED = 19
  POSITION_TYPE_OMNISTAR = 20
  POSITION_TYPE_L1_FLOAT = 32
  POSITION_TYPE_IONOFREE_FLOAT = 33
  POSITION_TYPE_NARROW_FLOAT = 34
  POSITION_TYPE_L1_INT = 48
  POSITION_TYPE_WIDE_INT = 49
  POSITION_TYPE_NARROW_INT = 50
  POSITION_TYPE_OMNISTAR_HP = 64
  POSITION_TYPE_OMNISTAR_XP = 65

  __slots__ = ['header','latitude','longitude','altitude','utm_east','utm_north','latitude_std','longitude_std','altitude_std','north_velocity','east_velocity','up_velocity','north_velocity_std','east_velocity_std','up_velocity_std','roll','pitch','yaw','x','y','z','w','roll_std','pitch_std','yaw_std','roll_rate','pitch_rate','yaw_rate','ax','ay','az','init_position','init_velocity','init_pitchroll','init_yaw','gps_status','gps_satellitenum','wheelspeed_status','temperature']
  _slot_types = ['std_msgs/Header','float64','float64','float64','float64','float64','float32','float32','float32','float64','float64','float64','float32','float32','float32','float64','float64','float64','float64','float64','float64','float64','float32','float32','float32','float64','float64','float64','float64','float64','float64','uint8','uint8','uint8','uint8','int32','int32','int32','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,latitude,longitude,altitude,utm_east,utm_north,latitude_std,longitude_std,altitude_std,north_velocity,east_velocity,up_velocity,north_velocity_std,east_velocity_std,up_velocity_std,roll,pitch,yaw,x,y,z,w,roll_std,pitch_std,yaw_std,roll_rate,pitch_rate,yaw_rate,ax,ay,az,init_position,init_velocity,init_pitchroll,init_yaw,gps_status,gps_satellitenum,wheelspeed_status,temperature

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GnssImuInfo, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.altitude is None:
        self.altitude = 0.
      if self.utm_east is None:
        self.utm_east = 0.
      if self.utm_north is None:
        self.utm_north = 0.
      if self.latitude_std is None:
        self.latitude_std = 0.
      if self.longitude_std is None:
        self.longitude_std = 0.
      if self.altitude_std is None:
        self.altitude_std = 0.
      if self.north_velocity is None:
        self.north_velocity = 0.
      if self.east_velocity is None:
        self.east_velocity = 0.
      if self.up_velocity is None:
        self.up_velocity = 0.
      if self.north_velocity_std is None:
        self.north_velocity_std = 0.
      if self.east_velocity_std is None:
        self.east_velocity_std = 0.
      if self.up_velocity_std is None:
        self.up_velocity_std = 0.
      if self.roll is None:
        self.roll = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.z is None:
        self.z = 0.
      if self.w is None:
        self.w = 0.
      if self.roll_std is None:
        self.roll_std = 0.
      if self.pitch_std is None:
        self.pitch_std = 0.
      if self.yaw_std is None:
        self.yaw_std = 0.
      if self.roll_rate is None:
        self.roll_rate = 0.
      if self.pitch_rate is None:
        self.pitch_rate = 0.
      if self.yaw_rate is None:
        self.yaw_rate = 0.
      if self.ax is None:
        self.ax = 0.
      if self.ay is None:
        self.ay = 0.
      if self.az is None:
        self.az = 0.
      if self.init_position is None:
        self.init_position = 0
      if self.init_velocity is None:
        self.init_velocity = 0
      if self.init_pitchroll is None:
        self.init_pitchroll = 0
      if self.init_yaw is None:
        self.init_yaw = 0
      if self.gps_status is None:
        self.gps_status = 0
      if self.gps_satellitenum is None:
        self.gps_satellitenum = 0
      if self.wheelspeed_status is None:
        self.wheelspeed_status = 0
      if self.temperature is None:
        self.temperature = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.latitude = 0.
      self.longitude = 0.
      self.altitude = 0.
      self.utm_east = 0.
      self.utm_north = 0.
      self.latitude_std = 0.
      self.longitude_std = 0.
      self.altitude_std = 0.
      self.north_velocity = 0.
      self.east_velocity = 0.
      self.up_velocity = 0.
      self.north_velocity_std = 0.
      self.east_velocity_std = 0.
      self.up_velocity_std = 0.
      self.roll = 0.
      self.pitch = 0.
      self.yaw = 0.
      self.x = 0.
      self.y = 0.
      self.z = 0.
      self.w = 0.
      self.roll_std = 0.
      self.pitch_std = 0.
      self.yaw_std = 0.
      self.roll_rate = 0.
      self.pitch_rate = 0.
      self.yaw_rate = 0.
      self.ax = 0.
      self.ay = 0.
      self.az = 0.
      self.init_position = 0
      self.init_velocity = 0
      self.init_pitchroll = 0
      self.init_yaw = 0
      self.gps_status = 0
      self.gps_satellitenum = 0
      self.wheelspeed_status = 0
      self.temperature = 0.

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
      buff.write(_get_struct_5d3f3d3f7d3f6d4B3id().pack(_x.latitude, _x.longitude, _x.altitude, _x.utm_east, _x.utm_north, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity, _x.east_velocity, _x.up_velocity, _x.north_velocity_std, _x.east_velocity_std, _x.up_velocity_std, _x.roll, _x.pitch, _x.yaw, _x.x, _x.y, _x.z, _x.w, _x.roll_std, _x.pitch_std, _x.yaw_std, _x.roll_rate, _x.pitch_rate, _x.yaw_rate, _x.ax, _x.ay, _x.az, _x.init_position, _x.init_velocity, _x.init_pitchroll, _x.init_yaw, _x.gps_status, _x.gps_satellitenum, _x.wheelspeed_status, _x.temperature))
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
      _x = self
      start = end
      end += 228
      (_x.latitude, _x.longitude, _x.altitude, _x.utm_east, _x.utm_north, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity, _x.east_velocity, _x.up_velocity, _x.north_velocity_std, _x.east_velocity_std, _x.up_velocity_std, _x.roll, _x.pitch, _x.yaw, _x.x, _x.y, _x.z, _x.w, _x.roll_std, _x.pitch_std, _x.yaw_std, _x.roll_rate, _x.pitch_rate, _x.yaw_rate, _x.ax, _x.ay, _x.az, _x.init_position, _x.init_velocity, _x.init_pitchroll, _x.init_yaw, _x.gps_status, _x.gps_satellitenum, _x.wheelspeed_status, _x.temperature,) = _get_struct_5d3f3d3f7d3f6d4B3id().unpack(str[start:end])
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
      buff.write(_get_struct_5d3f3d3f7d3f6d4B3id().pack(_x.latitude, _x.longitude, _x.altitude, _x.utm_east, _x.utm_north, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity, _x.east_velocity, _x.up_velocity, _x.north_velocity_std, _x.east_velocity_std, _x.up_velocity_std, _x.roll, _x.pitch, _x.yaw, _x.x, _x.y, _x.z, _x.w, _x.roll_std, _x.pitch_std, _x.yaw_std, _x.roll_rate, _x.pitch_rate, _x.yaw_rate, _x.ax, _x.ay, _x.az, _x.init_position, _x.init_velocity, _x.init_pitchroll, _x.init_yaw, _x.gps_status, _x.gps_satellitenum, _x.wheelspeed_status, _x.temperature))
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
      _x = self
      start = end
      end += 228
      (_x.latitude, _x.longitude, _x.altitude, _x.utm_east, _x.utm_north, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity, _x.east_velocity, _x.up_velocity, _x.north_velocity_std, _x.east_velocity_std, _x.up_velocity_std, _x.roll, _x.pitch, _x.yaw, _x.x, _x.y, _x.z, _x.w, _x.roll_std, _x.pitch_std, _x.yaw_std, _x.roll_rate, _x.pitch_rate, _x.yaw_rate, _x.ax, _x.ay, _x.az, _x.init_position, _x.init_velocity, _x.init_pitchroll, _x.init_yaw, _x.gps_status, _x.gps_satellitenum, _x.wheelspeed_status, _x.temperature,) = _get_struct_5d3f3d3f7d3f6d4B3id().unpack(str[start:end])
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
_struct_5d3f3d3f7d3f6d4B3id = None
def _get_struct_5d3f3d3f7d3f6d4B3id():
    global _struct_5d3f3d3f7d3f6d4B3id
    if _struct_5d3f3d3f7d3f6d4B3id is None:
        _struct_5d3f3d3f7d3f6d4B3id = struct.Struct("<5d3f3d3f7d3f6d4B3id")
    return _struct_5d3f3d3f7d3f6d4B3id