// Auto-generated. Do not edit!

// (in-package hadmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapPolyCoeff = require('./MapPolyCoeff.js');

//-----------------------------------------------------------

class MapLane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_type = null;
      this.poly_coeffs = null;
      this.predecessor = null;
      this.successor = null;
      this.lane_residual_len = null;
      this.speed_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_type')) {
        this.lane_type = initObj.lane_type
      }
      else {
        this.lane_type = 0;
      }
      if (initObj.hasOwnProperty('poly_coeffs')) {
        this.poly_coeffs = initObj.poly_coeffs
      }
      else {
        this.poly_coeffs = [];
      }
      if (initObj.hasOwnProperty('predecessor')) {
        this.predecessor = initObj.predecessor
      }
      else {
        this.predecessor = 0;
      }
      if (initObj.hasOwnProperty('successor')) {
        this.successor = initObj.successor
      }
      else {
        this.successor = 0;
      }
      if (initObj.hasOwnProperty('lane_residual_len')) {
        this.lane_residual_len = initObj.lane_residual_len
      }
      else {
        this.lane_residual_len = 0.0;
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapLane
    // Serialize message field [lane_type]
    bufferOffset = _serializer.uint8(obj.lane_type, buffer, bufferOffset);
    // Serialize message field [poly_coeffs]
    // Serialize the length for message field [poly_coeffs]
    bufferOffset = _serializer.uint32(obj.poly_coeffs.length, buffer, bufferOffset);
    obj.poly_coeffs.forEach((val) => {
      bufferOffset = MapPolyCoeff.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [predecessor]
    bufferOffset = _serializer.int16(obj.predecessor, buffer, bufferOffset);
    // Serialize message field [successor]
    bufferOffset = _serializer.int16(obj.successor, buffer, bufferOffset);
    // Serialize message field [lane_residual_len]
    bufferOffset = _serializer.float32(obj.lane_residual_len, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float32(obj.speed_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapLane
    let len;
    let data = new MapLane(null);
    // Deserialize message field [lane_type]
    data.lane_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [poly_coeffs]
    // Deserialize array length for message field [poly_coeffs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poly_coeffs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poly_coeffs[i] = MapPolyCoeff.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [predecessor]
    data.predecessor = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [successor]
    data.successor = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [lane_residual_len]
    data.lane_residual_len = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.poly_coeffs.forEach((val) => {
      length += MapPolyCoeff.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hadmap_msgs/MapLane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1afa43e53ccebe2d6ea6280b4380157c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 lane_type
    
    MapPolyCoeff[] poly_coeffs
    
    int16 predecessor
    int16 successor
    
    float32 lane_residual_len
    float32 speed_limit
    
    ================================================================================
    MSG: hadmap_msgs/MapPolyCoeff
    float64 offset
    float64[] poly_parameters
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapLane(null);
    if (msg.lane_type !== undefined) {
      resolved.lane_type = msg.lane_type;
    }
    else {
      resolved.lane_type = 0
    }

    if (msg.poly_coeffs !== undefined) {
      resolved.poly_coeffs = new Array(msg.poly_coeffs.length);
      for (let i = 0; i < resolved.poly_coeffs.length; ++i) {
        resolved.poly_coeffs[i] = MapPolyCoeff.Resolve(msg.poly_coeffs[i]);
      }
    }
    else {
      resolved.poly_coeffs = []
    }

    if (msg.predecessor !== undefined) {
      resolved.predecessor = msg.predecessor;
    }
    else {
      resolved.predecessor = 0
    }

    if (msg.successor !== undefined) {
      resolved.successor = msg.successor;
    }
    else {
      resolved.successor = 0
    }

    if (msg.lane_residual_len !== undefined) {
      resolved.lane_residual_len = msg.lane_residual_len;
    }
    else {
      resolved.lane_residual_len = 0.0
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    return resolved;
    }
};

module.exports = MapLane;
