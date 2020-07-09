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

class LidarAlignment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.distance_shift = null;
      this.distance_vertical = null;
      this.distance_shift_filtered = null;
      this.distance_vertical_filtered = null;
      this.angle = null;
      this.point = null;
      this.angle_filtered = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('distance_shift')) {
        this.distance_shift = initObj.distance_shift
      }
      else {
        this.distance_shift = 0.0;
      }
      if (initObj.hasOwnProperty('distance_vertical')) {
        this.distance_vertical = initObj.distance_vertical
      }
      else {
        this.distance_vertical = 0.0;
      }
      if (initObj.hasOwnProperty('distance_shift_filtered')) {
        this.distance_shift_filtered = initObj.distance_shift_filtered
      }
      else {
        this.distance_shift_filtered = 0.0;
      }
      if (initObj.hasOwnProperty('distance_vertical_filtered')) {
        this.distance_vertical_filtered = initObj.distance_vertical_filtered
      }
      else {
        this.distance_vertical_filtered = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('angle_filtered')) {
        this.angle_filtered = initObj.angle_filtered
      }
      else {
        this.angle_filtered = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarAlignment
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [distance_shift]
    bufferOffset = _serializer.float64(obj.distance_shift, buffer, bufferOffset);
    // Serialize message field [distance_vertical]
    bufferOffset = _serializer.float64(obj.distance_vertical, buffer, bufferOffset);
    // Serialize message field [distance_shift_filtered]
    bufferOffset = _serializer.float64(obj.distance_shift_filtered, buffer, bufferOffset);
    // Serialize message field [distance_vertical_filtered]
    bufferOffset = _serializer.float64(obj.distance_vertical_filtered, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [angle_filtered]
    bufferOffset = _serializer.float64(obj.angle_filtered, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarAlignment
    let len;
    let data = new LidarAlignment(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance_shift]
    data.distance_shift = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_vertical]
    data.distance_vertical = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_shift_filtered]
    data.distance_shift_filtered = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_vertical_filtered]
    data.distance_vertical_filtered = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_filtered]
    data.angle_filtered = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diagnose_msgs/LidarAlignment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b83f6001c67821e47ec7547857d8ac4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int32 id
    
    float64 distance_shift
    float64 distance_vertical
    float64 distance_shift_filtered
    float64 distance_vertical_filtered
    
    float64 angle
    geometry_msgs/Point point
    float64 angle_filtered
    
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarAlignment(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.distance_shift !== undefined) {
      resolved.distance_shift = msg.distance_shift;
    }
    else {
      resolved.distance_shift = 0.0
    }

    if (msg.distance_vertical !== undefined) {
      resolved.distance_vertical = msg.distance_vertical;
    }
    else {
      resolved.distance_vertical = 0.0
    }

    if (msg.distance_shift_filtered !== undefined) {
      resolved.distance_shift_filtered = msg.distance_shift_filtered;
    }
    else {
      resolved.distance_shift_filtered = 0.0
    }

    if (msg.distance_vertical_filtered !== undefined) {
      resolved.distance_vertical_filtered = msg.distance_vertical_filtered;
    }
    else {
      resolved.distance_vertical_filtered = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Point.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Point()
    }

    if (msg.angle_filtered !== undefined) {
      resolved.angle_filtered = msg.angle_filtered;
    }
    else {
      resolved.angle_filtered = 0.0
    }

    return resolved;
    }
};

module.exports = LidarAlignment;
