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

class YardCraneStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.WorkOrder = null;
      this.CraneNBR = null;
      this.TruckNBR = null;
      this.Time = null;
      this.GantryPosition = null;
      this.GantryMove = null;
      this.TrolleyPosition = null;
      this.HositPosition = null;
      this.SpreadLock = null;
      this.SpreadLoad = null;
      this.SpreadWorkType = null;
      this.VasStatus = null;
      this.TruckLoad = null;
      this.TruckInPosition = null;
      this.SpreadOnChassis = null;
      this.TruckLeave = null;
      this.Distance = null;
      this.send_packet_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('WorkOrder')) {
        this.WorkOrder = initObj.WorkOrder
      }
      else {
        this.WorkOrder = '';
      }
      if (initObj.hasOwnProperty('CraneNBR')) {
        this.CraneNBR = initObj.CraneNBR
      }
      else {
        this.CraneNBR = 0;
      }
      if (initObj.hasOwnProperty('TruckNBR')) {
        this.TruckNBR = initObj.TruckNBR
      }
      else {
        this.TruckNBR = '';
      }
      if (initObj.hasOwnProperty('Time')) {
        this.Time = initObj.Time
      }
      else {
        this.Time = '';
      }
      if (initObj.hasOwnProperty('GantryPosition')) {
        this.GantryPosition = initObj.GantryPosition
      }
      else {
        this.GantryPosition = 0.0;
      }
      if (initObj.hasOwnProperty('GantryMove')) {
        this.GantryMove = initObj.GantryMove
      }
      else {
        this.GantryMove = 0;
      }
      if (initObj.hasOwnProperty('TrolleyPosition')) {
        this.TrolleyPosition = initObj.TrolleyPosition
      }
      else {
        this.TrolleyPosition = 0.0;
      }
      if (initObj.hasOwnProperty('HositPosition')) {
        this.HositPosition = initObj.HositPosition
      }
      else {
        this.HositPosition = 0.0;
      }
      if (initObj.hasOwnProperty('SpreadLock')) {
        this.SpreadLock = initObj.SpreadLock
      }
      else {
        this.SpreadLock = 0;
      }
      if (initObj.hasOwnProperty('SpreadLoad')) {
        this.SpreadLoad = initObj.SpreadLoad
      }
      else {
        this.SpreadLoad = 0.0;
      }
      if (initObj.hasOwnProperty('SpreadWorkType')) {
        this.SpreadWorkType = initObj.SpreadWorkType
      }
      else {
        this.SpreadWorkType = 0;
      }
      if (initObj.hasOwnProperty('VasStatus')) {
        this.VasStatus = initObj.VasStatus
      }
      else {
        this.VasStatus = 0;
      }
      if (initObj.hasOwnProperty('TruckLoad')) {
        this.TruckLoad = initObj.TruckLoad
      }
      else {
        this.TruckLoad = 0;
      }
      if (initObj.hasOwnProperty('TruckInPosition')) {
        this.TruckInPosition = initObj.TruckInPosition
      }
      else {
        this.TruckInPosition = 0;
      }
      if (initObj.hasOwnProperty('SpreadOnChassis')) {
        this.SpreadOnChassis = initObj.SpreadOnChassis
      }
      else {
        this.SpreadOnChassis = 0;
      }
      if (initObj.hasOwnProperty('TruckLeave')) {
        this.TruckLeave = initObj.TruckLeave
      }
      else {
        this.TruckLeave = 0;
      }
      if (initObj.hasOwnProperty('Distance')) {
        this.Distance = initObj.Distance
      }
      else {
        this.Distance = 0;
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
    // Serializes a message object of type YardCraneStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [WorkOrder]
    bufferOffset = _serializer.string(obj.WorkOrder, buffer, bufferOffset);
    // Serialize message field [CraneNBR]
    bufferOffset = _serializer.int32(obj.CraneNBR, buffer, bufferOffset);
    // Serialize message field [TruckNBR]
    bufferOffset = _serializer.string(obj.TruckNBR, buffer, bufferOffset);
    // Serialize message field [Time]
    bufferOffset = _serializer.string(obj.Time, buffer, bufferOffset);
    // Serialize message field [GantryPosition]
    bufferOffset = _serializer.float64(obj.GantryPosition, buffer, bufferOffset);
    // Serialize message field [GantryMove]
    bufferOffset = _serializer.uint8(obj.GantryMove, buffer, bufferOffset);
    // Serialize message field [TrolleyPosition]
    bufferOffset = _serializer.float64(obj.TrolleyPosition, buffer, bufferOffset);
    // Serialize message field [HositPosition]
    bufferOffset = _serializer.float64(obj.HositPosition, buffer, bufferOffset);
    // Serialize message field [SpreadLock]
    bufferOffset = _serializer.uint8(obj.SpreadLock, buffer, bufferOffset);
    // Serialize message field [SpreadLoad]
    bufferOffset = _serializer.float64(obj.SpreadLoad, buffer, bufferOffset);
    // Serialize message field [SpreadWorkType]
    bufferOffset = _serializer.int32(obj.SpreadWorkType, buffer, bufferOffset);
    // Serialize message field [VasStatus]
    bufferOffset = _serializer.uint8(obj.VasStatus, buffer, bufferOffset);
    // Serialize message field [TruckLoad]
    bufferOffset = _serializer.uint8(obj.TruckLoad, buffer, bufferOffset);
    // Serialize message field [TruckInPosition]
    bufferOffset = _serializer.uint8(obj.TruckInPosition, buffer, bufferOffset);
    // Serialize message field [SpreadOnChassis]
    bufferOffset = _serializer.uint8(obj.SpreadOnChassis, buffer, bufferOffset);
    // Serialize message field [TruckLeave]
    bufferOffset = _serializer.uint8(obj.TruckLeave, buffer, bufferOffset);
    // Serialize message field [Distance]
    bufferOffset = _serializer.int32(obj.Distance, buffer, bufferOffset);
    // Serialize message field [send_packet_id]
    bufferOffset = _serializer.int32(obj.send_packet_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YardCraneStatus
    let len;
    let data = new YardCraneStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [WorkOrder]
    data.WorkOrder = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CraneNBR]
    data.CraneNBR = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [TruckNBR]
    data.TruckNBR = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Time]
    data.Time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [GantryPosition]
    data.GantryPosition = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [GantryMove]
    data.GantryMove = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [TrolleyPosition]
    data.TrolleyPosition = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [HositPosition]
    data.HositPosition = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [SpreadLock]
    data.SpreadLock = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SpreadLoad]
    data.SpreadLoad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [SpreadWorkType]
    data.SpreadWorkType = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [VasStatus]
    data.VasStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [TruckLoad]
    data.TruckLoad = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [TruckInPosition]
    data.TruckInPosition = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SpreadOnChassis]
    data.SpreadOnChassis = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [TruckLeave]
    data.TruckLeave = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Distance]
    data.Distance = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [send_packet_id]
    data.send_packet_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.WorkOrder.length;
    length += object.TruckNBR.length;
    length += object.Time.length;
    return length + 67;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/YardCraneStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6bc9a1eb677c70a420a1ae553255debf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string WorkOrder
    int32 CraneNBR
    string TruckNBR
    string Time
    float64 GantryPosition
    uint8 GantryMove
    float64 TrolleyPosition
    float64 HositPosition
    uint8 SpreadLock
    float64 SpreadLoad
    int32 SpreadWorkType
    uint8 VasStatus
    uint8 TruckLoad
    uint8 TruckInPosition
    uint8 SpreadOnChassis
    uint8 TruckLeave
    int32 Distance
    
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
    const resolved = new YardCraneStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.WorkOrder !== undefined) {
      resolved.WorkOrder = msg.WorkOrder;
    }
    else {
      resolved.WorkOrder = ''
    }

    if (msg.CraneNBR !== undefined) {
      resolved.CraneNBR = msg.CraneNBR;
    }
    else {
      resolved.CraneNBR = 0
    }

    if (msg.TruckNBR !== undefined) {
      resolved.TruckNBR = msg.TruckNBR;
    }
    else {
      resolved.TruckNBR = ''
    }

    if (msg.Time !== undefined) {
      resolved.Time = msg.Time;
    }
    else {
      resolved.Time = ''
    }

    if (msg.GantryPosition !== undefined) {
      resolved.GantryPosition = msg.GantryPosition;
    }
    else {
      resolved.GantryPosition = 0.0
    }

    if (msg.GantryMove !== undefined) {
      resolved.GantryMove = msg.GantryMove;
    }
    else {
      resolved.GantryMove = 0
    }

    if (msg.TrolleyPosition !== undefined) {
      resolved.TrolleyPosition = msg.TrolleyPosition;
    }
    else {
      resolved.TrolleyPosition = 0.0
    }

    if (msg.HositPosition !== undefined) {
      resolved.HositPosition = msg.HositPosition;
    }
    else {
      resolved.HositPosition = 0.0
    }

    if (msg.SpreadLock !== undefined) {
      resolved.SpreadLock = msg.SpreadLock;
    }
    else {
      resolved.SpreadLock = 0
    }

    if (msg.SpreadLoad !== undefined) {
      resolved.SpreadLoad = msg.SpreadLoad;
    }
    else {
      resolved.SpreadLoad = 0.0
    }

    if (msg.SpreadWorkType !== undefined) {
      resolved.SpreadWorkType = msg.SpreadWorkType;
    }
    else {
      resolved.SpreadWorkType = 0
    }

    if (msg.VasStatus !== undefined) {
      resolved.VasStatus = msg.VasStatus;
    }
    else {
      resolved.VasStatus = 0
    }

    if (msg.TruckLoad !== undefined) {
      resolved.TruckLoad = msg.TruckLoad;
    }
    else {
      resolved.TruckLoad = 0
    }

    if (msg.TruckInPosition !== undefined) {
      resolved.TruckInPosition = msg.TruckInPosition;
    }
    else {
      resolved.TruckInPosition = 0
    }

    if (msg.SpreadOnChassis !== undefined) {
      resolved.SpreadOnChassis = msg.SpreadOnChassis;
    }
    else {
      resolved.SpreadOnChassis = 0
    }

    if (msg.TruckLeave !== undefined) {
      resolved.TruckLeave = msg.TruckLeave;
    }
    else {
      resolved.TruckLeave = 0
    }

    if (msg.Distance !== undefined) {
      resolved.Distance = msg.Distance;
    }
    else {
      resolved.Distance = 0
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

module.exports = YardCraneStatus;
