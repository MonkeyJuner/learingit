// Auto-generated. Do not edit!

// (in-package gnss_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GnssImuInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.utm_east = null;
      this.utm_north = null;
      this.latitude_std = null;
      this.longitude_std = null;
      this.altitude_std = null;
      this.north_velocity = null;
      this.east_velocity = null;
      this.up_velocity = null;
      this.north_velocity_std = null;
      this.east_velocity_std = null;
      this.up_velocity_std = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.w = null;
      this.roll_std = null;
      this.pitch_std = null;
      this.yaw_std = null;
      this.roll_rate = null;
      this.pitch_rate = null;
      this.yaw_rate = null;
      this.ax = null;
      this.ay = null;
      this.az = null;
      this.init_position = null;
      this.init_velocity = null;
      this.init_pitchroll = null;
      this.init_yaw = null;
      this.gps_status = null;
      this.gps_satellitenum = null;
      this.wheelspeed_status = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
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
      if (initObj.hasOwnProperty('north_velocity')) {
        this.north_velocity = initObj.north_velocity
      }
      else {
        this.north_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('east_velocity')) {
        this.east_velocity = initObj.east_velocity
      }
      else {
        this.east_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('up_velocity')) {
        this.up_velocity = initObj.up_velocity
      }
      else {
        this.up_velocity = 0.0;
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
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = 0.0;
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
      if (initObj.hasOwnProperty('roll_rate')) {
        this.roll_rate = initObj.roll_rate
      }
      else {
        this.roll_rate = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_rate')) {
        this.pitch_rate = initObj.pitch_rate
      }
      else {
        this.pitch_rate = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('ax')) {
        this.ax = initObj.ax
      }
      else {
        this.ax = 0.0;
      }
      if (initObj.hasOwnProperty('ay')) {
        this.ay = initObj.ay
      }
      else {
        this.ay = 0.0;
      }
      if (initObj.hasOwnProperty('az')) {
        this.az = initObj.az
      }
      else {
        this.az = 0.0;
      }
      if (initObj.hasOwnProperty('init_position')) {
        this.init_position = initObj.init_position
      }
      else {
        this.init_position = 0;
      }
      if (initObj.hasOwnProperty('init_velocity')) {
        this.init_velocity = initObj.init_velocity
      }
      else {
        this.init_velocity = 0;
      }
      if (initObj.hasOwnProperty('init_pitchroll')) {
        this.init_pitchroll = initObj.init_pitchroll
      }
      else {
        this.init_pitchroll = 0;
      }
      if (initObj.hasOwnProperty('init_yaw')) {
        this.init_yaw = initObj.init_yaw
      }
      else {
        this.init_yaw = 0;
      }
      if (initObj.hasOwnProperty('gps_status')) {
        this.gps_status = initObj.gps_status
      }
      else {
        this.gps_status = 0;
      }
      if (initObj.hasOwnProperty('gps_satellitenum')) {
        this.gps_satellitenum = initObj.gps_satellitenum
      }
      else {
        this.gps_satellitenum = 0;
      }
      if (initObj.hasOwnProperty('wheelspeed_status')) {
        this.wheelspeed_status = initObj.wheelspeed_status
      }
      else {
        this.wheelspeed_status = 0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssImuInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
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
    // Serialize message field [north_velocity]
    bufferOffset = _serializer.float64(obj.north_velocity, buffer, bufferOffset);
    // Serialize message field [east_velocity]
    bufferOffset = _serializer.float64(obj.east_velocity, buffer, bufferOffset);
    // Serialize message field [up_velocity]
    bufferOffset = _serializer.float64(obj.up_velocity, buffer, bufferOffset);
    // Serialize message field [north_velocity_std]
    bufferOffset = _serializer.float32(obj.north_velocity_std, buffer, bufferOffset);
    // Serialize message field [east_velocity_std]
    bufferOffset = _serializer.float32(obj.east_velocity_std, buffer, bufferOffset);
    // Serialize message field [up_velocity_std]
    bufferOffset = _serializer.float32(obj.up_velocity_std, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [w]
    bufferOffset = _serializer.float64(obj.w, buffer, bufferOffset);
    // Serialize message field [roll_std]
    bufferOffset = _serializer.float32(obj.roll_std, buffer, bufferOffset);
    // Serialize message field [pitch_std]
    bufferOffset = _serializer.float32(obj.pitch_std, buffer, bufferOffset);
    // Serialize message field [yaw_std]
    bufferOffset = _serializer.float32(obj.yaw_std, buffer, bufferOffset);
    // Serialize message field [roll_rate]
    bufferOffset = _serializer.float64(obj.roll_rate, buffer, bufferOffset);
    // Serialize message field [pitch_rate]
    bufferOffset = _serializer.float64(obj.pitch_rate, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float64(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [ax]
    bufferOffset = _serializer.float64(obj.ax, buffer, bufferOffset);
    // Serialize message field [ay]
    bufferOffset = _serializer.float64(obj.ay, buffer, bufferOffset);
    // Serialize message field [az]
    bufferOffset = _serializer.float64(obj.az, buffer, bufferOffset);
    // Serialize message field [init_position]
    bufferOffset = _serializer.uint8(obj.init_position, buffer, bufferOffset);
    // Serialize message field [init_velocity]
    bufferOffset = _serializer.uint8(obj.init_velocity, buffer, bufferOffset);
    // Serialize message field [init_pitchroll]
    bufferOffset = _serializer.uint8(obj.init_pitchroll, buffer, bufferOffset);
    // Serialize message field [init_yaw]
    bufferOffset = _serializer.uint8(obj.init_yaw, buffer, bufferOffset);
    // Serialize message field [gps_status]
    bufferOffset = _serializer.int32(obj.gps_status, buffer, bufferOffset);
    // Serialize message field [gps_satellitenum]
    bufferOffset = _serializer.int32(obj.gps_satellitenum, buffer, bufferOffset);
    // Serialize message field [wheelspeed_status]
    bufferOffset = _serializer.int32(obj.wheelspeed_status, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float64(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssImuInfo
    let len;
    let data = new GnssImuInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
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
    // Deserialize message field [north_velocity]
    data.north_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [east_velocity]
    data.east_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [up_velocity]
    data.up_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [north_velocity_std]
    data.north_velocity_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [east_velocity_std]
    data.east_velocity_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [up_velocity_std]
    data.up_velocity_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [w]
    data.w = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_std]
    data.roll_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_std]
    data.pitch_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_std]
    data.yaw_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll_rate]
    data.roll_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_rate]
    data.pitch_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ax]
    data.ax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ay]
    data.ay = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [az]
    data.az = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [init_position]
    data.init_position = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [init_velocity]
    data.init_velocity = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [init_pitchroll]
    data.init_pitchroll = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [init_yaw]
    data.init_yaw = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gps_status]
    data.gps_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gps_satellitenum]
    data.gps_satellitenum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wheelspeed_status]
    data.wheelspeed_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 228;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_msgs/GnssImuInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11dc712d4d164c4b214a63c633cf7ef7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 POSITION_TYPE_NONE = 0
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssImuInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
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

    if (msg.north_velocity !== undefined) {
      resolved.north_velocity = msg.north_velocity;
    }
    else {
      resolved.north_velocity = 0.0
    }

    if (msg.east_velocity !== undefined) {
      resolved.east_velocity = msg.east_velocity;
    }
    else {
      resolved.east_velocity = 0.0
    }

    if (msg.up_velocity !== undefined) {
      resolved.up_velocity = msg.up_velocity;
    }
    else {
      resolved.up_velocity = 0.0
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

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.w !== undefined) {
      resolved.w = msg.w;
    }
    else {
      resolved.w = 0.0
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

    if (msg.roll_rate !== undefined) {
      resolved.roll_rate = msg.roll_rate;
    }
    else {
      resolved.roll_rate = 0.0
    }

    if (msg.pitch_rate !== undefined) {
      resolved.pitch_rate = msg.pitch_rate;
    }
    else {
      resolved.pitch_rate = 0.0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    if (msg.ax !== undefined) {
      resolved.ax = msg.ax;
    }
    else {
      resolved.ax = 0.0
    }

    if (msg.ay !== undefined) {
      resolved.ay = msg.ay;
    }
    else {
      resolved.ay = 0.0
    }

    if (msg.az !== undefined) {
      resolved.az = msg.az;
    }
    else {
      resolved.az = 0.0
    }

    if (msg.init_position !== undefined) {
      resolved.init_position = msg.init_position;
    }
    else {
      resolved.init_position = 0
    }

    if (msg.init_velocity !== undefined) {
      resolved.init_velocity = msg.init_velocity;
    }
    else {
      resolved.init_velocity = 0
    }

    if (msg.init_pitchroll !== undefined) {
      resolved.init_pitchroll = msg.init_pitchroll;
    }
    else {
      resolved.init_pitchroll = 0
    }

    if (msg.init_yaw !== undefined) {
      resolved.init_yaw = msg.init_yaw;
    }
    else {
      resolved.init_yaw = 0
    }

    if (msg.gps_status !== undefined) {
      resolved.gps_status = msg.gps_status;
    }
    else {
      resolved.gps_status = 0
    }

    if (msg.gps_satellitenum !== undefined) {
      resolved.gps_satellitenum = msg.gps_satellitenum;
    }
    else {
      resolved.gps_satellitenum = 0
    }

    if (msg.wheelspeed_status !== undefined) {
      resolved.wheelspeed_status = msg.wheelspeed_status;
    }
    else {
      resolved.wheelspeed_status = 0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    return resolved;
    }
};

// Constants for message
GnssImuInfo.Constants = {
  POSITION_TYPE_NONE: 0,
  POSITION_TYPE_FIXEDPOS: 1,
  POSITION_TYPE_FIXEDHEIGHT: 2,
  POSITION_TYPE_DOPPLER_VELOCITY: 8,
  POSITION_TYPE_SINGLE: 16,
  POSITION_TYPE_PSRDIFF: 17,
  POSITION_TYPE_SBAS: 18,
  POSITION_TYPE_PROPAGATED: 19,
  POSITION_TYPE_OMNISTAR: 20,
  POSITION_TYPE_L1_FLOAT: 32,
  POSITION_TYPE_IONOFREE_FLOAT: 33,
  POSITION_TYPE_NARROW_FLOAT: 34,
  POSITION_TYPE_L1_INT: 48,
  POSITION_TYPE_WIDE_INT: 49,
  POSITION_TYPE_NARROW_INT: 50,
  POSITION_TYPE_OMNISTAR_HP: 64,
  POSITION_TYPE_OMNISTAR_XP: 65,
}

module.exports = GnssImuInfo;
