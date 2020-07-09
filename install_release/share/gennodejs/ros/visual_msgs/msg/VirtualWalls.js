// Auto-generated. Do not edit!

// (in-package visual_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VirtualWall = require('./VirtualWall.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VirtualWalls {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.walls = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('walls')) {
        this.walls = initObj.walls
      }
      else {
        this.walls = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VirtualWalls
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [walls]
    // Serialize the length for message field [walls]
    bufferOffset = _serializer.uint32(obj.walls.length, buffer, bufferOffset);
    obj.walls.forEach((val) => {
      bufferOffset = VirtualWall.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VirtualWalls
    let len;
    let data = new VirtualWalls(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [walls]
    // Deserialize array length for message field [walls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.walls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.walls[i] = VirtualWall.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 53 * object.walls.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'visual_msgs/VirtualWalls';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eeccf1d1abd9782305d24f6691c59a03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    visual_msgs/VirtualWall[] walls
    
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
    MSG: visual_msgs/VirtualWall
    uint8 UNCLASSIFIED          = 0
    uint8 STOP_SIGN_ABSOLUTE    = 1
    uint8 STOP_SIGN_RELATIVE    = 2
    uint8 OBJECT                = 3
    uint8 OBJECT_VIRTUAL        = 4
    uint8 OBJECT_CLOSE          = 5
    uint8 OGM                   = 6
    uint8 HMAP_SPEED_LIMIT      = 7
    uint8 CURV_SPEED_LIMIT      = 8
    uint8 LONGITUDE_CMD         = 9
    
    uint8   type
    uint32  id
    float64 distance
    float64 speed
    
    float64 x           # Optional
    float64 y           # Optional
    float64 z           # Optional
    float64 heading     # Optional
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VirtualWalls(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.walls !== undefined) {
      resolved.walls = new Array(msg.walls.length);
      for (let i = 0; i < resolved.walls.length; ++i) {
        resolved.walls[i] = VirtualWall.Resolve(msg.walls[i]);
      }
    }
    else {
      resolved.walls = []
    }

    return resolved;
    }
};

module.exports = VirtualWalls;
