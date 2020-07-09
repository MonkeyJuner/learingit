// Auto-generated. Do not edit!

// (in-package ads_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ADSLockStatus = require('./ADSLockStatus.js');
let ADSDrivingStatus = require('./ADSDrivingStatus.js');
let ADSCommandStatus = require('./ADSCommandStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ADSHeartBeat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lock_status = null;
      this.driving_status = null;
      this.command_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lock_status')) {
        this.lock_status = initObj.lock_status
      }
      else {
        this.lock_status = new ADSLockStatus();
      }
      if (initObj.hasOwnProperty('driving_status')) {
        this.driving_status = initObj.driving_status
      }
      else {
        this.driving_status = new ADSDrivingStatus();
      }
      if (initObj.hasOwnProperty('command_status')) {
        this.command_status = initObj.command_status
      }
      else {
        this.command_status = new ADSCommandStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADSHeartBeat
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lock_status]
    bufferOffset = ADSLockStatus.serialize(obj.lock_status, buffer, bufferOffset);
    // Serialize message field [driving_status]
    bufferOffset = ADSDrivingStatus.serialize(obj.driving_status, buffer, bufferOffset);
    // Serialize message field [command_status]
    bufferOffset = ADSCommandStatus.serialize(obj.command_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADSHeartBeat
    let len;
    let data = new ADSHeartBeat(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lock_status]
    data.lock_status = ADSLockStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [driving_status]
    data.driving_status = ADSDrivingStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [command_status]
    data.command_status = ADSCommandStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += ADSLockStatus.getMessageSize(object.lock_status);
    length += ADSDrivingStatus.getMessageSize(object.driving_status);
    length += ADSCommandStatus.getMessageSize(object.command_status);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ads_msgs/ADSHeartBeat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a20797a7f321095ed8bcf7768c64a33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # 车体状态
    ADSLockStatus lock_status
    # 行驶状态
    ADSDrivingStatus driving_status
    # 命令状态
    ADSCommandStatus command_status
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
    
    ================================================================================
    MSG: ads_msgs/ADSLockStatus
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
    ================================================================================
    MSG: ads_msgs/ADSDrivingStatus
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
    ================================================================================
    MSG: ads_msgs/ADSCommandStatus
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
    const resolved = new ADSHeartBeat(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lock_status !== undefined) {
      resolved.lock_status = ADSLockStatus.Resolve(msg.lock_status)
    }
    else {
      resolved.lock_status = new ADSLockStatus()
    }

    if (msg.driving_status !== undefined) {
      resolved.driving_status = ADSDrivingStatus.Resolve(msg.driving_status)
    }
    else {
      resolved.driving_status = new ADSDrivingStatus()
    }

    if (msg.command_status !== undefined) {
      resolved.command_status = ADSCommandStatus.Resolve(msg.command_status)
    }
    else {
      resolved.command_status = new ADSCommandStatus()
    }

    return resolved;
    }
};

module.exports = ADSHeartBeat;
