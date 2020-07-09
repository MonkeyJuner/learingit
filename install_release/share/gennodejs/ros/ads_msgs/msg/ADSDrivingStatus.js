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

class ADSDrivingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.status = null;
      this.err_codes = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
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
    // Serializes a message object of type ADSDrivingStatus
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [err_codes]
    bufferOffset = _arraySerializer.uint8(obj.err_codes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADSDrivingStatus
    let len;
    let data = new ADSDrivingStatus(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint32(buffer, bufferOffset);
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
    return 'ads_msgs/ADSDrivingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd820d95d8e174cb96103f731f03f3fd9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 状态-等待目标
    uint8 STATUS_WAIT_TARGET = 0
    # 状态-等待启动
    uint8 STATUS_WAIT_START = 1
    # 状态-驶向终点
    uint8 STATUS_TRAVEL = 2
    # 状态-到达终点
    uint8 STATUS_ARRIVED = 3
    # 状态-错误
    uint8 STATUS_ERROR = 4
    # 状态-无效
    uint8 STATUS_UNVALID = 5
    
    # 错误-未处于自动驾驶状态
    uint8 ERROR_AUTO_OFF = 0
    # 错误-硬件锁定
    uint8 ERROR_HARDWARE_LOCK = 1
    # 错误-定位或底盘失效
    uint8 ERROR_VEHICLE = 2
    # 错误-地图
    uint8 ERROR_MAP = 3
    # 错误-雷达
    uint8 ERROR_LADAR = 4
    # 错误-长时间无法到达终点
    uint8 ERROR_CANNOT_ARRIVE = 5
    
    # 任务ID
    uint32 task_id
    
    # 行驶状态
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
    const resolved = new ADSDrivingStatus(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
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
ADSDrivingStatus.Constants = {
  STATUS_WAIT_TARGET: 0,
  STATUS_WAIT_START: 1,
  STATUS_TRAVEL: 2,
  STATUS_ARRIVED: 3,
  STATUS_ERROR: 4,
  STATUS_UNVALID: 5,
  ERROR_AUTO_OFF: 0,
  ERROR_HARDWARE_LOCK: 1,
  ERROR_VEHICLE: 2,
  ERROR_MAP: 3,
  ERROR_LADAR: 4,
  ERROR_CANNOT_ARRIVE: 5,
}

module.exports = ADSDrivingStatus;
