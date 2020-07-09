// Auto-generated. Do not edit!

// (in-package pnc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryPoint = require('./TrajectoryPoint.js');

//-----------------------------------------------------------

class Trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.total_traj_length = null;
      this.total_traj_time = null;
      this.trajectory_pts = null;
    }
    else {
      if (initObj.hasOwnProperty('total_traj_length')) {
        this.total_traj_length = initObj.total_traj_length
      }
      else {
        this.total_traj_length = 0.0;
      }
      if (initObj.hasOwnProperty('total_traj_time')) {
        this.total_traj_time = initObj.total_traj_time
      }
      else {
        this.total_traj_time = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory_pts')) {
        this.trajectory_pts = initObj.trajectory_pts
      }
      else {
        this.trajectory_pts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory
    // Serialize message field [total_traj_length]
    bufferOffset = _serializer.float64(obj.total_traj_length, buffer, bufferOffset);
    // Serialize message field [total_traj_time]
    bufferOffset = _serializer.float64(obj.total_traj_time, buffer, bufferOffset);
    // Serialize message field [trajectory_pts]
    // Serialize the length for message field [trajectory_pts]
    bufferOffset = _serializer.uint32(obj.trajectory_pts.length, buffer, bufferOffset);
    obj.trajectory_pts.forEach((val) => {
      bufferOffset = TrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory
    let len;
    let data = new Trajectory(null);
    // Deserialize message field [total_traj_length]
    data.total_traj_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [total_traj_time]
    data.total_traj_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trajectory_pts]
    // Deserialize array length for message field [trajectory_pts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory_pts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory_pts[i] = TrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 88 * object.trajectory_pts.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnc_msgs/Trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1572326f09d8f47407c20282d7259e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # total traj length in [m]
    float64 total_traj_length
    
    # total traj time in [s]
    float64 total_traj_time
    
    pnc_msgs/TrajectoryPoint[] trajectory_pts
    ================================================================================
    MSG: pnc_msgs/TrajectoryPoint
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
    const resolved = new Trajectory(null);
    if (msg.total_traj_length !== undefined) {
      resolved.total_traj_length = msg.total_traj_length;
    }
    else {
      resolved.total_traj_length = 0.0
    }

    if (msg.total_traj_time !== undefined) {
      resolved.total_traj_time = msg.total_traj_time;
    }
    else {
      resolved.total_traj_time = 0.0
    }

    if (msg.trajectory_pts !== undefined) {
      resolved.trajectory_pts = new Array(msg.trajectory_pts.length);
      for (let i = 0; i < resolved.trajectory_pts.length; ++i) {
        resolved.trajectory_pts[i] = TrajectoryPoint.Resolve(msg.trajectory_pts[i]);
      }
    }
    else {
      resolved.trajectory_pts = []
    }

    return resolved;
    }
};

module.exports = Trajectory;
