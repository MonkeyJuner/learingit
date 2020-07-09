// Auto-generated. Do not edit!

// (in-package gnss_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GnssInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gnss_velocity = null;
      this.gnss_orientation = null;
      this.gnss_position = null;
      this.utm_east = null;
      this.utm_north = null;
      this.latitude_std = null;
      this.longitude_std = null;
      this.altitude_std = null;
      this.north_velocity_std = null;
      this.east_velocity_std = null;
      this.up_velocity_std = null;
      this.roll_std = null;
      this.pitch_std = null;
      this.yaw_std = null;
      this.gps_status = null;
      this.sate_num = null;
      this.year = null;
      this.month = null;
      this.day = null;
      this.hour = null;
      this.minuter = null;
      this.second = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gnss_velocity')) {
        this.gnss_velocity = initObj.gnss_velocity
      }
      else {
        this.gnss_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('gnss_orientation')) {
        this.gnss_orientation = initObj.gnss_orientation
      }
      else {
        this.gnss_orientation = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('gnss_position')) {
        this.gnss_position = initObj.gnss_position
      }
      else {
        this.gnss_position = new sensor_msgs.msg.NavSatFix();
      }
      if (initObj.hasOwnProperty('utm_east')) {
        this.utm_east = initObj.utm_east
      }
      else {
        this.utm_east = 0.0;
      }
      if (initObj.hasOwnProperty('utm_north')) {
        this.utm_north = initObj.utm_north
      }
      else {
        this.utm_north = 0.0;
      }
      if (initObj.hasOwnProperty('latitude_std')) {
        this.latitude_std = initObj.latitude_std
      }
      else {
        this.latitude_std = 0.0;
      }
      if (initObj.hasOwnProperty('longitude_std')) {
        this.longitude_std = initObj.longitude_std
      }
      else {
        this.longitude_std = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_std')) {
        this.altitude_std = initObj.altitude_std
      }
      else {
        this.altitude_std = 0.0;
      }
      if (initObj.hasOwnProperty('north_velocity_std')) {
        this.north_velocity_std = initObj.north_velocity_std
      }
      else {
        this.north_velocity_std = 0.0;
      }
      if (initObj.hasOwnProperty('east_velocity_std')) {
        this.east_velocity_std = initObj.east_velocity_std
      }
      else {
        this.east_velocity_std = 0.0;
      }
      if (initObj.hasOwnProperty('up_velocity_std')) {
        this.up_velocity_std = initObj.up_velocity_std
      }
      else {
        this.up_velocity_std = 0.0;
      }
      if (initObj.hasOwnProperty('roll_std')) {
        this.roll_std = initObj.roll_std
      }
      else {
        this.roll_std = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_std')) {
        this.pitch_std = initObj.pitch_std
      }
      else {
        this.pitch_std = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_std')) {
        this.yaw_std = initObj.yaw_std
      }
      else {
        this.yaw_std = 0.0;
      }
      if (initObj.hasOwnProperty('gps_status')) {
        this.gps_status = initObj.gps_status
      }
      else {
        this.gps_status = 0;
      }
      if (initObj.hasOwnProperty('sate_num')) {
        this.sate_num = initObj.sate_num
      }
      else {
        this.sate_num = 0;
      }
      if (initObj.hasOwnProperty('year')) {
        this.year = initObj.year
      }
      else {
        this.year = 0;
      }
      if (initObj.hasOwnProperty('month')) {
        this.month = initObj.month
      }
      else {
        this.month = 0;
      }
      if (initObj.hasOwnProperty('day')) {
        this.day = initObj.day
      }
      else {
        this.day = 0;
      }
      if (initObj.hasOwnProperty('hour')) {
        this.hour = initObj.hour
      }
      else {
        this.hour = 0;
      }
      if (initObj.hasOwnProperty('minuter')) {
        this.minuter = initObj.minuter
      }
      else {
        this.minuter = 0;
      }
      if (initObj.hasOwnProperty('second')) {
        this.second = initObj.second
      }
      else {
        this.second = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gnss_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gnss_velocity, buffer, bufferOffset);
    // Serialize message field [gnss_orientation]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gnss_orientation, buffer, bufferOffset);
    // Serialize message field [gnss_position]
    bufferOffset = sensor_msgs.msg.NavSatFix.serialize(obj.gnss_position, buffer, bufferOffset);
    // Serialize message field [utm_east]
    bufferOffset = _serializer.float64(obj.utm_east, buffer, bufferOffset);
    // Serialize message field [utm_north]
    bufferOffset = _serializer.float64(obj.utm_north, buffer, bufferOffset);
    // Serialize message field [latitude_std]
    bufferOffset = _serializer.float32(obj.latitude_std, buffer, bufferOffset);
    // Serialize message field [longitude_std]
    bufferOffset = _serializer.float32(obj.longitude_std, buffer, bufferOffset);
    // Serialize message field [altitude_std]
    bufferOffset = _serializer.float32(obj.altitude_std, buffer, bufferOffset);
    // Serialize message field [north_velocity_std]
    bufferOffset = _serializer.float32(obj.north_velocity_std, buffer, bufferOffset);
    // Serialize message field [east_velocity_std]
    bufferOffset = _serializer.float32(obj.east_velocity_std, buffer, bufferOffset);
    // Serialize message field [up_velocity_std]
    bufferOffset = _serializer.float32(obj.up_velocity_std, buffer, bufferOffset);
    // Serialize message field [roll_std]
    bufferOffset = _serializer.float32(obj.roll_std, buffer, bufferOffset);
    // Serialize message field [pitch_std]
    bufferOffset = _serializer.float32(obj.pitch_std, buffer, bufferOffset);
    // Serialize message field [yaw_std]
    bufferOffset = _serializer.float32(obj.yaw_std, buffer, bufferOffset);
    // Serialize message field [gps_status]
    bufferOffset = _serializer.uint8(obj.gps_status, buffer, bufferOffset);
    // Serialize message field [sate_num]
    bufferOffset = _serializer.uint8(obj.sate_num, buffer, bufferOffset);
    // Serialize message field [year]
    bufferOffset = _serializer.uint16(obj.year, buffer, bufferOffset);
    // Serialize message field [month]
    bufferOffset = _serializer.uint8(obj.month, buffer, bufferOffset);
    // Serialize message field [day]
    bufferOffset = _serializer.uint8(obj.day, buffer, bufferOffset);
    // Serialize message field [hour]
    bufferOffset = _serializer.uint8(obj.hour, buffer, bufferOffset);
    // Serialize message field [minuter]
    bufferOffset = _serializer.uint8(obj.minuter, buffer, bufferOffset);
    // Serialize message field [second]
    bufferOffset = _serializer.float32(obj.second, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssInfo
    let len;
    let data = new GnssInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gnss_velocity]
    data.gnss_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [gnss_orientation]
    data.gnss_orientation = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [gnss_position]
    data.gnss_position = sensor_msgs.msg.NavSatFix.deserialize(buffer, bufferOffset);
    // Deserialize message field [utm_east]
    data.utm_east = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [utm_north]
    data.utm_north = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude_std]
    data.latitude_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude_std]
    data.longitude_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude_std]
    data.altitude_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [north_velocity_std]
    data.north_velocity_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [east_velocity_std]
    data.east_velocity_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [up_velocity_std]
    data.up_velocity_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll_std]
    data.roll_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_std]
    data.pitch_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_std]
    data.yaw_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gps_status]
    data.gps_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sate_num]
    data.sate_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [year]
    data.year = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [month]
    data.month = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [day]
    data.day = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hour]
    data.hour = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [minuter]
    data.minuter = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [second]
    data.second = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += sensor_msgs.msg.NavSatFix.getMessageSize(object.gnss_position);
    return length + 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_msgs/GnssInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29d5c65ea6c74ae8feb75899be012a37';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gnss_velocity !== undefined) {
      resolved.gnss_velocity = geometry_msgs.msg.Vector3.Resolve(msg.gnss_velocity)
    }
    else {
      resolved.gnss_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.gnss_orientation !== undefined) {
      resolved.gnss_orientation = geometry_msgs.msg.Vector3.Resolve(msg.gnss_orientation)
    }
    else {
      resolved.gnss_orientation = new geometry_msgs.msg.Vector3()
    }

    if (msg.gnss_position !== undefined) {
      resolved.gnss_position = sensor_msgs.msg.NavSatFix.Resolve(msg.gnss_position)
    }
    else {
      resolved.gnss_position = new sensor_msgs.msg.NavSatFix()
    }

    if (msg.utm_east !== undefined) {
      resolved.utm_east = msg.utm_east;
    }
    else {
      resolved.utm_east = 0.0
    }

    if (msg.utm_north !== undefined) {
      resolved.utm_north = msg.utm_north;
    }
    else {
      resolved.utm_north = 0.0
    }

    if (msg.latitude_std !== undefined) {
      resolved.latitude_std = msg.latitude_std;
    }
    else {
      resolved.latitude_std = 0.0
    }

    if (msg.longitude_std !== undefined) {
      resolved.longitude_std = msg.longitude_std;
    }
    else {
      resolved.longitude_std = 0.0
    }

    if (msg.altitude_std !== undefined) {
      resolved.altitude_std = msg.altitude_std;
    }
    else {
      resolved.altitude_std = 0.0
    }

    if (msg.north_velocity_std !== undefined) {
      resolved.north_velocity_std = msg.north_velocity_std;
    }
    else {
      resolved.north_velocity_std = 0.0
    }

    if (msg.east_velocity_std !== undefined) {
      resolved.east_velocity_std = msg.east_velocity_std;
    }
    else {
      resolved.east_velocity_std = 0.0
    }

    if (msg.up_velocity_std !== undefined) {
      resolved.up_velocity_std = msg.up_velocity_std;
    }
    else {
      resolved.up_velocity_std = 0.0
    }

    if (msg.roll_std !== undefined) {
      resolved.roll_std = msg.roll_std;
    }
    else {
      resolved.roll_std = 0.0
    }

    if (msg.pitch_std !== undefined) {
      resolved.pitch_std = msg.pitch_std;
    }
    else {
      resolved.pitch_std = 0.0
    }

    if (msg.yaw_std !== undefined) {
      resolved.yaw_std = msg.yaw_std;
    }
    else {
      resolved.yaw_std = 0.0
    }

    if (msg.gps_status !== undefined) {
      resolved.gps_status = msg.gps_status;
    }
    else {
      resolved.gps_status = 0
    }

    if (msg.sate_num !== undefined) {
      resolved.sate_num = msg.sate_num;
    }
    else {
      resolved.sate_num = 0
    }

    if (msg.year !== undefined) {
      resolved.year = msg.year;
    }
    else {
      resolved.year = 0
    }

    if (msg.month !== undefined) {
      resolved.month = msg.month;
    }
    else {
      resolved.month = 0
    }

    if (msg.day !== undefined) {
      resolved.day = msg.day;
    }
    else {
      resolved.day = 0
    }

    if (msg.hour !== undefined) {
      resolved.hour = msg.hour;
    }
    else {
      resolved.hour = 0
    }

    if (msg.minuter !== undefined) {
      resolved.minuter = msg.minuter;
    }
    else {
      resolved.minuter = 0
    }

    if (msg.second !== undefined) {
      resolved.second = msg.second;
    }
    else {
      resolved.second = 0.0
    }

    return resolved;
    }
};

module.exports = GnssInfo;
