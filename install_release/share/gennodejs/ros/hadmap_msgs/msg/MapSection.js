// Auto-generated. Do not edit!

// (in-package hadmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapReferLine = require('./MapReferLine.js');
let MapPolyCoeff = require('./MapPolyCoeff.js');
let MapLane = require('./MapLane.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MapSection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.s = null;
      this.refer_line = null;
      this.z_coeffs = null;
      this.lanes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('refer_line')) {
        this.refer_line = initObj.refer_line
      }
      else {
        this.refer_line = new MapReferLine();
      }
      if (initObj.hasOwnProperty('z_coeffs')) {
        this.z_coeffs = initObj.z_coeffs
      }
      else {
        this.z_coeffs = [];
      }
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapSection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [s]
    bufferOffset = _serializer.float64(obj.s, buffer, bufferOffset);
    // Serialize message field [refer_line]
    bufferOffset = MapReferLine.serialize(obj.refer_line, buffer, bufferOffset);
    // Serialize message field [z_coeffs]
    // Serialize the length for message field [z_coeffs]
    bufferOffset = _serializer.uint32(obj.z_coeffs.length, buffer, bufferOffset);
    obj.z_coeffs.forEach((val) => {
      bufferOffset = MapPolyCoeff.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = MapLane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapSection
    let len;
    let data = new MapSection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [s]
    data.s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [refer_line]
    data.refer_line = MapReferLine.deserialize(buffer, bufferOffset);
    // Deserialize message field [z_coeffs]
    // Deserialize array length for message field [z_coeffs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.z_coeffs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.z_coeffs[i] = MapPolyCoeff.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = MapLane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += MapReferLine.getMessageSize(object.refer_line);
    object.z_coeffs.forEach((val) => {
      length += MapPolyCoeff.getMessageSize(val);
    });
    object.lanes.forEach((val) => {
      length += MapLane.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hadmap_msgs/MapSection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c157895ff86d00b131821caeb238419d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint32 id
    float64 s
    
    MapReferLine refer_line
    MapPolyCoeff[] z_coeffs
    MapLane[] lanes
    
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
    MSG: hadmap_msgs/MapReferLine
    
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
    
    ================================================================================
    MSG: hadmap_msgs/MapPolyCoeff
    float64 offset
    float64[] poly_parameters
    
    ================================================================================
    MSG: hadmap_msgs/MapLane
    uint8 lane_type
    
    MapPolyCoeff[] poly_coeffs
    
    int16 predecessor
    int16 successor
    
    float32 lane_residual_len
    float32 speed_limit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapSection(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.refer_line !== undefined) {
      resolved.refer_line = MapReferLine.Resolve(msg.refer_line)
    }
    else {
      resolved.refer_line = new MapReferLine()
    }

    if (msg.z_coeffs !== undefined) {
      resolved.z_coeffs = new Array(msg.z_coeffs.length);
      for (let i = 0; i < resolved.z_coeffs.length; ++i) {
        resolved.z_coeffs[i] = MapPolyCoeff.Resolve(msg.z_coeffs[i]);
      }
    }
    else {
      resolved.z_coeffs = []
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = MapLane.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    return resolved;
    }
};

module.exports = MapSection;
