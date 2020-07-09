// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CraneWarnning {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.certainty = null;
      this.distance_vertical = null;
      this.distance_lateral = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('certainty')) {
        this.certainty = initObj.certainty
      }
      else {
        this.certainty = 0.0;
      }
      if (initObj.hasOwnProperty('distance_vertical')) {
        this.distance_vertical = initObj.distance_vertical
      }
      else {
        this.distance_vertical = 0.0;
      }
      if (initObj.hasOwnProperty('distance_lateral')) {
        this.distance_lateral = initObj.distance_lateral
      }
      else {
        this.distance_lateral = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CraneWarnning
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [certainty]
    bufferOffset = _serializer.float64(obj.certainty, buffer, bufferOffset);
    // Serialize message field [distance_vertical]
    bufferOffset = _serializer.float64(obj.distance_vertical, buffer, bufferOffset);
    // Serialize message field [distance_lateral]
    bufferOffset = _serializer.float64(obj.distance_lateral, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CraneWarnning
    let len;
    let data = new CraneWarnning(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [certainty]
    data.certainty = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_vertical]
    data.distance_vertical = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_lateral]
    data.distance_lateral = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/CraneWarnning';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c24f3c5e54e151e721b842164d45ab26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # probability
    float64 certainty #0 ~ 100
    
    #distance
    float64 distance_vertical #meter
    float64 distance_lateral  #meter
    
    
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
    const resolved = new CraneWarnning(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.certainty !== undefined) {
      resolved.certainty = msg.certainty;
    }
    else {
      resolved.certainty = 0.0
    }

    if (msg.distance_vertical !== undefined) {
      resolved.distance_vertical = msg.distance_vertical;
    }
    else {
      resolved.distance_vertical = 0.0
    }

    if (msg.distance_lateral !== undefined) {
      resolved.distance_lateral = msg.distance_lateral;
    }
    else {
      resolved.distance_lateral = 0.0
    }

    return resolved;
    }
};

module.exports = CraneWarnning;
