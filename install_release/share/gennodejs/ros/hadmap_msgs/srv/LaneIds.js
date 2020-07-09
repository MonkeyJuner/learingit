// Auto-generated. Do not edit!

// (in-package hadmap_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LaneIdsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.idx = null;
    }
    else {
      if (initObj.hasOwnProperty('idx')) {
        this.idx = initObj.idx
      }
      else {
        this.idx = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneIdsRequest
    // Serialize message field [idx]
    bufferOffset = _serializer.int32(obj.idx, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneIdsRequest
    let len;
    let data = new LaneIdsRequest(null);
    // Deserialize message field [idx]
    data.idx = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hadmap_msgs/LaneIdsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd754bdc13f4ba76e8c11d82437f16e9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 idx
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneIdsRequest(null);
    if (msg.idx !== undefined) {
      resolved.idx = msg.idx;
    }
    else {
      resolved.idx = 0
    }

    return resolved;
    }
};

class LaneIdsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_ids')) {
        this.lane_ids = initObj.lane_ids
      }
      else {
        this.lane_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneIdsResponse
    // Serialize message field [lane_ids]
    bufferOffset = _arraySerializer.string(obj.lane_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneIdsResponse
    let len;
    let data = new LaneIdsResponse(null);
    // Deserialize message field [lane_ids]
    data.lane_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.lane_ids.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hadmap_msgs/LaneIdsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18d74b7340bb9b1a9de825435edadadc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] lane_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneIdsResponse(null);
    if (msg.lane_ids !== undefined) {
      resolved.lane_ids = msg.lane_ids;
    }
    else {
      resolved.lane_ids = []
    }

    return resolved;
    }
};

module.exports = {
  Request: LaneIdsRequest,
  Response: LaneIdsResponse,
  md5sum() { return '7877fa7c982b195fc7441f07ae1fc06e'; },
  datatype() { return 'hadmap_msgs/LaneIds'; }
};
