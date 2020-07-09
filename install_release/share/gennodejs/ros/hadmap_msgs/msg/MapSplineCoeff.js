// Auto-generated. Do not edit!

// (in-package hadmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MapSplineCoeff {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_offset = null;
      this.degree = null;
      this.dimension = null;
      this.scale = null;
      this.spline_knots = null;
      this.spline_points = null;
    }
    else {
      if (initObj.hasOwnProperty('start_offset')) {
        this.start_offset = initObj.start_offset
      }
      else {
        this.start_offset = 0.0;
      }
      if (initObj.hasOwnProperty('degree')) {
        this.degree = initObj.degree
      }
      else {
        this.degree = 0;
      }
      if (initObj.hasOwnProperty('dimension')) {
        this.dimension = initObj.dimension
      }
      else {
        this.dimension = 0;
      }
      if (initObj.hasOwnProperty('scale')) {
        this.scale = initObj.scale
      }
      else {
        this.scale = 0.0;
      }
      if (initObj.hasOwnProperty('spline_knots')) {
        this.spline_knots = initObj.spline_knots
      }
      else {
        this.spline_knots = [];
      }
      if (initObj.hasOwnProperty('spline_points')) {
        this.spline_points = initObj.spline_points
      }
      else {
        this.spline_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapSplineCoeff
    // Serialize message field [start_offset]
    bufferOffset = _serializer.float64(obj.start_offset, buffer, bufferOffset);
    // Serialize message field [degree]
    bufferOffset = _serializer.uint8(obj.degree, buffer, bufferOffset);
    // Serialize message field [dimension]
    bufferOffset = _serializer.uint8(obj.dimension, buffer, bufferOffset);
    // Serialize message field [scale]
    bufferOffset = _serializer.float64(obj.scale, buffer, bufferOffset);
    // Serialize message field [spline_knots]
    bufferOffset = _arraySerializer.float64(obj.spline_knots, buffer, bufferOffset, null);
    // Serialize message field [spline_points]
    // Serialize the length for message field [spline_points]
    bufferOffset = _serializer.uint32(obj.spline_points.length, buffer, bufferOffset);
    obj.spline_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapSplineCoeff
    let len;
    let data = new MapSplineCoeff(null);
    // Deserialize message field [start_offset]
    data.start_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [degree]
    data.degree = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dimension]
    data.dimension = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [scale]
    data.scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [spline_knots]
    data.spline_knots = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [spline_points]
    // Deserialize array length for message field [spline_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.spline_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.spline_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.spline_knots.length;
    length += 24 * object.spline_points.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hadmap_msgs/MapSplineCoeff';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34d58849d5e7cd6a6cb25c0db7a7a880';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 start_offset
    uint8 degree
    uint8 dimension
    float64 scale
    float64[] spline_knots
    geometry_msgs/Point[] spline_points
    
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
    const resolved = new MapSplineCoeff(null);
    if (msg.start_offset !== undefined) {
      resolved.start_offset = msg.start_offset;
    }
    else {
      resolved.start_offset = 0.0
    }

    if (msg.degree !== undefined) {
      resolved.degree = msg.degree;
    }
    else {
      resolved.degree = 0
    }

    if (msg.dimension !== undefined) {
      resolved.dimension = msg.dimension;
    }
    else {
      resolved.dimension = 0
    }

    if (msg.scale !== undefined) {
      resolved.scale = msg.scale;
    }
    else {
      resolved.scale = 0.0
    }

    if (msg.spline_knots !== undefined) {
      resolved.spline_knots = msg.spline_knots;
    }
    else {
      resolved.spline_knots = []
    }

    if (msg.spline_points !== undefined) {
      resolved.spline_points = new Array(msg.spline_points.length);
      for (let i = 0; i < resolved.spline_points.length; ++i) {
        resolved.spline_points[i] = geometry_msgs.msg.Point.Resolve(msg.spline_points[i]);
      }
    }
    else {
      resolved.spline_points = []
    }

    return resolved;
    }
};

module.exports = MapSplineCoeff;
