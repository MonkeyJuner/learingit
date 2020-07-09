// Auto-generated. Do not edit!

// (in-package visual_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathPoints = require('./PathPoints.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Path {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rt_path = null;
      this.opt_path = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rt_path')) {
        this.rt_path = initObj.rt_path
      }
      else {
        this.rt_path = new PathPoints();
      }
      if (initObj.hasOwnProperty('opt_path')) {
        this.opt_path = initObj.opt_path
      }
      else {
        this.opt_path = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Path
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rt_path]
    bufferOffset = PathPoints.serialize(obj.rt_path, buffer, bufferOffset);
    // Serialize message field [opt_path]
    // Serialize the length for message field [opt_path]
    bufferOffset = _serializer.uint32(obj.opt_path.length, buffer, bufferOffset);
    obj.opt_path.forEach((val) => {
      bufferOffset = PathPoints.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Path
    let len;
    let data = new Path(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rt_path]
    data.rt_path = PathPoints.deserialize(buffer, bufferOffset);
    // Deserialize message field [opt_path]
    // Deserialize array length for message field [opt_path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.opt_path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.opt_path[i] = PathPoints.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PathPoints.getMessageSize(object.rt_path);
    object.opt_path.forEach((val) => {
      length += PathPoints.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'visual_msgs/Path';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28f1175a0bf886f2cad2ad7ff1882850';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # cur path in vehicle coord
    visual_msgs/PathPoints rt_path
    
    # opt path in vehicle coord
    visual_msgs/PathPoints[] opt_path
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
    MSG: visual_msgs/PathPoints
    visual_msgs/PathPoint[] pts
    ================================================================================
    MSG: visual_msgs/PathPoint
    # coordinates in [m]
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
    const resolved = new Path(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rt_path !== undefined) {
      resolved.rt_path = PathPoints.Resolve(msg.rt_path)
    }
    else {
      resolved.rt_path = new PathPoints()
    }

    if (msg.opt_path !== undefined) {
      resolved.opt_path = new Array(msg.opt_path.length);
      for (let i = 0; i < resolved.opt_path.length; ++i) {
        resolved.opt_path[i] = PathPoints.Resolve(msg.opt_path[i]);
      }
    }
    else {
      resolved.opt_path = []
    }

    return resolved;
    }
};

module.exports = Path;
