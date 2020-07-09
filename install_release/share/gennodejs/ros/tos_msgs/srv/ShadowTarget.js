// Auto-generated. Do not edit!

// (in-package tos_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TruckTarget = require('../msg/TruckTarget.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ShadowTargetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.truck_target = null;
    }
    else {
      if (initObj.hasOwnProperty('truck_target')) {
        this.truck_target = initObj.truck_target
      }
      else {
        this.truck_target = new TruckTarget();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShadowTargetRequest
    // Serialize message field [truck_target]
    bufferOffset = TruckTarget.serialize(obj.truck_target, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShadowTargetRequest
    let len;
    let data = new ShadowTargetRequest(null);
    // Deserialize message field [truck_target]
    data.truck_target = TruckTarget.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TruckTarget.getMessageSize(object.truck_target);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tos_msgs/ShadowTargetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7dbdabb95200fe85e191f164fd27ae8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TruckTarget truck_target
    
    
    ================================================================================
    MSG: tos_msgs/TruckTarget
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
    const resolved = new ShadowTargetRequest(null);
    if (msg.truck_target !== undefined) {
      resolved.truck_target = TruckTarget.Resolve(msg.truck_target)
    }
    else {
      resolved.truck_target = new TruckTarget()
    }

    return resolved;
    }
};

class ShadowTargetResponse {
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
    // Serializes a message object of type ShadowTargetResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShadowTargetResponse
    let len;
    let data = new ShadowTargetResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tos_msgs/ShadowTargetResponse';
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
    const resolved = new ShadowTargetResponse(null);
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
  Request: ShadowTargetRequest,
  Response: ShadowTargetResponse,
  md5sum() { return 'c8f1f473ae1dd2b6970b5ebd559b96a3'; },
  datatype() { return 'tos_msgs/ShadowTarget'; }
};
