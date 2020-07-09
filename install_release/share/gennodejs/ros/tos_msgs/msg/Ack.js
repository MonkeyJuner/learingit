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

class Ack {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.chid = null;
      this.recv_packet_id = null;
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
      if (initObj.hasOwnProperty('recv_packet_id')) {
        this.recv_packet_id = initObj.recv_packet_id
      }
      else {
        this.recv_packet_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ack
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [chid]
    bufferOffset = _serializer.string(obj.chid, buffer, bufferOffset);
    // Serialize message field [recv_packet_id]
    bufferOffset = _serializer.int32(obj.recv_packet_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ack
    let len;
    let data = new Ack(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [chid]
    data.chid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [recv_packet_id]
    data.recv_packet_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.chid.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/Ack';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13cde61edac7c6d8fd963194a4397a3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string chid
    int32 recv_packet_id
    
    
    
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
    const resolved = new Ack(null);
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

    if (msg.recv_packet_id !== undefined) {
      resolved.recv_packet_id = msg.recv_packet_id;
    }
    else {
      resolved.recv_packet_id = 0
    }

    return resolved;
    }
};

module.exports = Ack;
