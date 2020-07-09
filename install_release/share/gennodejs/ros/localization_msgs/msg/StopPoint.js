// Auto-generated. Do not edit!

// (in-package localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StopPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.distance_shift = null;
      this.angle = null;
      this.distance_vertical = null;
      this.type = null;
      this.decelerate = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('distance_shift')) {
        this.distance_shift = initObj.distance_shift
      }
      else {
        this.distance_shift = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('distance_vertical')) {
        this.distance_vertical = initObj.distance_vertical
      }
      else {
        this.distance_vertical = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('decelerate')) {
        this.decelerate = initObj.decelerate
      }
      else {
        this.decelerate = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopPoint
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [distance_shift]
    bufferOffset = _serializer.float64(obj.distance_shift, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    // Serialize message field [distance_vertical]
    bufferOffset = _serializer.float64(obj.distance_vertical, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [decelerate]
    bufferOffset = _serializer.bool(obj.decelerate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopPoint
    let len;
    let data = new StopPoint(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance_shift]
    data.distance_shift = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_vertical]
    data.distance_vertical = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [decelerate]
    data.decelerate = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msgs/StopPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '857da375e16b789899f14886149cb405';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # main key
    int32 id
    
    # distance, [0, unlimit]
    float64 distance_shift
    
    
    float64 angle # rad
    float64 distance_vertical
    
    
    
    uint8 TYPE_CRANE = 0
    uint8 TYPE_YARD = 1
    uint8 TYPE_OTHER = 2
    
    # type
    uint8 type
    
    # decelerate flag
    bool decelerate # true
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopPoint(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.distance_shift !== undefined) {
      resolved.distance_shift = msg.distance_shift;
    }
    else {
      resolved.distance_shift = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.distance_vertical !== undefined) {
      resolved.distance_vertical = msg.distance_vertical;
    }
    else {
      resolved.distance_vertical = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.decelerate !== undefined) {
      resolved.decelerate = msg.decelerate;
    }
    else {
      resolved.decelerate = false
    }

    return resolved;
    }
};

// Constants for message
StopPoint.Constants = {
  TYPE_CRANE: 0,
  TYPE_YARD: 1,
  TYPE_OTHER: 2,
}

module.exports = StopPoint;
