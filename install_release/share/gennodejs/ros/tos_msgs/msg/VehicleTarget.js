// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleTarget {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.task_id = null;
      this.send_packet_id = null;
      this.chid = null;
      this.stop_point = null;
      this.stop_tag_id = null;
      this.stop_tag_type = null;
      this.brake_distance = null;
      this.hadmap_stop_shift = null;
      this.tag_stop_shift = null;
      this.lane_id = null;
      this.brake_tag_id_forward = null;
      this.brake_distance_forward = null;
      this.brake_tag_id_backward = null;
      this.brake_distance_backward = null;
      this.vessel_orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('send_packet_id')) {
        this.send_packet_id = initObj.send_packet_id
      }
      else {
        this.send_packet_id = 0;
      }
      if (initObj.hasOwnProperty('chid')) {
        this.chid = initObj.chid
      }
      else {
        this.chid = '';
      }
      if (initObj.hasOwnProperty('stop_point')) {
        this.stop_point = initObj.stop_point
      }
      else {
        this.stop_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('stop_tag_id')) {
        this.stop_tag_id = initObj.stop_tag_id
      }
      else {
        this.stop_tag_id = 0;
      }
      if (initObj.hasOwnProperty('stop_tag_type')) {
        this.stop_tag_type = initObj.stop_tag_type
      }
      else {
        this.stop_tag_type = 0;
      }
      if (initObj.hasOwnProperty('brake_distance')) {
        this.brake_distance = initObj.brake_distance
      }
      else {
        this.brake_distance = 0.0;
      }
      if (initObj.hasOwnProperty('hadmap_stop_shift')) {
        this.hadmap_stop_shift = initObj.hadmap_stop_shift
      }
      else {
        this.hadmap_stop_shift = 0.0;
      }
      if (initObj.hasOwnProperty('tag_stop_shift')) {
        this.tag_stop_shift = initObj.tag_stop_shift
      }
      else {
        this.tag_stop_shift = 0.0;
      }
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = '';
      }
      if (initObj.hasOwnProperty('brake_tag_id_forward')) {
        this.brake_tag_id_forward = initObj.brake_tag_id_forward
      }
      else {
        this.brake_tag_id_forward = 0;
      }
      if (initObj.hasOwnProperty('brake_distance_forward')) {
        this.brake_distance_forward = initObj.brake_distance_forward
      }
      else {
        this.brake_distance_forward = 0.0;
      }
      if (initObj.hasOwnProperty('brake_tag_id_backward')) {
        this.brake_tag_id_backward = initObj.brake_tag_id_backward
      }
      else {
        this.brake_tag_id_backward = 0;
      }
      if (initObj.hasOwnProperty('brake_distance_backward')) {
        this.brake_distance_backward = initObj.brake_distance_backward
      }
      else {
        this.brake_distance_backward = 0.0;
      }
      if (initObj.hasOwnProperty('vessel_orientation')) {
        this.vessel_orientation = initObj.vessel_orientation
      }
      else {
        this.vessel_orientation = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleTarget
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [send_packet_id]
    bufferOffset = _serializer.int32(obj.send_packet_id, buffer, bufferOffset);
    // Serialize message field [chid]
    bufferOffset = _serializer.string(obj.chid, buffer, bufferOffset);
    // Serialize message field [stop_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.stop_point, buffer, bufferOffset);
    // Serialize message field [stop_tag_id]
    bufferOffset = _serializer.int32(obj.stop_tag_id, buffer, bufferOffset);
    // Serialize message field [stop_tag_type]
    bufferOffset = _serializer.uint8(obj.stop_tag_type, buffer, bufferOffset);
    // Serialize message field [brake_distance]
    bufferOffset = _serializer.float64(obj.brake_distance, buffer, bufferOffset);
    // Serialize message field [hadmap_stop_shift]
    bufferOffset = _serializer.float64(obj.hadmap_stop_shift, buffer, bufferOffset);
    // Serialize message field [tag_stop_shift]
    bufferOffset = _serializer.float64(obj.tag_stop_shift, buffer, bufferOffset);
    // Serialize message field [lane_id]
    bufferOffset = _serializer.string(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [brake_tag_id_forward]
    bufferOffset = _serializer.uint8(obj.brake_tag_id_forward, buffer, bufferOffset);
    // Serialize message field [brake_distance_forward]
    bufferOffset = _serializer.float64(obj.brake_distance_forward, buffer, bufferOffset);
    // Serialize message field [brake_tag_id_backward]
    bufferOffset = _serializer.uint8(obj.brake_tag_id_backward, buffer, bufferOffset);
    // Serialize message field [brake_distance_backward]
    bufferOffset = _serializer.float64(obj.brake_distance_backward, buffer, bufferOffset);
    // Serialize message field [vessel_orientation]
    bufferOffset = _serializer.uint8(obj.vessel_orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleTarget
    let len;
    let data = new VehicleTarget(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [send_packet_id]
    data.send_packet_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [chid]
    data.chid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stop_point]
    data.stop_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [stop_tag_id]
    data.stop_tag_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stop_tag_type]
    data.stop_tag_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_distance]
    data.brake_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hadmap_stop_shift]
    data.hadmap_stop_shift = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tag_stop_shift]
    data.tag_stop_shift = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [brake_tag_id_forward]
    data.brake_tag_id_forward = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_distance_forward]
    data.brake_distance_forward = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_tag_id_backward]
    data.brake_tag_id_backward = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_distance_backward]
    data.brake_distance_backward = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vessel_orientation]
    data.vessel_orientation = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.chid.length;
    length += object.lane_id.length;
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/VehicleTarget';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71267172c38fac2a6326d1c7bdcba91e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TAG_ON_ANQIAO = 1
    uint8 TAG_ON_CHANGQIAO = 2
    
    uint8 VESSEL_ORIENTATION_FORWARD = 0
    uint8 VESSEL_ORIENTATION_BACKWARD = 1
    
    Header header
    uint32 task_id
    int32 send_packet_id
    string chid
    geometry_msgs/Point stop_point
    int32 stop_tag_id
    uint8 stop_tag_type
    float64 brake_distance
    float64 hadmap_stop_shift
    float64 tag_stop_shift
    string lane_id
    
    uint8 brake_tag_id_forward
    float64 brake_distance_forward
    
    uint8 brake_tag_id_backward
    float64 brake_distance_backward
    
    uint8 vessel_orientation
    
    
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleTarget(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.send_packet_id !== undefined) {
      resolved.send_packet_id = msg.send_packet_id;
    }
    else {
      resolved.send_packet_id = 0
    }

    if (msg.chid !== undefined) {
      resolved.chid = msg.chid;
    }
    else {
      resolved.chid = ''
    }

    if (msg.stop_point !== undefined) {
      resolved.stop_point = geometry_msgs.msg.Point.Resolve(msg.stop_point)
    }
    else {
      resolved.stop_point = new geometry_msgs.msg.Point()
    }

    if (msg.stop_tag_id !== undefined) {
      resolved.stop_tag_id = msg.stop_tag_id;
    }
    else {
      resolved.stop_tag_id = 0
    }

    if (msg.stop_tag_type !== undefined) {
      resolved.stop_tag_type = msg.stop_tag_type;
    }
    else {
      resolved.stop_tag_type = 0
    }

    if (msg.brake_distance !== undefined) {
      resolved.brake_distance = msg.brake_distance;
    }
    else {
      resolved.brake_distance = 0.0
    }

    if (msg.hadmap_stop_shift !== undefined) {
      resolved.hadmap_stop_shift = msg.hadmap_stop_shift;
    }
    else {
      resolved.hadmap_stop_shift = 0.0
    }

    if (msg.tag_stop_shift !== undefined) {
      resolved.tag_stop_shift = msg.tag_stop_shift;
    }
    else {
      resolved.tag_stop_shift = 0.0
    }

    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = ''
    }

    if (msg.brake_tag_id_forward !== undefined) {
      resolved.brake_tag_id_forward = msg.brake_tag_id_forward;
    }
    else {
      resolved.brake_tag_id_forward = 0
    }

    if (msg.brake_distance_forward !== undefined) {
      resolved.brake_distance_forward = msg.brake_distance_forward;
    }
    else {
      resolved.brake_distance_forward = 0.0
    }

    if (msg.brake_tag_id_backward !== undefined) {
      resolved.brake_tag_id_backward = msg.brake_tag_id_backward;
    }
    else {
      resolved.brake_tag_id_backward = 0
    }

    if (msg.brake_distance_backward !== undefined) {
      resolved.brake_distance_backward = msg.brake_distance_backward;
    }
    else {
      resolved.brake_distance_backward = 0.0
    }

    if (msg.vessel_orientation !== undefined) {
      resolved.vessel_orientation = msg.vessel_orientation;
    }
    else {
      resolved.vessel_orientation = 0
    }

    return resolved;
    }
};

// Constants for message
VehicleTarget.Constants = {
  TAG_ON_ANQIAO: 1,
  TAG_ON_CHANGQIAO: 2,
  VESSEL_ORIENTATION_FORWARD: 0,
  VESSEL_ORIENTATION_BACKWARD: 1,
}

module.exports = VehicleTarget;
