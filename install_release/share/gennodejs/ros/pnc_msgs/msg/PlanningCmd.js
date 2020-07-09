// Auto-generated. Do not edit!

// (in-package pnc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Trajectory = require('./Trajectory.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PlanningCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.utm_traj = null;
      this.veh_traj = null;
      this.rt_speed = null;
      this.final_speed = null;
      this.final_distance = null;
      this.lateral_state = null;
      this.speed_state = null;
      this.stop_at_dest = null;
      this.turn_direction = null;
      this.task_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('utm_traj')) {
        this.utm_traj = initObj.utm_traj
      }
      else {
        this.utm_traj = new Trajectory();
      }
      if (initObj.hasOwnProperty('veh_traj')) {
        this.veh_traj = initObj.veh_traj
      }
      else {
        this.veh_traj = new Trajectory();
      }
      if (initObj.hasOwnProperty('rt_speed')) {
        this.rt_speed = initObj.rt_speed
      }
      else {
        this.rt_speed = 0.0;
      }
      if (initObj.hasOwnProperty('final_speed')) {
        this.final_speed = initObj.final_speed
      }
      else {
        this.final_speed = 0.0;
      }
      if (initObj.hasOwnProperty('final_distance')) {
        this.final_distance = initObj.final_distance
      }
      else {
        this.final_distance = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_state')) {
        this.lateral_state = initObj.lateral_state
      }
      else {
        this.lateral_state = 0;
      }
      if (initObj.hasOwnProperty('speed_state')) {
        this.speed_state = initObj.speed_state
      }
      else {
        this.speed_state = 0;
      }
      if (initObj.hasOwnProperty('stop_at_dest')) {
        this.stop_at_dest = initObj.stop_at_dest
      }
      else {
        this.stop_at_dest = false;
      }
      if (initObj.hasOwnProperty('turn_direction')) {
        this.turn_direction = initObj.turn_direction
      }
      else {
        this.turn_direction = 0;
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [utm_traj]
    bufferOffset = Trajectory.serialize(obj.utm_traj, buffer, bufferOffset);
    // Serialize message field [veh_traj]
    bufferOffset = Trajectory.serialize(obj.veh_traj, buffer, bufferOffset);
    // Serialize message field [rt_speed]
    bufferOffset = _serializer.float64(obj.rt_speed, buffer, bufferOffset);
    // Serialize message field [final_speed]
    bufferOffset = _serializer.float64(obj.final_speed, buffer, bufferOffset);
    // Serialize message field [final_distance]
    bufferOffset = _serializer.float64(obj.final_distance, buffer, bufferOffset);
    // Serialize message field [lateral_state]
    bufferOffset = _serializer.uint8(obj.lateral_state, buffer, bufferOffset);
    // Serialize message field [speed_state]
    bufferOffset = _serializer.uint8(obj.speed_state, buffer, bufferOffset);
    // Serialize message field [stop_at_dest]
    bufferOffset = _serializer.bool(obj.stop_at_dest, buffer, bufferOffset);
    // Serialize message field [turn_direction]
    bufferOffset = _serializer.uint8(obj.turn_direction, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.int32(obj.task_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningCmd
    let len;
    let data = new PlanningCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [utm_traj]
    data.utm_traj = Trajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [veh_traj]
    data.veh_traj = Trajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [rt_speed]
    data.rt_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [final_speed]
    data.final_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [final_distance]
    data.final_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lateral_state]
    data.lateral_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed_state]
    data.speed_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stop_at_dest]
    data.stop_at_dest = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [turn_direction]
    data.turn_direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Trajectory.getMessageSize(object.utm_traj);
    length += Trajectory.getMessageSize(object.veh_traj);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnc_msgs/PlanningCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c524a0bbbcc9e84caf1b33d77fd89eaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # control mode
    uint8 MODE_AUTO                 = 0
    uint8 MODE_LATERAL_CLOSED_LOOP  = 1
    uint8 MODE_SPEED_CLOSED_LOOP    = 2
    uint8 MODE_OPEN_LOOP            = 3
    
    # lateral state
    uint8 LATERAL_KEEP_LANE         = 0
    uint8 LATERAL_CHG_TO_LEFT       = 1
    uint8 LATERAL_CHG_TO_RIGHT      = 2
    
    # longtude state
    uint8 SPEED_PARK   = 0
    uint8 SPEED_FOLLOW = 1
    uint8 SPEED_ESTOP  = 2
    uint8 SPEED_BRAKE  = 3
    
    # turn light direction
    uint8 DIR_STRAIGHT              = 0
    uint8 DIR_TURN_LEFT             = 1
    uint8 DIR_TURN_RIGHT            = 2
    
    Header header
    
    # control mode
    uint8               mode
    
    # trajectory in utm coord
    pnc_msgs/Trajectory utm_traj
    
    # trajectory in vehicle coord
    pnc_msgs/Trajectory veh_traj
    
    # real time speed in [km/h]
    float64             rt_speed
    
    # target follow speed in [km/h]
    float64             final_speed
    
    # target follow distance in [m]
    float64             final_distance
    
    # lateral state
    uint8               lateral_state
    
    # speed state
    uint8               speed_state
    
    # if vehicle stop at dest
    bool                stop_at_dest
    
    # turn light direction when change lane or turn
    uint8               turn_direction
    
    int32 task_id
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: pnc_msgs/Trajectory
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
    const resolved = new PlanningCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.utm_traj !== undefined) {
      resolved.utm_traj = Trajectory.Resolve(msg.utm_traj)
    }
    else {
      resolved.utm_traj = new Trajectory()
    }

    if (msg.veh_traj !== undefined) {
      resolved.veh_traj = Trajectory.Resolve(msg.veh_traj)
    }
    else {
      resolved.veh_traj = new Trajectory()
    }

    if (msg.rt_speed !== undefined) {
      resolved.rt_speed = msg.rt_speed;
    }
    else {
      resolved.rt_speed = 0.0
    }

    if (msg.final_speed !== undefined) {
      resolved.final_speed = msg.final_speed;
    }
    else {
      resolved.final_speed = 0.0
    }

    if (msg.final_distance !== undefined) {
      resolved.final_distance = msg.final_distance;
    }
    else {
      resolved.final_distance = 0.0
    }

    if (msg.lateral_state !== undefined) {
      resolved.lateral_state = msg.lateral_state;
    }
    else {
      resolved.lateral_state = 0
    }

    if (msg.speed_state !== undefined) {
      resolved.speed_state = msg.speed_state;
    }
    else {
      resolved.speed_state = 0
    }

    if (msg.stop_at_dest !== undefined) {
      resolved.stop_at_dest = msg.stop_at_dest;
    }
    else {
      resolved.stop_at_dest = false
    }

    if (msg.turn_direction !== undefined) {
      resolved.turn_direction = msg.turn_direction;
    }
    else {
      resolved.turn_direction = 0
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    return resolved;
    }
};

// Constants for message
PlanningCmd.Constants = {
  MODE_AUTO: 0,
  MODE_LATERAL_CLOSED_LOOP: 1,
  MODE_SPEED_CLOSED_LOOP: 2,
  MODE_OPEN_LOOP: 3,
  LATERAL_KEEP_LANE: 0,
  LATERAL_CHG_TO_LEFT: 1,
  LATERAL_CHG_TO_RIGHT: 2,
  SPEED_PARK: 0,
  SPEED_FOLLOW: 1,
  SPEED_ESTOP: 2,
  SPEED_BRAKE: 3,
  DIR_STRAIGHT: 0,
  DIR_TURN_LEFT: 1,
  DIR_TURN_RIGHT: 2,
}

module.exports = PlanningCmd;
