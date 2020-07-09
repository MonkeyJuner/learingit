// Auto-generated. Do not edit!

// (in-package ads_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ADSLockStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.err_codes = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('err_codes')) {
        this.err_codes = initObj.err_codes
      }
      else {
        this.err_codes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADSLockStatus
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [err_codes]
    bufferOffset = _arraySerializer.uint8(obj.err_codes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADSLockStatus
    let len;
    let data = new ADSLockStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [err_codes]
    data.err_codes = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.err_codes.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ads_msgs/ADSLockStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa3a62c65c48957c8ab93c0fdb1a7cb4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 状态-空闲
    uint8 STATUS_LOCK = 0
    # 状态-就绪
    uint8 STATUS_UNLOCK = 1
    # 状态-无效
    uint8 STATUS_UNVALID = 2
    
    # 车体状态
    uint8 status
    
    # 错误码
    uint8[] err_codes
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ADSLockStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.err_codes !== undefined) {
      resolved.err_codes = msg.err_codes;
    }
    else {
      resolved.err_codes = []
    }

    return resolved;
    }
};

// Constants for message
ADSLockStatus.Constants = {
  STATUS_LOCK: 0,
  STATUS_UNLOCK: 1,
  STATUS_UNVALID: 2,
}

module.exports = ADSLockStatus;
