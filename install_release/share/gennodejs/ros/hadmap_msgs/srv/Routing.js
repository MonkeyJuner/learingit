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

class RoutingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_lane_id = null;
      this.dst_lane_id = null;
    }
    else {
      if (initObj.hasOwnProperty('start_lane_id')) {
        this.start_lane_id = initObj.start_lane_id
      }
      else {
        this.start_lane_id = '';
      }
      if (initObj.hasOwnProperty('dst_lane_id')) {
        this.dst_lane_id = initObj.dst_lane_id
      }
      else {
        this.dst_lane_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutingRequest
    // Serialize message field [start_lane_id]
    bufferOffset = _serializer.string(obj.start_lane_id, buffer, bufferOffset);
    // Serialize message field [dst_lane_id]
    bufferOffset = _serializer.string(obj.dst_lane_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutingRequest
    let len;
    let data = new RoutingRequest(null);
    // Deserialize message field [start_lane_id]
    data.start_lane_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dst_lane_id]
    data.dst_lane_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.start_lane_id.length;
    length += object.dst_lane_id.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hadmap_msgs/RoutingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6cc3982caf09dcb0db0c9a087979ba2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string start_lane_id
    string dst_lane_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoutingRequest(null);
    if (msg.start_lane_id !== undefined) {
      resolved.start_lane_id = msg.start_lane_id;
    }
    else {
      resolved.start_lane_id = ''
    }

    if (msg.dst_lane_id !== undefined) {
      resolved.dst_lane_id = msg.dst_lane_id;
    }
    else {
      resolved.dst_lane_id = ''
    }

    return resolved;
    }
};

class RoutingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planning_path = null;
    }
    else {
      if (initObj.hasOwnProperty('planning_path')) {
        this.planning_path = initObj.planning_path
      }
      else {
        this.planning_path = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutingResponse
    // Serialize message field [planning_path]
    bufferOffset = _arraySerializer.string(obj.planning_path, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutingResponse
    let len;
    let data = new RoutingResponse(null);
    // Deserialize message field [planning_path]
    data.planning_path = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.planning_path.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hadmap_msgs/RoutingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd869bde3b90bc5075c24bb8e8ac26936';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] planning_path
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoutingResponse(null);
    if (msg.planning_path !== undefined) {
      resolved.planning_path = msg.planning_path;
    }
    else {
      resolved.planning_path = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RoutingRequest,
  Response: RoutingResponse,
  md5sum() { return '1d09afa1493d77ed4bdd69b158969b61'; },
  datatype() { return 'hadmap_msgs/Routing'; }
};
