// Auto-generated. Do not edit!

// (in-package localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StopPoint = require('./StopPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class StopPoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.stop_points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('stop_points')) {
        this.stop_points = initObj.stop_points
      }
      else {
        this.stop_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopPoints
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [stop_points]
    // Serialize the length for message field [stop_points]
    bufferOffset = _serializer.uint32(obj.stop_points.length, buffer, bufferOffset);
    obj.stop_points.forEach((val) => {
      bufferOffset = StopPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopPoints
    let len;
    let data = new StopPoints(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [stop_points]
    // Deserialize array length for message field [stop_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.stop_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.stop_points[i] = StopPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 30 * object.stop_points.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msgs/StopPoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5b863ed8d0741cd8d4dd19ce2273dbb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    StopPoint[] stop_points
    
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
    MSG: localization_msgs/StopPoint
    # main key
    int32 id
    
    # distance, [0, unlimit]
    float64 distance_shift
    
    
    float64 angle # rad
    float64 distance_vertical
    
    
    
    uint8 TYPE_CRANE = 0
    uint8 TYPE_YARD = 1
    uint8 TYPE_OTHER = 2
    
    # type
    uint8 type
    
    # decelerate flag
    bool decelerate # true
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopPoints(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.stop_points !== undefined) {
      resolved.stop_points = new Array(msg.stop_points.length);
      for (let i = 0; i < resolved.stop_points.length; ++i) {
        resolved.stop_points[i] = StopPoint.Resolve(msg.stop_points[i]);
      }
    }
    else {
      resolved.stop_points = []
    }

    return resolved;
    }
};

module.exports = StopPoints;
