# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gnss_msgs/GnssInfo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import sensor_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class GnssInfo(genpy.Message):
  _md5sum = "29d5c65ea6c74ae8feb75899be012a37"
  _type = "gnss_msgs/GnssInfo"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header

geometry_msgs/Vector3 gnss_velocity
geometry_msgs/Vector3 gnss_orientation
sensor_msgs/NavSatFix gnss_position

float64 utm_east
float64 utm_north

float32 latitude_std
float32 longitude_std
float32 altitude_std

float32 north_velocity_std
float32 east_velocity_std
float32 up_velocity_std

float32 roll_std
float32 pitch_std
float32 yaw_std

uint8 gps_status
uint8 sate_num

# utc time
uint16 year
uint8 month
uint8 day
uint8 hour
uint8 minuter
float32 second

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: sensor_msgs/NavSatFix
# Navigation Satellite fix for any Global Navigation Satellite System
#
# Specified using the WGS 84 reference ellipsoid

# header.stamp specifies the ROS time for this measurement (the
#        corresponding satellite time may be reported using the
#        sensor_msgs/TimeReference message).
#
# header.frame_id is the frame of reference reported by the satellite
#        receiver, usually the location of the antenna.  This is a
#        Euclidean frame relative to the vehicle, not a reference
#        ellipsoid.
Header header

# satellite fix status information
NavSatStatus status

# Latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid
# (quiet NaN if no altitude is available).
float64 altitude

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.
#
# Beware: this coordinate system exhibits singularities at the poles.

float64[9] position_covariance

# If the covariance of the fix is known, fill it in completely. If the
# GPS receiver provides the variance of each measurement, put them
# along the diagonal. If only Dilution of Precision is available,
# estimate an approximate covariance from that.

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3

uint8 position_covariance_type

================================================================================
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service
"""
  __slots__ = ['header','gnss_velocity','gnss_orientation','gnss_position','utm_east','utm_north','latitude_std','longitude_std','altitude_std','north_velocity_std','east_velocity_std','up_velocity_std','roll_std','pitch_std','yaw_std','gps_status','sate_num','year','month','day','hour','minuter','second']
  _slot_types = ['std_msgs/Header','geometry_msgs/Vector3','geometry_msgs/Vector3','sensor_msgs/NavSatFix','float64','float64','float32','float32','float32','float32','float32','float32','float32','float32','float32','uint8','uint8','uint16','uint8','uint8','uint8','uint8','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,gnss_velocity,gnss_orientation,gnss_position,utm_east,utm_north,latitude_std,longitude_std,altitude_std,north_velocity_std,east_velocity_std,up_velocity_std,roll_std,pitch_std,yaw_std,gps_status,sate_num,year,month,day,hour,minuter,second

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GnssInfo, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.gnss_velocity is None:
        self.gnss_velocity = geometry_msgs.msg.Vector3()
      if self.gnss_orientation is None:
        self.gnss_orientation = geometry_msgs.msg.Vector3()
      if self.gnss_position is None:
        self.gnss_position = sensor_msgs.msg.NavSatFix()
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
      if self.north_velocity_std is None:
        self.north_velocity_std = 0.
      if self.east_velocity_std is None:
        self.east_velocity_std = 0.
      if self.up_velocity_std is None:
        self.up_velocity_std = 0.
      if self.roll_std is None:
        self.roll_std = 0.
      if self.pitch_std is None:
        self.pitch_std = 0.
      if self.yaw_std is None:
        self.yaw_std = 0.
      if self.gps_status is None:
        self.gps_status = 0
      if self.sate_num is None:
        self.sate_num = 0
      if self.year is None:
        self.year = 0
      if self.month is None:
        self.month = 0
      if self.day is None:
        self.day = 0
      if self.hour is None:
        self.hour = 0
      if self.minuter is None:
        self.minuter = 0
      if self.second is None:
        self.second = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.gnss_velocity = geometry_msgs.msg.Vector3()
      self.gnss_orientation = geometry_msgs.msg.Vector3()
      self.gnss_position = sensor_msgs.msg.NavSatFix()
      self.utm_east = 0.
      self.utm_north = 0.
      self.latitude_std = 0.
      self.longitude_std = 0.
      self.altitude_std = 0.
      self.north_velocity_std = 0.
      self.east_velocity_std = 0.
      self.up_velocity_std = 0.
      self.roll_std = 0.
      self.pitch_std = 0.
      self.yaw_std = 0.
      self.gps_status = 0
      self.sate_num = 0
      self.year = 0
      self.month = 0
      self.day = 0
      self.hour = 0
      self.minuter = 0
      self.second = 0.

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
      buff.write(_get_struct_6d3I().pack(_x.gnss_velocity.x, _x.gnss_velocity.y, _x.gnss_velocity.z, _x.gnss_orientation.x, _x.gnss_orientation.y, _x.gnss_orientation.z, _x.gnss_position.header.seq, _x.gnss_position.header.stamp.secs, _x.gnss_position.header.stamp.nsecs))
      _x = self.gnss_position.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_bH3d().pack(_x.gnss_position.status.status, _x.gnss_position.status.service, _x.gnss_position.latitude, _x.gnss_position.longitude, _x.gnss_position.altitude))
      buff.write(_get_struct_9d().pack(*self.gnss_position.position_covariance))
      _x = self
      buff.write(_get_struct_B2d9f2BH4Bf().pack(_x.gnss_position.position_covariance_type, _x.utm_east, _x.utm_north, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity_std, _x.east_velocity_std, _x.up_velocity_std, _x.roll_std, _x.pitch_std, _x.yaw_std, _x.gps_status, _x.sate_num, _x.year, _x.month, _x.day, _x.hour, _x.minuter, _x.second))
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
      if self.gnss_velocity is None:
        self.gnss_velocity = geometry_msgs.msg.Vector3()
      if self.gnss_orientation is None:
        self.gnss_orientation = geometry_msgs.msg.Vector3()
      if self.gnss_position is None:
        self.gnss_position = sensor_msgs.msg.NavSatFix()
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
      end += 60
      (_x.gnss_velocity.x, _x.gnss_velocity.y, _x.gnss_velocity.z, _x.gnss_orientation.x, _x.gnss_orientation.y, _x.gnss_orientation.z, _x.gnss_position.header.seq, _x.gnss_position.header.stamp.secs, _x.gnss_position.header.stamp.nsecs,) = _get_struct_6d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gnss_position.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.gnss_position.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 27
      (_x.gnss_position.status.status, _x.gnss_position.status.service, _x.gnss_position.latitude, _x.gnss_position.longitude, _x.gnss_position.altitude,) = _get_struct_bH3d().unpack(str[start:end])
      start = end
      end += 72
      self.gnss_position.position_covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 65
      (_x.gnss_position.position_covariance_type, _x.utm_east, _x.utm_north, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity_std, _x.east_velocity_std, _x.up_velocity_std, _x.roll_std, _x.pitch_std, _x.yaw_std, _x.gps_status, _x.sate_num, _x.year, _x.month, _x.day, _x.hour, _x.minuter, _x.second,) = _get_struct_B2d9f2BH4Bf().unpack(str[start:end])
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
      buff.write(_get_struct_6d3I().pack(_x.gnss_velocity.x, _x.gnss_velocity.y, _x.gnss_velocity.z, _x.gnss_orientation.x, _x.gnss_orientation.y, _x.gnss_orientation.z, _x.gnss_position.header.seq, _x.gnss_position.header.stamp.secs, _x.gnss_position.header.stamp.nsecs))
      _x = self.gnss_position.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_bH3d().pack(_x.gnss_position.status.status, _x.gnss_position.status.service, _x.gnss_position.latitude, _x.gnss_position.longitude, _x.gnss_position.altitude))
      buff.write(self.gnss_position.position_covariance.tostring())
      _x = self
      buff.write(_get_struct_B2d9f2BH4Bf().pack(_x.gnss_position.position_covariance_type, _x.utm_east, _x.utm_north, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity_std, _x.east_velocity_std, _x.up_velocity_std, _x.roll_std, _x.pitch_std, _x.yaw_std, _x.gps_status, _x.sate_num, _x.year, _x.month, _x.day, _x.hour, _x.minuter, _x.second))
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
      if self.gnss_velocity is None:
        self.gnss_velocity = geometry_msgs.msg.Vector3()
      if self.gnss_orientation is None:
        self.gnss_orientation = geometry_msgs.msg.Vector3()
      if self.gnss_position is None:
        self.gnss_position = sensor_msgs.msg.NavSatFix()
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
      end += 60
      (_x.gnss_velocity.x, _x.gnss_velocity.y, _x.gnss_velocity.z, _x.gnss_orientation.x, _x.gnss_orientation.y, _x.gnss_orientation.z, _x.gnss_position.header.seq, _x.gnss_position.header.stamp.secs, _x.gnss_position.header.stamp.nsecs,) = _get_struct_6d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gnss_position.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.gnss_position.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 27
      (_x.gnss_position.status.status, _x.gnss_position.status.service, _x.gnss_position.latitude, _x.gnss_position.longitude, _x.gnss_position.altitude,) = _get_struct_bH3d().unpack(str[start:end])
      start = end
      end += 72
      self.gnss_position.position_covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 65
      (_x.gnss_position.position_covariance_type, _x.utm_east, _x.utm_north, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity_std, _x.east_velocity_std, _x.up_velocity_std, _x.roll_std, _x.pitch_std, _x.yaw_std, _x.gps_status, _x.sate_num, _x.year, _x.month, _x.day, _x.hour, _x.minuter, _x.second,) = _get_struct_B2d9f2BH4Bf().unpack(str[start:end])
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
_struct_bH3d = None
def _get_struct_bH3d():
    global _struct_bH3d
    if _struct_bH3d is None:
        _struct_bH3d = struct.Struct("<bH3d")
    return _struct_bH3d
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d
_struct_6d3I = None
def _get_struct_6d3I():
    global _struct_6d3I
    if _struct_6d3I is None:
        _struct_6d3I = struct.Struct("<6d3I")
    return _struct_6d3I
_struct_B2d9f2BH4Bf = None
def _get_struct_B2d9f2BH4Bf():
    global _struct_B2d9f2BH4Bf
    if _struct_B2d9f2BH4Bf is None:
        _struct_B2d9f2BH4Bf = struct.Struct("<B2d9f2BH4Bf")
    return _struct_B2d9f2BH4Bf