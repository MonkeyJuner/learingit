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

class TruckLogin {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cheid = null;
      this.usr_name = null;
      this.register_type = null;
      this.send_packet_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cheid')) {
        this.cheid = initObj.cheid
      }
      else {
        this.cheid = '';
      }
      if (initObj.hasOwnProperty('usr_name')) {
        this.usr_name = initObj.usr_name
      }
      else {
        this.usr_name = '';
      }
      if (initObj.hasOwnProperty('register_type')) {
        this.register_type = initObj.register_type
      }
      else {
        this.register_type = 0;
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
    // Serializes a message object of type TruckLogin
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cheid]
    bufferOffset = _serializer.string(obj.cheid, buffer, bufferOffset);
    // Serialize message field [usr_name]
    bufferOffset = _serializer.string(obj.usr_name, buffer, bufferOffset);
    // Serialize message field [register_type]
    bufferOffset = _serializer.uint8(obj.register_type, buffer, bufferOffset);
    // Serialize message field [send_packet_id]
    bufferOffset = _serializer.int32(obj.send_packet_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TruckLogin
    let len;
    let data = new TruckLogin(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cheid]
    data.cheid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [usr_name]
    data.usr_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [register_type]
    data.register_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [send_packet_id]
    data.send_packet_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.cheid.length;
    length += object.usr_name.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TruckLogin';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae364b6ad1460c8b838375d9b99a1ccb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # truck register
    uint8 TRUNK_UNREGISTER         = 0
    uint8 TRUNK_REGISTER           = 1
    
    Header header
    string cheid
    string usr_name
    uint8 register_type
    
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
    const resolved = new TruckLogin(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cheid !== undefined) {
      resolved.cheid = msg.cheid;
    }
    else {
      resolved.cheid = ''
    }

    if (msg.usr_name !== undefined) {
      resolved.usr_name = msg.usr_name;
    }
    else {
      resolved.usr_name = ''
    }

    if (msg.register_type !== undefined) {
      resolved.register_type = msg.register_type;
    }
    else {
      resolved.register_type = 0
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

// Constants for message
TruckLogin.Constants = {
  TRUNK_UNREGISTER: 0,
  TRUNK_REGISTER: 1,
}

module.exports = TruckLogin;
