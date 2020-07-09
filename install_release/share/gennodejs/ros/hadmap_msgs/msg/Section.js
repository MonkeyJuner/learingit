// Auto-generated. Do not edit!

// (in-package hadmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Lane = require('./Lane.js');

//-----------------------------------------------------------

class Section {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.lanes = null;
      this.predecessors = null;
      this.successors = null;
      this.type = null;
      this.stop_distances = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
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
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('stop_distances')) {
        this.stop_distances = initObj.stop_distances
      }
      else {
        this.stop_distances = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Section
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = Lane.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [predecessors]
    bufferOffset = _arraySerializer.int32(obj.predecessors, buffer, bufferOffset, null);
    // Serialize message field [successors]
    bufferOffset = _arraySerializer.int32(obj.successors, buffer, bufferOffset, null);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [stop_distances]
    bufferOffset = _arraySerializer.float64(obj.stop_distances, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Section
    let len;
    let data = new Section(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = Lane.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [predecessors]
    data.predecessors = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [successors]
    data.successors = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stop_distances]
    data.stop_distances = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.lanes.forEach((val) => {
      length += Lane.getMessageSize(val);
    });
    length += 4 * object.predecessors.length;
    length += 4 * object.successors.length;
    length += 8 * object.stop_distances.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hadmap_msgs/Section';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c159119e0202171ae854a4c79c42cd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TYPE_NORMAL = 0
    uint8 TYPE_CROSS_BEFORE = 1
    uint8 TYPE_CROSS_AFTER = 2
    uint8 TYPE_CROSS_BEFORE_AND_AFTER = 3
    
    int32 id
    Lane[] lanes
    int32[] predecessors
    int32[] successors
    uint8 type # 
    
    float64[] stop_distances
    
    ================================================================================
    MSG: hadmap_msgs/Lane
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
    const resolved = new Section(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = Lane.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
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

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.stop_distances !== undefined) {
      resolved.stop_distances = msg.stop_distances;
    }
    else {
      resolved.stop_distances = []
    }

    return resolved;
    }
};

// Constants for message
Section.Constants = {
  TYPE_NORMAL: 0,
  TYPE_CROSS_BEFORE: 1,
  TYPE_CROSS_AFTER: 2,
  TYPE_CROSS_BEFORE_AND_AFTER: 3,
}

module.exports = Section;
