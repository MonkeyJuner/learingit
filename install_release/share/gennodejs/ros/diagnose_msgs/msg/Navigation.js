// Auto-generated. Do not edit!

// (in-package diagnose_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Navigation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gnss_x = null;
      this.gnss_y = null;
      this.imu_theta = null;
      this.imu_a = null;
      this.imu_omega = null;
      this.wheelspeed_v = null;
      this.wheelspeed_omega = null;
      this.x = null;
      this.y = null;
      this.v = null;
      this.theta = null;
      this.a = null;
      this.omega = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gnss_x')) {
        this.gnss_x = initObj.gnss_x
      }
      else {
        this.gnss_x = 0.0;
      }
      if (initObj.hasOwnProperty('gnss_y')) {
        this.gnss_y = initObj.gnss_y
      }
      else {
        this.gnss_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_theta')) {
        this.imu_theta = initObj.imu_theta
      }
      else {
        this.imu_theta = 0.0;
      }
      if (initObj.hasOwnProperty('imu_a')) {
        this.imu_a = initObj.imu_a
      }
      else {
        this.imu_a = 0.0;
      }
      if (initObj.hasOwnProperty('imu_omega')) {
        this.imu_omega = initObj.imu_omega
      }
      else {
        this.imu_omega = 0.0;
      }
      if (initObj.hasOwnProperty('wheelspeed_v')) {
        this.wheelspeed_v = initObj.wheelspeed_v
      }
      else {
        this.wheelspeed_v = 0.0;
      }
      if (initObj.hasOwnProperty('wheelspeed_omega')) {
        this.wheelspeed_omega = initObj.wheelspeed_omega
      }
      else {
        this.wheelspeed_omega = 0.0;
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
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
      if (initObj.hasOwnProperty('omega')) {
        this.omega = initObj.omega
      }
      else {
        this.omega = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Navigation
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gnss_x]
    bufferOffset = _serializer.float64(obj.gnss_x, buffer, bufferOffset);
    // Serialize message field [gnss_y]
    bufferOffset = _serializer.float64(obj.gnss_y, buffer, bufferOffset);
    // Serialize message field [imu_theta]
    bufferOffset = _serializer.float64(obj.imu_theta, buffer, bufferOffset);
    // Serialize message field [imu_a]
    bufferOffset = _serializer.float64(obj.imu_a, buffer, bufferOffset);
    // Serialize message field [imu_omega]
    bufferOffset = _serializer.float64(obj.imu_omega, buffer, bufferOffset);
    // Serialize message field [wheelspeed_v]
    bufferOffset = _serializer.float64(obj.wheelspeed_v, buffer, bufferOffset);
    // Serialize message field [wheelspeed_omega]
    bufferOffset = _serializer.float64(obj.wheelspeed_omega, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float64(obj.v, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float64(obj.a, buffer, bufferOffset);
    // Serialize message field [omega]
    bufferOffset = _serializer.float64(obj.omega, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Navigation
    let len;
    let data = new Navigation(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gnss_x]
    data.gnss_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gnss_y]
    data.gnss_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_theta]
    data.imu_theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_a]
    data.imu_a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_omega]
    data.imu_omega = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wheelspeed_v]
    data.wheelspeed_v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wheelspeed_omega]
    data.wheelspeed_omega = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omega]
    data.omega = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diagnose_msgs/Navigation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fb34337e19289fd70c07df0de03b71c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    ## original data
    float64 gnss_x
    float64 gnss_y
    float64 imu_theta
    float64 imu_a
    float64 imu_omega
    float64 wheelspeed_v
    float64 wheelspeed_omega
    
    ## after process
    float64 x
    float64 y
    float64 v
    float64 theta
    float64 a
    float64 omega
    
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
    const resolved = new Navigation(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gnss_x !== undefined) {
      resolved.gnss_x = msg.gnss_x;
    }
    else {
      resolved.gnss_x = 0.0
    }

    if (msg.gnss_y !== undefined) {
      resolved.gnss_y = msg.gnss_y;
    }
    else {
      resolved.gnss_y = 0.0
    }

    if (msg.imu_theta !== undefined) {
      resolved.imu_theta = msg.imu_theta;
    }
    else {
      resolved.imu_theta = 0.0
    }

    if (msg.imu_a !== undefined) {
      resolved.imu_a = msg.imu_a;
    }
    else {
      resolved.imu_a = 0.0
    }

    if (msg.imu_omega !== undefined) {
      resolved.imu_omega = msg.imu_omega;
    }
    else {
      resolved.imu_omega = 0.0
    }

    if (msg.wheelspeed_v !== undefined) {
      resolved.wheelspeed_v = msg.wheelspeed_v;
    }
    else {
      resolved.wheelspeed_v = 0.0
    }

    if (msg.wheelspeed_omega !== undefined) {
      resolved.wheelspeed_omega = msg.wheelspeed_omega;
    }
    else {
      resolved.wheelspeed_omega = 0.0
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

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    if (msg.omega !== undefined) {
      resolved.omega = msg.omega;
    }
    else {
      resolved.omega = 0.0
    }

    return resolved;
    }
};

module.exports = Navigation;
