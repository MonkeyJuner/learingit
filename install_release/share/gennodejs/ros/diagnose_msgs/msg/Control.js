// Auto-generated. Do not edit!

// (in-package diagnose_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pose = null;
      this.steering = null;
      this.heading_err = null;
      this.deviation_err = null;
      this.curv = null;
      this.threshold = null;
      this.throttle = null;
      this.brake = null;
      this.stanley_calc_info = null;
      this.longitude_calc_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('steering')) {
        this.steering = initObj.steering
      }
      else {
        this.steering = 0.0;
      }
      if (initObj.hasOwnProperty('heading_err')) {
        this.heading_err = initObj.heading_err
      }
      else {
        this.heading_err = 0.0;
      }
      if (initObj.hasOwnProperty('deviation_err')) {
        this.deviation_err = initObj.deviation_err
      }
      else {
        this.deviation_err = 0.0;
      }
      if (initObj.hasOwnProperty('curv')) {
        this.curv = initObj.curv
      }
      else {
        this.curv = 0.0;
      }
      if (initObj.hasOwnProperty('threshold')) {
        this.threshold = initObj.threshold
      }
      else {
        this.threshold = 0.0;
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0.0;
      }
      if (initObj.hasOwnProperty('stanley_calc_info')) {
        this.stanley_calc_info = initObj.stanley_calc_info
      }
      else {
        this.stanley_calc_info = '';
      }
      if (initObj.hasOwnProperty('longitude_calc_info')) {
        this.longitude_calc_info = initObj.longitude_calc_info
      }
      else {
        this.longitude_calc_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Control
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [steering]
    bufferOffset = _serializer.float64(obj.steering, buffer, bufferOffset);
    // Serialize message field [heading_err]
    bufferOffset = _serializer.float64(obj.heading_err, buffer, bufferOffset);
    // Serialize message field [deviation_err]
    bufferOffset = _serializer.float64(obj.deviation_err, buffer, bufferOffset);
    // Serialize message field [curv]
    bufferOffset = _serializer.float64(obj.curv, buffer, bufferOffset);
    // Serialize message field [threshold]
    bufferOffset = _serializer.float64(obj.threshold, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float64(obj.throttle, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.float64(obj.brake, buffer, bufferOffset);
    // Serialize message field [stanley_calc_info]
    bufferOffset = _serializer.string(obj.stanley_calc_info, buffer, bufferOffset);
    // Serialize message field [longitude_calc_info]
    bufferOffset = _serializer.string(obj.longitude_calc_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Control
    let len;
    let data = new Control(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering]
    data.steering = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_err]
    data.heading_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [deviation_err]
    data.deviation_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [curv]
    data.curv = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [threshold]
    data.threshold = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stanley_calc_info]
    data.stanley_calc_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [longitude_calc_info]
    data.longitude_calc_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.stanley_calc_info.length;
    length += object.longitude_calc_info.length;
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diagnose_msgs/Control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07098fbba8cab2027cb5d1113b486a90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    geometry_msgs/Transform pose
    
    float64 steering
    float64 heading_err
    float64 deviation_err
    float64 curv
    float64 threshold
    
    float64 throttle
    float64 brake
    
    string stanley_calc_info
    string longitude_calc_info
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
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Control(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Transform.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Transform()
    }

    if (msg.steering !== undefined) {
      resolved.steering = msg.steering;
    }
    else {
      resolved.steering = 0.0
    }

    if (msg.heading_err !== undefined) {
      resolved.heading_err = msg.heading_err;
    }
    else {
      resolved.heading_err = 0.0
    }

    if (msg.deviation_err !== undefined) {
      resolved.deviation_err = msg.deviation_err;
    }
    else {
      resolved.deviation_err = 0.0
    }

    if (msg.curv !== undefined) {
      resolved.curv = msg.curv;
    }
    else {
      resolved.curv = 0.0
    }

    if (msg.threshold !== undefined) {
      resolved.threshold = msg.threshold;
    }
    else {
      resolved.threshold = 0.0
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0.0
    }

    if (msg.stanley_calc_info !== undefined) {
      resolved.stanley_calc_info = msg.stanley_calc_info;
    }
    else {
      resolved.stanley_calc_info = ''
    }

    if (msg.longitude_calc_info !== undefined) {
      resolved.longitude_calc_info = msg.longitude_calc_info;
    }
    else {
      resolved.longitude_calc_info = ''
    }

    return resolved;
    }
};

module.exports = Control;
