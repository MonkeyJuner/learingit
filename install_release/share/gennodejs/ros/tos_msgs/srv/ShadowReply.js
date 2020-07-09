// Auto-generated. Do not edit!

// (in-package tos_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TruckCommand = require('../msg/TruckCommand.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ShadowReplyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.truck_command = null;
    }
    else {
      if (initObj.hasOwnProperty('truck_command')) {
        this.truck_command = initObj.truck_command
      }
      else {
        this.truck_command = new TruckCommand();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShadowReplyRequest
    // Serialize message field [truck_command]
    bufferOffset = TruckCommand.serialize(obj.truck_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShadowReplyRequest
    let len;
    let data = new ShadowReplyRequest(null);
    // Deserialize message field [truck_command]
    data.truck_command = TruckCommand.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TruckCommand.getMessageSize(object.truck_command);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tos_msgs/ShadowReplyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cfb82ffa884aebdfaca26ce4b3f7816';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TruckCommand truck_command
    
    
    ================================================================================
    MSG: tos_msgs/TruckCommand
    # confirm type
    uint8 CONFIRM         = 1
    uint8 REFRESH         = 2
    
    Header header
    
    # task id
    uint32 task_id
    
    uint8 confirm_type
    
    
    # for test
    string cheid
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
    const resolved = new ShadowReplyRequest(null);
    if (msg.truck_command !== undefined) {
      resolved.truck_command = TruckCommand.Resolve(msg.truck_command)
    }
    else {
      resolved.truck_command = new TruckCommand()
    }

    return resolved;
    }
};

class ShadowReplyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShadowReplyResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShadowReplyResponse
    let len;
    let data = new ShadowReplyResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tos_msgs/ShadowReplyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '284aa12dd9e9e760802ac9f38036ea5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShadowReplyResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ShadowReplyRequest,
  Response: ShadowReplyResponse,
  md5sum() { return 'a1ee2e3e7e332f4cc76fbd43af36a624'; },
  datatype() { return 'tos_msgs/ShadowReply'; }
};
