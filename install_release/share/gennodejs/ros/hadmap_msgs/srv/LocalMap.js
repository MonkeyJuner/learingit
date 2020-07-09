// Auto-generated. Do not edit!

// (in-package hadmap_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let LocalMapLane = require('../msg/LocalMapLane.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LocalMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transform = null;
      this.query_len_ahead = null;
      this.query_len_behind = null;
    }
    else {
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('query_len_ahead')) {
        this.query_len_ahead = initObj.query_len_ahead
      }
      else {
        this.query_len_ahead = 0.0;
      }
      if (initObj.hasOwnProperty('query_len_behind')) {
        this.query_len_behind = initObj.query_len_behind
      }
      else {
        this.query_len_behind = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalMapRequest
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [query_len_ahead]
    bufferOffset = _serializer.float32(obj.query_len_ahead, buffer, bufferOffset);
    // Serialize message field [query_len_behind]
    bufferOffset = _serializer.float32(obj.query_len_behind, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalMapRequest
    let len;
    let data = new LocalMapRequest(null);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [query_len_ahead]
    data.query_len_ahead = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [query_len_behind]
    data.query_len_behind = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hadmap_msgs/LocalMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e15d9957823f2ae99275775d65bc1e17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Transform transform
    
    float32 query_len_ahead
    
    float32 query_len_behind
    
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalMapRequest(null);
    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    if (msg.query_len_ahead !== undefined) {
      resolved.query_len_ahead = msg.query_len_ahead;
    }
    else {
      resolved.query_len_ahead = 0.0
    }

    if (msg.query_len_behind !== undefined) {
      resolved.query_len_behind = msg.query_len_behind;
    }
    else {
      resolved.query_len_behind = 0.0
    }

    return resolved;
    }
};

class LocalMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lanes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalMapResponse
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = LocalMapLane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalMapResponse
    let len;
    let data = new LocalMapResponse(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = LocalMapLane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.lanes.forEach((val) => {
      length += LocalMapLane.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hadmap_msgs/LocalMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e2581a2675681ccfe2f2c202442f570';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    Header header
    
    LocalMapLane[] lanes
    
    
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
    MSG: hadmap_msgs/LocalMapLane
    # lane id
    int32 id
    # residual length
    float32 residual_len
    
    float32 stopline_distance
    geometry_msgs/Point stopline
    
    # central planning points
    LocalMapPoint[] center
    # left boundary
    LocalMapPoint[] left
    # right boundary
    LocalMapPoint[] right
    
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: hadmap_msgs/LocalMapPoint
    uint8 TYPE_CROSS = 0
    uint8 TYPE_NOT_CROSS = 1
    
    # lane point localization
    geometry_msgs/Point point
    # heading angle
    float32 heading
    # now: cross or not
    uint8 type
    # speed limit
    float32 speed_limit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalMapResponse(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = LocalMapLane.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    return resolved;
    }
};

module.exports = {
  Request: LocalMapRequest,
  Response: LocalMapResponse,
  md5sum() { return '08a1f6ded539d336de32646a87759460'; },
  datatype() { return 'hadmap_msgs/LocalMap'; }
};
