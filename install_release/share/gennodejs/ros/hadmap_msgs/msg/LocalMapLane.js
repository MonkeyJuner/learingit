// Auto-generated. Do not edit!

// (in-package hadmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocalMapPoint = require('./LocalMapPoint.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LocalMapLane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.residual_len = null;
      this.stopline_distance = null;
      this.stopline = null;
      this.center = null;
      this.left = null;
      this.right = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('residual_len')) {
        this.residual_len = initObj.residual_len
      }
      else {
        this.residual_len = 0.0;
      }
      if (initObj.hasOwnProperty('stopline_distance')) {
        this.stopline_distance = initObj.stopline_distance
      }
      else {
        this.stopline_distance = 0.0;
      }
      if (initObj.hasOwnProperty('stopline')) {
        this.stopline = initObj.stopline
      }
      else {
        this.stopline = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = [];
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = [];
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalMapLane
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [residual_len]
    bufferOffset = _serializer.float32(obj.residual_len, buffer, bufferOffset);
    // Serialize message field [stopline_distance]
    bufferOffset = _serializer.float32(obj.stopline_distance, buffer, bufferOffset);
    // Serialize message field [stopline]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.stopline, buffer, bufferOffset);
    // Serialize message field [center]
    // Serialize the length for message field [center]
    bufferOffset = _serializer.uint32(obj.center.length, buffer, bufferOffset);
    obj.center.forEach((val) => {
      bufferOffset = LocalMapPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [left]
    // Serialize the length for message field [left]
    bufferOffset = _serializer.uint32(obj.left.length, buffer, bufferOffset);
    obj.left.forEach((val) => {
      bufferOffset = LocalMapPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right]
    // Serialize the length for message field [right]
    bufferOffset = _serializer.uint32(obj.right.length, buffer, bufferOffset);
    obj.right.forEach((val) => {
      bufferOffset = LocalMapPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalMapLane
    let len;
    let data = new LocalMapLane(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [residual_len]
    data.residual_len = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stopline_distance]
    data.stopline_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stopline]
    data.stopline = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [center]
    // Deserialize array length for message field [center]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.center = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.center[i] = LocalMapPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [left]
    // Deserialize array length for message field [left]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left[i] = LocalMapPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right]
    // Deserialize array length for message field [right]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right[i] = LocalMapPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 33 * object.center.length;
    length += 33 * object.left.length;
    length += 33 * object.right.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hadmap_msgs/LocalMapLane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3a9c307847eb3878abedcf1188d3601';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # lane id
    int32 id
    # residual length
    float32 residual_len
    
    float32 stopline_distance
    geometry_msgs/Point stopline
    
    # central planning points
    LocalMapPoint[] center
    # left boundary
    LocalMapPoint[] left
    # right boundary
    LocalMapPoint[] right
    
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: hadmap_msgs/LocalMapPoint
    uint8 TYPE_CROSS = 0
    uint8 TYPE_NOT_CROSS = 1
    
    # lane point localization
    geometry_msgs/Point point
    # heading angle
    float32 heading
    # now: cross or not
    uint8 type
    # speed limit
    float32 speed_limit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalMapLane(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.residual_len !== undefined) {
      resolved.residual_len = msg.residual_len;
    }
    else {
      resolved.residual_len = 0.0
    }

    if (msg.stopline_distance !== undefined) {
      resolved.stopline_distance = msg.stopline_distance;
    }
    else {
      resolved.stopline_distance = 0.0
    }

    if (msg.stopline !== undefined) {
      resolved.stopline = geometry_msgs.msg.Point.Resolve(msg.stopline)
    }
    else {
      resolved.stopline = new geometry_msgs.msg.Point()
    }

    if (msg.center !== undefined) {
      resolved.center = new Array(msg.center.length);
      for (let i = 0; i < resolved.center.length; ++i) {
        resolved.center[i] = LocalMapPoint.Resolve(msg.center[i]);
      }
    }
    else {
      resolved.center = []
    }

    if (msg.left !== undefined) {
      resolved.left = new Array(msg.left.length);
      for (let i = 0; i < resolved.left.length; ++i) {
        resolved.left[i] = LocalMapPoint.Resolve(msg.left[i]);
      }
    }
    else {
      resolved.left = []
    }

    if (msg.right !== undefined) {
      resolved.right = new Array(msg.right.length);
      for (let i = 0; i < resolved.right.length; ++i) {
        resolved.right[i] = LocalMapPoint.Resolve(msg.right[i]);
      }
    }
    else {
      resolved.right = []
    }

    return resolved;
    }
};

module.exports = LocalMapLane;
