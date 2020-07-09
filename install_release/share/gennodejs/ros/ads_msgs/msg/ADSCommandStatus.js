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

class ADSCommandStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.status = null;
      this.err_codes = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
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
    // Serializes a message object of type ADSCommandStatus
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [err_codes]
    bufferOffset = _arraySerializer.uint8(obj.err_codes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADSCommandStatus
    let len;
    let data = new ADSCommandStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [err_codes]
    data.err_codes = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.err_codes.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ads_msgs/ADSCommandStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '571b463eb8d21aab448911c4506ca3cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 状态-执行中
    uint8 STATUS_EXECUTING = 0
    # 状态-已完毕
    uint8 STATUS_DONE = 1
    # 状态-错误
    uint8 STATUS_ERROR = 2
    # 状态-无效
    uint8 STATUS_UNVALID = 3
    
    # 错误-执行命令超时
    uint8 ERROR_TIMEOUT = 1
    # 错误-当不允许执行该命令
    uint8 ERROR_REJECT = 2
    # 错误-命令执行结果不符合预期
    uint8 ERROR_FAIL = 3
    # 错误-重复命令
    uint8 ERROR_REPEAT = 4
    
    # 命令唯一标识
    uint32 id
    
    # 命令状态
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
    const resolved = new ADSCommandStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

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
ADSCommandStatus.Constants = {
  STATUS_EXECUTING: 0,
  STATUS_DONE: 1,
  STATUS_ERROR: 2,
  STATUS_UNVALID: 3,
  ERROR_TIMEOUT: 1,
  ERROR_REJECT: 2,
  ERROR_FAIL: 3,
  ERROR_REPEAT: 4,
}

module.exports = ADSCommandStatus;
