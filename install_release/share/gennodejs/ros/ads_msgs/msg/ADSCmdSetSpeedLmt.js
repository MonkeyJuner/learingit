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

class ADSCmdSetSpeedLmt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.upper_velocity_km_h = null;
      this.upper_velocity_m_s = null;
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
      if (initObj.hasOwnProperty('upper_velocity_km_h')) {
        this.upper_velocity_km_h = initObj.upper_velocity_km_h
      }
      else {
        this.upper_velocity_km_h = 0.0;
      }
      if (initObj.hasOwnProperty('upper_velocity_m_s')) {
        this.upper_velocity_m_s = initObj.upper_velocity_m_s
      }
      else {
        this.upper_velocity_m_s = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADSCmdSetSpeedLmt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [upper_velocity_km_h]
    bufferOffset = _serializer.float64(obj.upper_velocity_km_h, buffer, bufferOffset);
    // Serialize message field [upper_velocity_m_s]
    bufferOffset = _serializer.float64(obj.upper_velocity_m_s, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADSCmdSetSpeedLmt
    let len;
    let data = new ADSCmdSetSpeedLmt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [upper_velocity_km_h]
    data.upper_velocity_km_h = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [upper_velocity_m_s]
    data.upper_velocity_m_s = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ads_msgs/ADSCmdSetSpeedLmt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81b7ed48bbe46c268791addb9f4a6381';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint32 id
    
    float64 upper_velocity_km_h
    
    float64 upper_velocity_m_s
    
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
    const resolved = new ADSCmdSetSpeedLmt(null);
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

    if (msg.upper_velocity_km_h !== undefined) {
      resolved.upper_velocity_km_h = msg.upper_velocity_km_h;
    }
    else {
      resolved.upper_velocity_km_h = 0.0
    }

    if (msg.upper_velocity_m_s !== undefined) {
      resolved.upper_velocity_m_s = msg.upper_velocity_m_s;
    }
    else {
      resolved.upper_velocity_m_s = 0.0
    }

    return resolved;
    }
};

module.exports = ADSCmdSetSpeedLmt;
