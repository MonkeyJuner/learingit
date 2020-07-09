// Auto-generated. Do not edit!

// (in-package pnc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathPoint = require('./PathPoint.js');

//-----------------------------------------------------------

class TrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_point = null;
      this.v = null;
      this.a = null;
      this.relative_time = null;
    }
    else {
      if (initObj.hasOwnProperty('path_point')) {
        this.path_point = initObj.path_point
      }
      else {
        this.path_point = new PathPoint();
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
      if (initObj.hasOwnProperty('relative_time')) {
        this.relative_time = initObj.relative_time
      }
      else {
        this.relative_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPoint
    // Serialize message field [path_point]
    bufferOffset = PathPoint.serialize(obj.path_point, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float64(obj.v, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float64(obj.a, buffer, bufferOffset);
    // Serialize message field [relative_time]
    bufferOffset = _serializer.float64(obj.relative_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryPoint
    let len;
    let data = new TrajectoryPoint(null);
    // Deserialize message field [path_point]
    data.path_point = PathPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relative_time]
    data.relative_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnc_msgs/TrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a43a3290619888e9cb73555dd15375b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # path data
    PathPoint path_point
    
    # linear velocity in [m/s]
    float64 v
    # linear acceleration in [m/s^2]
    float64 a
    # relative time from beginning of the trajectory in [s]
    float64 relative_time
    ================================================================================
    MSG: pnc_msgs/PathPoint
    # coordinates in [m]
    float64 x
    float64 y
    float64 z
    
    # accumulated distance from beginning of the path in [m]
    float64 s
    
    # direction on the x-y plane in [0 ~ 2π]
    float64 theta
    
    # curvature on the x-y planning
    float64 kappa
    
    # derivative of kappa w.r.t s.
    float64 dkappa
    
    # derivative of derivative of kappa w.r.t s.
    float64 ddkappa
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryPoint(null);
    if (msg.path_point !== undefined) {
      resolved.path_point = PathPoint.Resolve(msg.path_point)
    }
    else {
      resolved.path_point = new PathPoint()
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    if (msg.relative_time !== undefined) {
      resolved.relative_time = msg.relative_time;
    }
    else {
      resolved.relative_time = 0.0
    }

    return resolved;
    }
};

module.exports = TrajectoryPoint;
