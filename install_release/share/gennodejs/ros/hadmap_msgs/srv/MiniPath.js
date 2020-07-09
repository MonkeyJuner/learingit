// Auto-generated. Do not edit!

// (in-package hadmap_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let MiniPoint = require('../msg/MiniPoint.js');

//-----------------------------------------------------------

class MiniPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MiniPathRequest
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MiniPathRequest
    let len;
    let data = new MiniPathRequest(null);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hadmap_msgs/MiniPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7bb0ef028c744b081acdc57743b11d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Point position
    
    
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
    const resolved = new MiniPathRequest(null);
    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class MiniPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_path = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_path')) {
        this.joint_path = initObj.joint_path
      }
      else {
        this.joint_path = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MiniPathResponse
    // Serialize message field [joint_path]
    // Serialize the length for message field [joint_path]
    bufferOffset = _serializer.uint32(obj.joint_path.length, buffer, bufferOffset);
    obj.joint_path.forEach((val) => {
      bufferOffset = MiniPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MiniPathResponse
    let len;
    let data = new MiniPathResponse(null);
    // Deserialize message field [joint_path]
    // Deserialize array length for message field [joint_path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_path[i] = MiniPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 28 * object.joint_path.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hadmap_msgs/MiniPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33b0b679c2c4163d6c3f33fc38f9bffd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    MiniPoint[] joint_path
    
    
    ================================================================================
    MSG: hadmap_msgs/MiniPoint
    int32 id
    geometry_msgs/Point point
    
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
    const resolved = new MiniPathResponse(null);
    if (msg.joint_path !== undefined) {
      resolved.joint_path = new Array(msg.joint_path.length);
      for (let i = 0; i < resolved.joint_path.length; ++i) {
        resolved.joint_path[i] = MiniPoint.Resolve(msg.joint_path[i]);
      }
    }
    else {
      resolved.joint_path = []
    }

    return resolved;
    }
};

module.exports = {
  Request: MiniPathRequest,
  Response: MiniPathResponse,
  md5sum() { return '236efb3fe2cd8a6bbaa85a93082c96ac'; },
  datatype() { return 'hadmap_msgs/MiniPath'; }
};
