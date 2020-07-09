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

class Region {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.turn_type = null;
      this.width_btw_barriers = null;
      this.is_lockzone_ahead = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('turn_type')) {
        this.turn_type = initObj.turn_type
      }
      else {
        this.turn_type = 0;
      }
      if (initObj.hasOwnProperty('width_btw_barriers')) {
        this.width_btw_barriers = initObj.width_btw_barriers
      }
      else {
        this.width_btw_barriers = 0.0;
      }
      if (initObj.hasOwnProperty('is_lockzone_ahead')) {
        this.is_lockzone_ahead = initObj.is_lockzone_ahead
      }
      else {
        this.is_lockzone_ahead = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Region
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [turn_type]
    bufferOffset = _serializer.int32(obj.turn_type, buffer, bufferOffset);
    // Serialize message field [width_btw_barriers]
    bufferOffset = _serializer.float32(obj.width_btw_barriers, buffer, bufferOffset);
    // Serialize message field [is_lockzone_ahead]
    bufferOffset = _serializer.bool(obj.is_lockzone_ahead, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Region
    let len;
    let data = new Region(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [turn_type]
    data.turn_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [width_btw_barriers]
    data.width_btw_barriers = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_lockzone_ahead]
    data.is_lockzone_ahead = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hadmap_msgs/Region';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88d27f36beb9074b467382db9b323a15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TYPE_NORMAL = 0
    uint8 TYPE_SEASIDE = 1
    uint8 TYPE_YARD = 2
    
    uint8 TYPE_NO_TURN = 0
    uint8 TYPE_LEFT_TURN = 1
    uint8 TYPE_RIGHT_TURN = 2
    uint8 TYPE_U_TURN = 3
    
    Header header
    int32 type
    int32 turn_type
    float32 width_btw_barriers
    bool is_lockzone_ahead
    
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
    const resolved = new Region(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.turn_type !== undefined) {
      resolved.turn_type = msg.turn_type;
    }
    else {
      resolved.turn_type = 0
    }

    if (msg.width_btw_barriers !== undefined) {
      resolved.width_btw_barriers = msg.width_btw_barriers;
    }
    else {
      resolved.width_btw_barriers = 0.0
    }

    if (msg.is_lockzone_ahead !== undefined) {
      resolved.is_lockzone_ahead = msg.is_lockzone_ahead;
    }
    else {
      resolved.is_lockzone_ahead = false
    }

    return resolved;
    }
};

// Constants for message
Region.Constants = {
  TYPE_NORMAL: 0,
  TYPE_SEASIDE: 1,
  TYPE_YARD: 2,
  TYPE_NO_TURN: 0,
  TYPE_LEFT_TURN: 1,
  TYPE_RIGHT_TURN: 2,
  TYPE_U_TURN: 3,
}

module.exports = Region;
