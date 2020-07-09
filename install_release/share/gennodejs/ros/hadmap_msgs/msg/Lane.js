// Auto-generated. Do not edit!

// (in-package hadmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point = require('./Point.js');

//-----------------------------------------------------------

class Lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.pt_start = null;
      this.pt_end = null;
      this.predecessors = null;
      this.successors = null;
      this.pts_center = null;
      this.pts_left = null;
      this.pts_right = null;
      this.len_integral = null;
      this.speed_limit = null;
      this.line_left_type = null;
      this.line_right_type = null;
      this.resign_id = null;
      this.residual_len = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('pt_start')) {
        this.pt_start = initObj.pt_start
      }
      else {
        this.pt_start = new Point();
      }
      if (initObj.hasOwnProperty('pt_end')) {
        this.pt_end = initObj.pt_end
      }
      else {
        this.pt_end = new Point();
      }
      if (initObj.hasOwnProperty('predecessors')) {
        this.predecessors = initObj.predecessors
      }
      else {
        this.predecessors = [];
      }
      if (initObj.hasOwnProperty('successors')) {
        this.successors = initObj.successors
      }
      else {
        this.successors = [];
      }
      if (initObj.hasOwnProperty('pts_center')) {
        this.pts_center = initObj.pts_center
      }
      else {
        this.pts_center = [];
      }
      if (initObj.hasOwnProperty('pts_left')) {
        this.pts_left = initObj.pts_left
      }
      else {
        this.pts_left = [];
      }
      if (initObj.hasOwnProperty('pts_right')) {
        this.pts_right = initObj.pts_right
      }
      else {
        this.pts_right = [];
      }
      if (initObj.hasOwnProperty('len_integral')) {
        this.len_integral = initObj.len_integral
      }
      else {
        this.len_integral = [];
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('line_left_type')) {
        this.line_left_type = initObj.line_left_type
      }
      else {
        this.line_left_type = 0;
      }
      if (initObj.hasOwnProperty('line_right_type')) {
        this.line_right_type = initObj.line_right_type
      }
      else {
        this.line_right_type = 0;
      }
      if (initObj.hasOwnProperty('resign_id')) {
        this.resign_id = initObj.resign_id
      }
      else {
        this.resign_id = 0;
      }
      if (initObj.hasOwnProperty('residual_len')) {
        this.residual_len = initObj.residual_len
      }
      else {
        this.residual_len = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lane
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [pt_start]
    bufferOffset = Point.serialize(obj.pt_start, buffer, bufferOffset);
    // Serialize message field [pt_end]
    bufferOffset = Point.serialize(obj.pt_end, buffer, bufferOffset);
    // Serialize message field [predecessors]
    bufferOffset = _arraySerializer.int32(obj.predecessors, buffer, bufferOffset, null);
    // Serialize message field [successors]
    bufferOffset = _arraySerializer.int32(obj.successors, buffer, bufferOffset, null);
    // Serialize message field [pts_center]
    // Serialize the length for message field [pts_center]
    bufferOffset = _serializer.uint32(obj.pts_center.length, buffer, bufferOffset);
    obj.pts_center.forEach((val) => {
      bufferOffset = Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pts_left]
    // Serialize the length for message field [pts_left]
    bufferOffset = _serializer.uint32(obj.pts_left.length, buffer, bufferOffset);
    obj.pts_left.forEach((val) => {
      bufferOffset = Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pts_right]
    // Serialize the length for message field [pts_right]
    bufferOffset = _serializer.uint32(obj.pts_right.length, buffer, bufferOffset);
    obj.pts_right.forEach((val) => {
      bufferOffset = Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [len_integral]
    bufferOffset = _arraySerializer.float64(obj.len_integral, buffer, bufferOffset, null);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float64(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [line_left_type]
    bufferOffset = _serializer.uint8(obj.line_left_type, buffer, bufferOffset);
    // Serialize message field [line_right_type]
    bufferOffset = _serializer.uint8(obj.line_right_type, buffer, bufferOffset);
    // Serialize message field [resign_id]
    bufferOffset = _serializer.int32(obj.resign_id, buffer, bufferOffset);
    // Serialize message field [residual_len]
    bufferOffset = _serializer.float32(obj.residual_len, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lane
    let len;
    let data = new Lane(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pt_start]
    data.pt_start = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pt_end]
    data.pt_end = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [predecessors]
    data.predecessors = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [successors]
    data.successors = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pts_center]
    // Deserialize array length for message field [pts_center]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts_center = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts_center[i] = Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pts_left]
    // Deserialize array length for message field [pts_left]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts_left = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts_left[i] = Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pts_right]
    // Deserialize array length for message field [pts_right]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts_right = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts_right[i] = Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [len_integral]
    data.len_integral = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [line_left_type]
    data.line_left_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [line_right_type]
    data.line_right_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [resign_id]
    data.resign_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [residual_len]
    data.residual_len = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.predecessors.length;
    length += 4 * object.successors.length;
    length += 41 * object.pts_center.length;
    length += 41 * object.pts_left.length;
    length += 41 * object.pts_right.length;
    length += 8 * object.len_integral.length;
    return length + 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hadmap_msgs/Lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b50505f45a3b08e2ee38ee2c2f0b9f41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    
    Point pt_start
    Point pt_end
    
    int32[] predecessors
    int32[] successors
    
    Point[] pts_center
    Point[] pts_left
    Point[] pts_right
    
    float64[] len_integral
    
    float64 speed_limit
    
    ## not used
    uint8 line_left_type
    uint8 line_right_type
    
    ## dynamic
    int32 resign_id
    float32 residual_len
    
    ================================================================================
    MSG: hadmap_msgs/Point
    int32 id
    
    geometry_msgs/Point point
    
    ## not used
    
    float32 heading
    float64 delta_s
    uint8 property
    
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
    const resolved = new Lane(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.pt_start !== undefined) {
      resolved.pt_start = Point.Resolve(msg.pt_start)
    }
    else {
      resolved.pt_start = new Point()
    }

    if (msg.pt_end !== undefined) {
      resolved.pt_end = Point.Resolve(msg.pt_end)
    }
    else {
      resolved.pt_end = new Point()
    }

    if (msg.predecessors !== undefined) {
      resolved.predecessors = msg.predecessors;
    }
    else {
      resolved.predecessors = []
    }

    if (msg.successors !== undefined) {
      resolved.successors = msg.successors;
    }
    else {
      resolved.successors = []
    }

    if (msg.pts_center !== undefined) {
      resolved.pts_center = new Array(msg.pts_center.length);
      for (let i = 0; i < resolved.pts_center.length; ++i) {
        resolved.pts_center[i] = Point.Resolve(msg.pts_center[i]);
      }
    }
    else {
      resolved.pts_center = []
    }

    if (msg.pts_left !== undefined) {
      resolved.pts_left = new Array(msg.pts_left.length);
      for (let i = 0; i < resolved.pts_left.length; ++i) {
        resolved.pts_left[i] = Point.Resolve(msg.pts_left[i]);
      }
    }
    else {
      resolved.pts_left = []
    }

    if (msg.pts_right !== undefined) {
      resolved.pts_right = new Array(msg.pts_right.length);
      for (let i = 0; i < resolved.pts_right.length; ++i) {
        resolved.pts_right[i] = Point.Resolve(msg.pts_right[i]);
      }
    }
    else {
      resolved.pts_right = []
    }

    if (msg.len_integral !== undefined) {
      resolved.len_integral = msg.len_integral;
    }
    else {
      resolved.len_integral = []
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    if (msg.line_left_type !== undefined) {
      resolved.line_left_type = msg.line_left_type;
    }
    else {
      resolved.line_left_type = 0
    }

    if (msg.line_right_type !== undefined) {
      resolved.line_right_type = msg.line_right_type;
    }
    else {
      resolved.line_right_type = 0
    }

    if (msg.resign_id !== undefined) {
      resolved.resign_id = msg.resign_id;
    }
    else {
      resolved.resign_id = 0
    }

    if (msg.residual_len !== undefined) {
      resolved.residual_len = msg.residual_len;
    }
    else {
      resolved.residual_len = 0.0
    }

    return resolved;
    }
};

module.exports = Lane;
