// Auto-generated. Do not edit!

// (in-package hadmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Section = require('./Section.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Map {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sections = null;
      this.task_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sections')) {
        this.sections = initObj.sections
      }
      else {
        this.sections = [];
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
    // Serializes a message object of type Map
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sections]
    // Serialize the length for message field [sections]
    bufferOffset = _serializer.uint32(obj.sections.length, buffer, bufferOffset);
    obj.sections.forEach((val) => {
      bufferOffset = Section.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint32(obj.task_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Map
    let len;
    let data = new Map(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sections]
    // Deserialize array length for message field [sections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sections[i] = Section.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.sections.forEach((val) => {
      length += Section.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hadmap_msgs/Map';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a662a7aab241551bdda9dfc4dc1570e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Section[] sections
    uint32 task_id
    
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
    MSG: hadmap_msgs/Section
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
    const resolved = new Map(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sections !== undefined) {
      resolved.sections = new Array(msg.sections.length);
      for (let i = 0; i < resolved.sections.length; ++i) {
        resolved.sections[i] = Section.Resolve(msg.sections[i]);
      }
    }
    else {
      resolved.sections = []
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

module.exports = Map;
