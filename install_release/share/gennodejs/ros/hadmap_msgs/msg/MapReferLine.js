// Auto-generated. Do not edit!

// (in-package hadmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapSplineCoeff = require('./MapSplineCoeff.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MapReferLine {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_point = null;
      this.heading = null;
      this.length = null;
      this.spline_coeff = null;
    }
    else {
      if (initObj.hasOwnProperty('start_point')) {
        this.start_point = initObj.start_point
      }
      else {
        this.start_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('spline_coeff')) {
        this.spline_coeff = initObj.spline_coeff
      }
      else {
        this.spline_coeff = new MapSplineCoeff();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapReferLine
    // Serialize message field [start_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.start_point, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [spline_coeff]
    bufferOffset = MapSplineCoeff.serialize(obj.spline_coeff, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapReferLine
    let len;
    let data = new MapReferLine(null);
    // Deserialize message field [start_point]
    data.start_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [spline_coeff]
    data.spline_coeff = MapSplineCoeff.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MapSplineCoeff.getMessageSize(object.spline_coeff);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hadmap_msgs/MapReferLine';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34d3d1855a2eb9af60516c0b14a979dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Point start_point
    float64 heading
    float64 length
    MapSplineCoeff spline_coeff
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: hadmap_msgs/MapSplineCoeff
    float64 start_offset
    uint8 degree
    uint8 dimension
    float64 scale
    float64[] spline_knots
    geometry_msgs/Point[] spline_points
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapReferLine(null);
    if (msg.start_point !== undefined) {
      resolved.start_point = geometry_msgs.msg.Point.Resolve(msg.start_point)
    }
    else {
      resolved.start_point = new geometry_msgs.msg.Point()
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.spline_coeff !== undefined) {
      resolved.spline_coeff = MapSplineCoeff.Resolve(msg.spline_coeff)
    }
    else {
      resolved.spline_coeff = new MapSplineCoeff()
    }

    return resolved;
    }
};

module.exports = MapReferLine;
