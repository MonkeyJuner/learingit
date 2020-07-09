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

class TruckStop {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.task_id = null;
      this.crane_id = null;
      this.task_type = null;
      this.container_pos = null;
      this.lane_id = null;
      this.send_packet_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('crane_id')) {
        this.crane_id = initObj.crane_id
      }
      else {
        this.crane_id = '';
      }
      if (initObj.hasOwnProperty('task_type')) {
        this.task_type = initObj.task_type
      }
      else {
        this.task_type = 0;
      }
      if (initObj.hasOwnProperty('container_pos')) {
        this.container_pos = initObj.container_pos
      }
      else {
        this.container_pos = 0;
      }
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
      if (initObj.hasOwnProperty('send_packet_id')) {
        this.send_packet_id = initObj.send_packet_id
      }
      else {
        this.send_packet_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TruckStop
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [crane_id]
    bufferOffset = _serializer.string(obj.crane_id, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = _serializer.uint8(obj.task_type, buffer, bufferOffset);
    // Serialize message field [container_pos]
    bufferOffset = _serializer.uint8(obj.container_pos, buffer, bufferOffset);
    // Serialize message field [lane_id]
    bufferOffset = _serializer.uint8(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [send_packet_id]
    bufferOffset = _serializer.int32(obj.send_packet_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TruckStop
    let len;
    let data = new TruckStop(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [crane_id]
    data.crane_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [container_pos]
    data.container_pos = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [send_packet_id]
    data.send_packet_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.crane_id.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TruckStop';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd175f6393a238545ac13b8f9d66acaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TASK_ON_ANQIAO = 1
    uint8 TASK_ON_CHANGQIAO = 2
    uint8 TASK_ON_LOCK = 3
    
    Header header
    uint32 task_id
    
    string crane_id
    uint8 task_type
    uint8 container_pos
    uint8 lane_id
    
    # for test
    int32 send_packet_id
    
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
    const resolved = new TruckStop(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.crane_id !== undefined) {
      resolved.crane_id = msg.crane_id;
    }
    else {
      resolved.crane_id = ''
    }

    if (msg.task_type !== undefined) {
      resolved.task_type = msg.task_type;
    }
    else {
      resolved.task_type = 0
    }

    if (msg.container_pos !== undefined) {
      resolved.container_pos = msg.container_pos;
    }
    else {
      resolved.container_pos = 0
    }

    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    if (msg.send_packet_id !== undefined) {
      resolved.send_packet_id = msg.send_packet_id;
    }
    else {
      resolved.send_packet_id = 0
    }

    return resolved;
    }
};

// Constants for message
TruckStop.Constants = {
  TASK_ON_ANQIAO: 1,
  TASK_ON_CHANGQIAO: 2,
  TASK_ON_LOCK: 3,
}

module.exports = TruckStop;
