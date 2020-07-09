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

class TruckAlignment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.TruckNBR = null;
      this.Stamp = null;
      this.WorkOder = null;
      this.CraneNBR = null;
      this.InPlace = null;
      this.Rest = null;
      this.TruckLeave = null;
      this.send_packet_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('TruckNBR')) {
        this.TruckNBR = initObj.TruckNBR
      }
      else {
        this.TruckNBR = '';
      }
      if (initObj.hasOwnProperty('Stamp')) {
        this.Stamp = initObj.Stamp
      }
      else {
        this.Stamp = '';
      }
      if (initObj.hasOwnProperty('WorkOder')) {
        this.WorkOder = initObj.WorkOder
      }
      else {
        this.WorkOder = '';
      }
      if (initObj.hasOwnProperty('CraneNBR')) {
        this.CraneNBR = initObj.CraneNBR
      }
      else {
        this.CraneNBR = 0;
      }
      if (initObj.hasOwnProperty('InPlace')) {
        this.InPlace = initObj.InPlace
      }
      else {
        this.InPlace = 0;
      }
      if (initObj.hasOwnProperty('Rest')) {
        this.Rest = initObj.Rest
      }
      else {
        this.Rest = 0;
      }
      if (initObj.hasOwnProperty('TruckLeave')) {
        this.TruckLeave = initObj.TruckLeave
      }
      else {
        this.TruckLeave = 0;
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
    // Serializes a message object of type TruckAlignment
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [TruckNBR]
    bufferOffset = _serializer.string(obj.TruckNBR, buffer, bufferOffset);
    // Serialize message field [Stamp]
    bufferOffset = _serializer.string(obj.Stamp, buffer, bufferOffset);
    // Serialize message field [WorkOder]
    bufferOffset = _serializer.string(obj.WorkOder, buffer, bufferOffset);
    // Serialize message field [CraneNBR]
    bufferOffset = _serializer.int32(obj.CraneNBR, buffer, bufferOffset);
    // Serialize message field [InPlace]
    bufferOffset = _serializer.uint16(obj.InPlace, buffer, bufferOffset);
    // Serialize message field [Rest]
    bufferOffset = _serializer.uint16(obj.Rest, buffer, bufferOffset);
    // Serialize message field [TruckLeave]
    bufferOffset = _serializer.uint16(obj.TruckLeave, buffer, bufferOffset);
    // Serialize message field [send_packet_id]
    bufferOffset = _serializer.int32(obj.send_packet_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TruckAlignment
    let len;
    let data = new TruckAlignment(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [TruckNBR]
    data.TruckNBR = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Stamp]
    data.Stamp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [WorkOder]
    data.WorkOder = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CraneNBR]
    data.CraneNBR = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [InPlace]
    data.InPlace = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Rest]
    data.Rest = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [TruckLeave]
    data.TruckLeave = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [send_packet_id]
    data.send_packet_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.TruckNBR.length;
    length += object.Stamp.length;
    length += object.WorkOder.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TruckAlignment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65d8fffd5aa268d9cd99df47762be918';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string TruckNBR
    string Stamp
    string WorkOder
    int32 CraneNBR
    uint16 InPlace
    uint16 Rest
    uint16 TruckLeave
    
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
    const resolved = new TruckAlignment(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.TruckNBR !== undefined) {
      resolved.TruckNBR = msg.TruckNBR;
    }
    else {
      resolved.TruckNBR = ''
    }

    if (msg.Stamp !== undefined) {
      resolved.Stamp = msg.Stamp;
    }
    else {
      resolved.Stamp = ''
    }

    if (msg.WorkOder !== undefined) {
      resolved.WorkOder = msg.WorkOder;
    }
    else {
      resolved.WorkOder = ''
    }

    if (msg.CraneNBR !== undefined) {
      resolved.CraneNBR = msg.CraneNBR;
    }
    else {
      resolved.CraneNBR = 0
    }

    if (msg.InPlace !== undefined) {
      resolved.InPlace = msg.InPlace;
    }
    else {
      resolved.InPlace = 0
    }

    if (msg.Rest !== undefined) {
      resolved.Rest = msg.Rest;
    }
    else {
      resolved.Rest = 0
    }

    if (msg.TruckLeave !== undefined) {
      resolved.TruckLeave = msg.TruckLeave;
    }
    else {
      resolved.TruckLeave = 0
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

module.exports = TruckAlignment;
