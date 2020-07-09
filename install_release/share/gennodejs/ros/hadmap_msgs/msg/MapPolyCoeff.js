// Auto-generated. Do not edit!

// (in-package hadmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MapPolyCoeff {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offset = null;
      this.poly_parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
      }
      if (initObj.hasOwnProperty('poly_parameters')) {
        this.poly_parameters = initObj.poly_parameters
      }
      else {
        this.poly_parameters = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapPolyCoeff
    // Serialize message field [offset]
    bufferOffset = _serializer.float64(obj.offset, buffer, bufferOffset);
    // Serialize message field [poly_parameters]
    bufferOffset = _arraySerializer.float64(obj.poly_parameters, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapPolyCoeff
    let len;
    let data = new MapPolyCoeff(null);
    // Deserialize message field [offset]
    data.offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [poly_parameters]
    data.poly_parameters = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.poly_parameters.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hadmap_msgs/MapPolyCoeff';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e66720b6436770bcd662ec869090bc14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 offset
    float64[] poly_parameters
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapPolyCoeff(null);
    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
    }

    if (msg.poly_parameters !== undefined) {
      resolved.poly_parameters = msg.poly_parameters;
    }
    else {
      resolved.poly_parameters = []
    }

    return resolved;
    }
};

module.exports = MapPolyCoeff;
