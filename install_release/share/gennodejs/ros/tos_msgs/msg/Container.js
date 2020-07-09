// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Container {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.container_id = null;
      this.container_size = null;
      this.container_weight = null;
      this.container_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('container_id')) {
        this.container_id = initObj.container_id
      }
      else {
        this.container_id = '';
      }
      if (initObj.hasOwnProperty('container_size')) {
        this.container_size = initObj.container_size
      }
      else {
        this.container_size = 0;
      }
      if (initObj.hasOwnProperty('container_weight')) {
        this.container_weight = initObj.container_weight
      }
      else {
        this.container_weight = 0;
      }
      if (initObj.hasOwnProperty('container_pos')) {
        this.container_pos = initObj.container_pos
      }
      else {
        this.container_pos = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Container
    // Serialize message field [container_id]
    bufferOffset = _serializer.string(obj.container_id, buffer, bufferOffset);
    // Serialize message field [container_size]
    bufferOffset = _serializer.uint8(obj.container_size, buffer, bufferOffset);
    // Serialize message field [container_weight]
    bufferOffset = _serializer.int32(obj.container_weight, buffer, bufferOffset);
    // Serialize message field [container_pos]
    bufferOffset = _serializer.uint8(obj.container_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Container
    let len;
    let data = new Container(null);
    // Deserialize message field [container_id]
    data.container_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [container_size]
    data.container_size = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [container_weight]
    data.container_weight = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [container_pos]
    data.container_pos = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.container_id.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/Container';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd22eca006ec43bbf4e6912d6c115e28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string container_id
    uint8 container_size
    int32 container_weight
    uint8 container_pos 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Container(null);
    if (msg.container_id !== undefined) {
      resolved.container_id = msg.container_id;
    }
    else {
      resolved.container_id = ''
    }

    if (msg.container_size !== undefined) {
      resolved.container_size = msg.container_size;
    }
    else {
      resolved.container_size = 0
    }

    if (msg.container_weight !== undefined) {
      resolved.container_weight = msg.container_weight;
    }
    else {
      resolved.container_weight = 0
    }

    if (msg.container_pos !== undefined) {
      resolved.container_pos = msg.container_pos;
    }
    else {
      resolved.container_pos = 0
    }

    return resolved;
    }
};

module.exports = Container;
