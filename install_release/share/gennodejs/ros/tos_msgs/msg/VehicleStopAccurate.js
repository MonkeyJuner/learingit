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

class VehicleStopAccurate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.task_id = null;
      this.chid = null;
      this.stop_for = null;
      this.send_packet_id = null;
      this.stop_tag_id = null;
      this.stop_tag_type = null;
      this.stop_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('chid')) {
        this.chid = initObj.chid
      }
      else {
        this.chid = '';
      }
      if (initObj.hasOwnProperty('stop_for')) {
        this.stop_for = initObj.stop_for
      }
      else {
        this.stop_for = 0;
      }
      if (initObj.hasOwnProperty('send_packet_id')) {
        this.send_packet_id = initObj.send_packet_id
      }
      else {
        this.send_packet_id = 0;
      }
      if (initObj.hasOwnProperty('stop_tag_id')) {
        this.stop_tag_id = initObj.stop_tag_id
      }
      else {
        this.stop_tag_id = 0;
      }
      if (initObj.hasOwnProperty('stop_tag_type')) {
        this.stop_tag_type = initObj.stop_tag_type
      }
      else {
        this.stop_tag_type = 0;
      }
      if (initObj.hasOwnProperty('stop_offset')) {
        this.stop_offset = initObj.stop_offset
      }
      else {
        this.stop_offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleStopAccurate
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [chid]
    bufferOffset = _serializer.string(obj.chid, buffer, bufferOffset);
    // Serialize message field [stop_for]
    bufferOffset = _serializer.uint8(obj.stop_for, buffer, bufferOffset);
    // Serialize message field [send_packet_id]
    bufferOffset = _serializer.int32(obj.send_packet_id, buffer, bufferOffset);
    // Serialize message field [stop_tag_id]
    bufferOffset = _serializer.int32(obj.stop_tag_id, buffer, bufferOffset);
    // Serialize message field [stop_tag_type]
    bufferOffset = _serializer.uint8(obj.stop_tag_type, buffer, bufferOffset);
    // Serialize message field [stop_offset]
    bufferOffset = _serializer.float64(obj.stop_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleStopAccurate
    let len;
    let data = new VehicleStopAccurate(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [chid]
    data.chid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stop_for]
    data.stop_for = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [send_packet_id]
    data.send_packet_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stop_tag_id]
    data.stop_tag_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stop_tag_type]
    data.stop_tag_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stop_offset]
    data.stop_offset = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.chid.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/VehicleStopAccurate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e35e264833827db6110049455f7aabe3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STOP_UNKNOWN = 0
    uint8 STOP_FOR_MAP = 1
    uint8 STOP_FOR_TAG = 2
    uint8 STOP_FOR_PLC = 3
    
    Header header
    uint32 task_id
    string chid
    uint8 stop_for
    int32 send_packet_id
    int32 stop_tag_id
    uint8 stop_tag_type
    float64 stop_offset
    
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
    const resolved = new VehicleStopAccurate(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.chid !== undefined) {
      resolved.chid = msg.chid;
    }
    else {
      resolved.chid = ''
    }

    if (msg.stop_for !== undefined) {
      resolved.stop_for = msg.stop_for;
    }
    else {
      resolved.stop_for = 0
    }

    if (msg.send_packet_id !== undefined) {
      resolved.send_packet_id = msg.send_packet_id;
    }
    else {
      resolved.send_packet_id = 0
    }

    if (msg.stop_tag_id !== undefined) {
      resolved.stop_tag_id = msg.stop_tag_id;
    }
    else {
      resolved.stop_tag_id = 0
    }

    if (msg.stop_tag_type !== undefined) {
      resolved.stop_tag_type = msg.stop_tag_type;
    }
    else {
      resolved.stop_tag_type = 0
    }

    if (msg.stop_offset !== undefined) {
      resolved.stop_offset = msg.stop_offset;
    }
    else {
      resolved.stop_offset = 0.0
    }

    return resolved;
    }
};

// Constants for message
VehicleStopAccurate.Constants = {
  STOP_UNKNOWN: 0,
  STOP_FOR_MAP: 1,
  STOP_FOR_TAG: 2,
  STOP_FOR_PLC: 3,
}

module.exports = VehicleStopAccurate;
