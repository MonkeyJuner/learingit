// Auto-generated. Do not edit!

// (in-package simulator_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Rate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cycle_us = null;
      this.time_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('cycle_us')) {
        this.cycle_us = initObj.cycle_us
      }
      else {
        this.cycle_us = 0.0;
      }
      if (initObj.hasOwnProperty('time_rate')) {
        this.time_rate = initObj.time_rate
      }
      else {
        this.time_rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rate
    // Serialize message field [cycle_us]
    bufferOffset = _serializer.float64(obj.cycle_us, buffer, bufferOffset);
    // Serialize message field [time_rate]
    bufferOffset = _serializer.float64(obj.time_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rate
    let len;
    let data = new Rate(null);
    // Deserialize message field [cycle_us]
    data.cycle_us = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time_rate]
    data.time_rate = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator_msgs/Rate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '785d8d6cbab03eef8403afc2fa066006';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 cycle_us
    float64 time_rate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Rate(null);
    if (msg.cycle_us !== undefined) {
      resolved.cycle_us = msg.cycle_us;
    }
    else {
      resolved.cycle_us = 0.0
    }

    if (msg.time_rate !== undefined) {
      resolved.time_rate = msg.time_rate;
    }
    else {
      resolved.time_rate = 0.0
    }

    return resolved;
    }
};

module.exports = Rate;
