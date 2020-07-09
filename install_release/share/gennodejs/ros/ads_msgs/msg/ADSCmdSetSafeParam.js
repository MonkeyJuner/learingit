// Auto-generated. Do not edit!

// (in-package ads_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ADSCmdSetSafeParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.safe_second = null;
      this.safe_distance = null;
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
      if (initObj.hasOwnProperty('safe_second')) {
        this.safe_second = initObj.safe_second
      }
      else {
        this.safe_second = 0.0;
      }
      if (initObj.hasOwnProperty('safe_distance')) {
        this.safe_distance = initObj.safe_distance
      }
      else {
        this.safe_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADSCmdSetSafeParam
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [safe_second]
    bufferOffset = _serializer.float64(obj.safe_second, buffer, bufferOffset);
    // Serialize message field [safe_distance]
    bufferOffset = _serializer.float64(obj.safe_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADSCmdSetSafeParam
    let len;
    let data = new ADSCmdSetSafeParam(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [safe_second]
    data.safe_second = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [safe_distance]
    data.safe_distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ads_msgs/ADSCmdSetSafeParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '861db45b0a43099456491e88ed389e30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint32 id
    
    float64 safe_second
    float64 safe_distance
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ADSCmdSetSafeParam(null);
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

    if (msg.safe_second !== undefined) {
      resolved.safe_second = msg.safe_second;
    }
    else {
      resolved.safe_second = 0.0
    }

    if (msg.safe_distance !== undefined) {
      resolved.safe_distance = msg.safe_distance;
    }
    else {
      resolved.safe_distance = 0.0
    }

    return resolved;
    }
};

module.exports = ADSCmdSetSafeParam;
