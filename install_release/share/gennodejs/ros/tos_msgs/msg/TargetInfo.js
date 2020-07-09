// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Container = require('./Container.js');

//-----------------------------------------------------------

class TargetInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_type = null;
      this.section = null;
      this.bay = null;
      this.transfer_zone = null;
      this.gantry_crane_id = null;
      this.lane_id = null;
      this.container = null;
      this.move_stage = null;
      this.ppos = null;
    }
    else {
      if (initObj.hasOwnProperty('target_type')) {
        this.target_type = initObj.target_type
      }
      else {
        this.target_type = 0;
      }
      if (initObj.hasOwnProperty('section')) {
        this.section = initObj.section
      }
      else {
        this.section = '';
      }
      if (initObj.hasOwnProperty('bay')) {
        this.bay = initObj.bay
      }
      else {
        this.bay = '';
      }
      if (initObj.hasOwnProperty('transfer_zone')) {
        this.transfer_zone = initObj.transfer_zone
      }
      else {
        this.transfer_zone = '';
      }
      if (initObj.hasOwnProperty('gantry_crane_id')) {
        this.gantry_crane_id = initObj.gantry_crane_id
      }
      else {
        this.gantry_crane_id = '';
      }
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = '';
      }
      if (initObj.hasOwnProperty('container')) {
        this.container = initObj.container
      }
      else {
        this.container = new Container();
      }
      if (initObj.hasOwnProperty('move_stage')) {
        this.move_stage = initObj.move_stage
      }
      else {
        this.move_stage = '';
      }
      if (initObj.hasOwnProperty('ppos')) {
        this.ppos = initObj.ppos
      }
      else {
        this.ppos = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargetInfo
    // Serialize message field [target_type]
    bufferOffset = _serializer.uint8(obj.target_type, buffer, bufferOffset);
    // Serialize message field [section]
    bufferOffset = _serializer.string(obj.section, buffer, bufferOffset);
    // Serialize message field [bay]
    bufferOffset = _serializer.string(obj.bay, buffer, bufferOffset);
    // Serialize message field [transfer_zone]
    bufferOffset = _serializer.string(obj.transfer_zone, buffer, bufferOffset);
    // Serialize message field [gantry_crane_id]
    bufferOffset = _serializer.string(obj.gantry_crane_id, buffer, bufferOffset);
    // Serialize message field [lane_id]
    bufferOffset = _serializer.string(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [container]
    bufferOffset = Container.serialize(obj.container, buffer, bufferOffset);
    // Serialize message field [move_stage]
    bufferOffset = _serializer.string(obj.move_stage, buffer, bufferOffset);
    // Serialize message field [ppos]
    bufferOffset = _serializer.string(obj.ppos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargetInfo
    let len;
    let data = new TargetInfo(null);
    // Deserialize message field [target_type]
    data.target_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [section]
    data.section = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bay]
    data.bay = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [transfer_zone]
    data.transfer_zone = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gantry_crane_id]
    data.gantry_crane_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [container]
    data.container = Container.deserialize(buffer, bufferOffset);
    // Deserialize message field [move_stage]
    data.move_stage = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ppos]
    data.ppos = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.section.length;
    length += object.bay.length;
    length += object.transfer_zone.length;
    length += object.gantry_crane_id.length;
    length += object.lane_id.length;
    length += Container.getMessageSize(object.container);
    length += object.move_stage.length;
    length += object.ppos.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TargetInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '677d252aa7d6e6bd4ba970587d5907b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TargetInfo(null);
    if (msg.target_type !== undefined) {
      resolved.target_type = msg.target_type;
    }
    else {
      resolved.target_type = 0
    }

    if (msg.section !== undefined) {
      resolved.section = msg.section;
    }
    else {
      resolved.section = ''
    }

    if (msg.bay !== undefined) {
      resolved.bay = msg.bay;
    }
    else {
      resolved.bay = ''
    }

    if (msg.transfer_zone !== undefined) {
      resolved.transfer_zone = msg.transfer_zone;
    }
    else {
      resolved.transfer_zone = ''
    }

    if (msg.gantry_crane_id !== undefined) {
      resolved.gantry_crane_id = msg.gantry_crane_id;
    }
    else {
      resolved.gantry_crane_id = ''
    }

    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = ''
    }

    if (msg.container !== undefined) {
      resolved.container = Container.Resolve(msg.container)
    }
    else {
      resolved.container = new Container()
    }

    if (msg.move_stage !== undefined) {
      resolved.move_stage = msg.move_stage;
    }
    else {
      resolved.move_stage = ''
    }

    if (msg.ppos !== undefined) {
      resolved.ppos = msg.ppos;
    }
    else {
      resolved.ppos = ''
    }

    return resolved;
    }
};

// Constants for message
TargetInfo.Constants = {
  NORMAL_YARD_CRANE: 0,
  AUTOMATIC_YARD_CRANE: 1,
  GANTRY_CRANE: 2,
  TRANSFER_ZONE: 3,
}

module.exports = TargetInfo;
