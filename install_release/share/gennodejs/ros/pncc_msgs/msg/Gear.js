// Auto-generated. Do not edit!

// (in-package pncc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Gear {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gear
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gear
    let len;
    let data = new Gear(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pncc_msgs/Gear';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c8b6d8644724f061fa1138ce21b31f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 GEAR_P = 0
    uint8 GEAR_R = 1
    uint8 GEAR_N = 2
    uint8 GEAR_D = 3
    uint8 GEAR_1 = 4
    uint8 GEAR_2 = 5
    uint8 GEAR_3 = 6
    uint8 GEAR_4 = 7
    uint8 GEAR_5 = 8
    uint8 GEAR_6 = 9
    uint8 GEAR_7 = 10
    uint8 GEAR_8 = 11
    uint8 GEAR_9 = 12
    uint8 GEAR_10 = 13
    uint8 GEAR_11 = 14
    uint8 GEAR_12 = 15
    
    
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gear(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
Gear.Constants = {
  GEAR_P: 0,
  GEAR_R: 1,
  GEAR_N: 2,
  GEAR_D: 3,
  GEAR_1: 4,
  GEAR_2: 5,
  GEAR_3: 6,
  GEAR_4: 7,
  GEAR_5: 8,
  GEAR_6: 9,
  GEAR_7: 10,
  GEAR_8: 11,
  GEAR_9: 12,
  GEAR_10: 13,
  GEAR_11: 14,
  GEAR_12: 15,
}

module.exports = Gear;
