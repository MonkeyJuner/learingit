// Auto-generated. Do not edit!

// (in-package ads_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ADSCmdCalibrate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.count = null;
      this.longitude_dist = null;
      this.lateral_dist = null;
      this.longitude_thr = null;
      this.lateral_thr = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('longitude_dist')) {
        this.longitude_dist = initObj.longitude_dist
      }
      else {
        this.longitude_dist = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_dist')) {
        this.lateral_dist = initObj.lateral_dist
      }
      else {
        this.lateral_dist = 0.0;
      }
      if (initObj.hasOwnProperty('longitude_thr')) {
        this.longitude_thr = initObj.longitude_thr
      }
      else {
        this.longitude_thr = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_thr')) {
        this.lateral_thr = initObj.lateral_thr
      }
      else {
        this.lateral_thr = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADSCmdCalibrate
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint32(obj.count, buffer, bufferOffset);
    // Serialize message field [longitude_dist]
    bufferOffset = _serializer.float64(obj.longitude_dist, buffer, bufferOffset);
    // Serialize message field [lateral_dist]
    bufferOffset = _serializer.float64(obj.lateral_dist, buffer, bufferOffset);
    // Serialize message field [longitude_thr]
    bufferOffset = _serializer.float64(obj.longitude_thr, buffer, bufferOffset);
    // Serialize message field [lateral_thr]
    bufferOffset = _serializer.float64(obj.lateral_thr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADSCmdCalibrate
    let len;
    let data = new ADSCmdCalibrate(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [longitude_dist]
    data.longitude_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lateral_dist]
    data.lateral_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude_thr]
    data.longitude_thr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lateral_thr]
    data.lateral_thr = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ads_msgs/ADSCmdCalibrate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae168eb424739dfee5633c98c176c140';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint32 id
    
    uint32 count
    
    # measure by m, longitudinal distance from target position
    float64 longitude_dist
    
    # meausre by m, lateral distance from target position
    float64 lateral_dist
    
    float64 longitude_thr
    
    float64 lateral_thr
    
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
    const resolved = new ADSCmdCalibrate(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.longitude_dist !== undefined) {
      resolved.longitude_dist = msg.longitude_dist;
    }
    else {
      resolved.longitude_dist = 0.0
    }

    if (msg.lateral_dist !== undefined) {
      resolved.lateral_dist = msg.lateral_dist;
    }
    else {
      resolved.lateral_dist = 0.0
    }

    if (msg.longitude_thr !== undefined) {
      resolved.longitude_thr = msg.longitude_thr;
    }
    else {
      resolved.longitude_thr = 0.0
    }

    if (msg.lateral_thr !== undefined) {
      resolved.lateral_thr = msg.lateral_thr;
    }
    else {
      resolved.lateral_thr = 0.0
    }

    return resolved;
    }
};

module.exports = ADSCmdCalibrate;
