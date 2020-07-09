// Auto-generated. Do not edit!

// (in-package hadmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrafficSign {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.speed_limit = null;
      this.type = null;
      this.detect_tail = null;
      this.next_speed_limit = null;
      this.dist_to_sign = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('detect_tail')) {
        this.detect_tail = initObj.detect_tail
      }
      else {
        this.detect_tail = false;
      }
      if (initObj.hasOwnProperty('next_speed_limit')) {
        this.next_speed_limit = initObj.next_speed_limit
      }
      else {
        this.next_speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('dist_to_sign')) {
        this.dist_to_sign = initObj.dist_to_sign
      }
      else {
        this.dist_to_sign = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficSign
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float32(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [detect_tail]
    bufferOffset = _serializer.bool(obj.detect_tail, buffer, bufferOffset);
    // Serialize message field [next_speed_limit]
    bufferOffset = _serializer.float32(obj.next_speed_limit, buffer, bufferOffset);
    // Serialize message field [dist_to_sign]
    bufferOffset = _serializer.float64(obj.dist_to_sign, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSign
    let len;
    let data = new TrafficSign(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [detect_tail]
    data.detect_tail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [next_speed_limit]
    data.next_speed_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dist_to_sign]
    data.dist_to_sign = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hadmap_msgs/TrafficSign';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51f7d15dd95740b39027418e40bee19d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TYPE_STRAIGHT = 0
    uint8 TYPE_UTURN = 1
    uint8 TYPE_CROSS = 2
    
    Header header
    
    float32 speed_limit
    uint8 type
    
    bool detect_tail
    
    float32 next_speed_limit
    float64 dist_to_sign
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
    const resolved = new TrafficSign(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.detect_tail !== undefined) {
      resolved.detect_tail = msg.detect_tail;
    }
    else {
      resolved.detect_tail = false
    }

    if (msg.next_speed_limit !== undefined) {
      resolved.next_speed_limit = msg.next_speed_limit;
    }
    else {
      resolved.next_speed_limit = 0.0
    }

    if (msg.dist_to_sign !== undefined) {
      resolved.dist_to_sign = msg.dist_to_sign;
    }
    else {
      resolved.dist_to_sign = 0.0
    }

    return resolved;
    }
};

// Constants for message
TrafficSign.Constants = {
  TYPE_STRAIGHT: 0,
  TYPE_UTURN: 1,
  TYPE_CROSS: 2,
}

module.exports = TrafficSign;
