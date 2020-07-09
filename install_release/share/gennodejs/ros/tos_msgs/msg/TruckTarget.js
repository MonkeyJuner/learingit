// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TargetInfo = require('./TargetInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TruckTarget {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cheid = null;
      this.task_id = null;
      this.sub_task_id = null;
      this.targets = null;
      this.display_msg = null;
      this.operate_type = null;
      this.command_type = null;
      this.send_packet_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cheid')) {
        this.cheid = initObj.cheid
      }
      else {
        this.cheid = '';
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('sub_task_id')) {
        this.sub_task_id = initObj.sub_task_id
      }
      else {
        this.sub_task_id = 0;
      }
      if (initObj.hasOwnProperty('targets')) {
        this.targets = initObj.targets
      }
      else {
        this.targets = [];
      }
      if (initObj.hasOwnProperty('display_msg')) {
        this.display_msg = initObj.display_msg
      }
      else {
        this.display_msg = '';
      }
      if (initObj.hasOwnProperty('operate_type')) {
        this.operate_type = initObj.operate_type
      }
      else {
        this.operate_type = 0;
      }
      if (initObj.hasOwnProperty('command_type')) {
        this.command_type = initObj.command_type
      }
      else {
        this.command_type = 0;
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
    // Serializes a message object of type TruckTarget
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cheid]
    bufferOffset = _serializer.string(obj.cheid, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [sub_task_id]
    bufferOffset = _serializer.uint16(obj.sub_task_id, buffer, bufferOffset);
    // Serialize message field [targets]
    // Serialize the length for message field [targets]
    bufferOffset = _serializer.uint32(obj.targets.length, buffer, bufferOffset);
    obj.targets.forEach((val) => {
      bufferOffset = TargetInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [display_msg]
    bufferOffset = _serializer.string(obj.display_msg, buffer, bufferOffset);
    // Serialize message field [operate_type]
    bufferOffset = _serializer.uint8(obj.operate_type, buffer, bufferOffset);
    // Serialize message field [command_type]
    bufferOffset = _serializer.uint8(obj.command_type, buffer, bufferOffset);
    // Serialize message field [send_packet_id]
    bufferOffset = _serializer.int32(obj.send_packet_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TruckTarget
    let len;
    let data = new TruckTarget(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cheid]
    data.cheid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sub_task_id]
    data.sub_task_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [targets]
    // Deserialize array length for message field [targets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.targets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.targets[i] = TargetInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [display_msg]
    data.display_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operate_type]
    data.operate_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [command_type]
    data.command_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [send_packet_id]
    data.send_packet_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.cheid.length;
    object.targets.forEach((val) => {
      length += TargetInfo.getMessageSize(val);
    });
    length += object.display_msg.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TruckTarget';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f554a84fb3643ba35c52d9e4368a490a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # command type
    uint8 START_FROM      = 0
    uint8 ARRIVE_AT       = 1
    
    # operate type
    uint8 LOAD	= 0
    uint8 UNLOAD	= 1
    
    
    Header header
    
    # truck id
    string cheid
    
    # task id
    uint32 task_id
    uint16 sub_task_id
    
    # taget info
    TargetInfo[] targets
    
    # display message
    string display_msg
    
    # operate
    uint8 operate_type
    
    # for test
    uint8 command_type
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
    
    ================================================================================
    MSG: tos_msgs/TargetInfo
    # target type
    uint8 NORMAL_YARD_CRANE         = 0
    uint8 AUTOMATIC_YARD_CRANE      = 1
    uint8 GANTRY_CRANE      	= 2
    uint8 TRANSFER_ZONE      	= 3
    
    # target
    uint8 target_type
    
    # target info
    string section
    string bay
    string transfer_zone
    
    string gantry_crane_id
    string lane_id
    
    # container
    Container container
    
    # move stage
    string move_stage
    
    # for test
    string ppos
    
    ================================================================================
    MSG: tos_msgs/Container
    string container_id
    uint8 container_size
    int32 container_weight
    uint8 container_pos 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TruckTarget(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cheid !== undefined) {
      resolved.cheid = msg.cheid;
    }
    else {
      resolved.cheid = ''
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.sub_task_id !== undefined) {
      resolved.sub_task_id = msg.sub_task_id;
    }
    else {
      resolved.sub_task_id = 0
    }

    if (msg.targets !== undefined) {
      resolved.targets = new Array(msg.targets.length);
      for (let i = 0; i < resolved.targets.length; ++i) {
        resolved.targets[i] = TargetInfo.Resolve(msg.targets[i]);
      }
    }
    else {
      resolved.targets = []
    }

    if (msg.display_msg !== undefined) {
      resolved.display_msg = msg.display_msg;
    }
    else {
      resolved.display_msg = ''
    }

    if (msg.operate_type !== undefined) {
      resolved.operate_type = msg.operate_type;
    }
    else {
      resolved.operate_type = 0
    }

    if (msg.command_type !== undefined) {
      resolved.command_type = msg.command_type;
    }
    else {
      resolved.command_type = 0
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
TruckTarget.Constants = {
  START_FROM: 0,
  ARRIVE_AT: 1,
  LOAD: 0,
  UNLOAD: 1,
}

module.exports = TruckTarget;
