// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TruckArrived {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.chid = null;
      this.arrived = null;
      this.task_key = null;
      this.send_packet_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('chid')) {
        this.chid = initObj.chid
      }
      else {
        this.chid = '';
      }
      if (initObj.hasOwnProperty('arrived')) {
        this.arrived = initObj.arrived
      }
      else {
        this.arrived = false;
      }
      if (initObj.hasOwnProperty('task_key')) {
        this.task_key = initObj.task_key
      }
      else {
        this.task_key = 0;
      }
      if (initObj.hasOwnProperty('send_packet_id')) {
        this.send_packet_id = initObj.send_packet_id
      }
      else {
        this.send_packet_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TruckArrived
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [chid]
    bufferOffset = _serializer.string(obj.chid, buffer, bufferOffset);
    // Serialize message field [arrived]
    bufferOffset = _serializer.bool(obj.arrived, buffer, bufferOffset);
    // Serialize message field [task_key]
    bufferOffset = _serializer.uint32(obj.task_key, buffer, bufferOffset);
    // Serialize message field [send_packet_id]
    bufferOffset = _serializer.int32(obj.send_packet_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TruckArrived
    let len;
    let data = new TruckArrived(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [chid]
    data.chid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [arrived]
    data.arrived = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [task_key]
    data.task_key = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [send_packet_id]
    data.send_packet_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.chid.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TruckArrived';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b64e38fecffb9b2e3ac7616cb715411c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string chid
    bool arrived
    
    # task key (task_id)
    uint32 task_key
    
    int32 send_packet_id
    
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
    const resolved = new TruckArrived(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.chid !== undefined) {
      resolved.chid = msg.chid;
    }
    else {
      resolved.chid = ''
    }

    if (msg.arrived !== undefined) {
      resolved.arrived = msg.arrived;
    }
    else {
      resolved.arrived = false
    }

    if (msg.task_key !== undefined) {
      resolved.task_key = msg.task_key;
    }
    else {
      resolved.task_key = 0
    }

    if (msg.send_packet_id !== undefined) {
      resolved.send_packet_id = msg.send_packet_id;
    }
    else {
      resolved.send_packet_id = 0
    }

    return resolved;
    }
};

module.exports = TruckArrived;
