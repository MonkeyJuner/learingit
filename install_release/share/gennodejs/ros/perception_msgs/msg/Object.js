// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.age = null;
      this.prediction_age = null;
      this.reference_point = null;
      this.reference_points = null;
      this.bounding_box_center = null;
      this.bounding_box_size = null;
      this.object_box_center = null;
      this.object_box_size = null;
      this.object_box_orientation = null;
      this.object_box_orientation_absolute = null;
      this.absolute_velocity = null;
      this.absolute_velocity_sigma = null;
      this.relative_velocity = null;
      this.absolute_acceleration = null;
      this.relative_acceleration = null;
      this.absolute_yaw_rate = null;
      this.relative_yaw_rate = null;
      this.classification = null;
      this.classification_age = null;
      this.classification_certainty = null;
      this.contour_points = null;
      this.contour_points_absolute = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('prediction_age')) {
        this.prediction_age = initObj.prediction_age
      }
      else {
        this.prediction_age = 0;
      }
      if (initObj.hasOwnProperty('reference_point')) {
        this.reference_point = initObj.reference_point
      }
      else {
        this.reference_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('reference_points')) {
        this.reference_points = initObj.reference_points
      }
      else {
        this.reference_points = [];
      }
      if (initObj.hasOwnProperty('bounding_box_center')) {
        this.bounding_box_center = initObj.bounding_box_center
      }
      else {
        this.bounding_box_center = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('bounding_box_size')) {
        this.bounding_box_size = initObj.bounding_box_size
      }
      else {
        this.bounding_box_size = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('object_box_center')) {
        this.object_box_center = initObj.object_box_center
      }
      else {
        this.object_box_center = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('object_box_size')) {
        this.object_box_size = initObj.object_box_size
      }
      else {
        this.object_box_size = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('object_box_orientation')) {
        this.object_box_orientation = initObj.object_box_orientation
      }
      else {
        this.object_box_orientation = 0.0;
      }
      if (initObj.hasOwnProperty('object_box_orientation_absolute')) {
        this.object_box_orientation_absolute = initObj.object_box_orientation_absolute
      }
      else {
        this.object_box_orientation_absolute = 0.0;
      }
      if (initObj.hasOwnProperty('absolute_velocity')) {
        this.absolute_velocity = initObj.absolute_velocity
      }
      else {
        this.absolute_velocity = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('absolute_velocity_sigma')) {
        this.absolute_velocity_sigma = initObj.absolute_velocity_sigma
      }
      else {
        this.absolute_velocity_sigma = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('relative_velocity')) {
        this.relative_velocity = initObj.relative_velocity
      }
      else {
        this.relative_velocity = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('absolute_acceleration')) {
        this.absolute_acceleration = initObj.absolute_acceleration
      }
      else {
        this.absolute_acceleration = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('relative_acceleration')) {
        this.relative_acceleration = initObj.relative_acceleration
      }
      else {
        this.relative_acceleration = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('absolute_yaw_rate')) {
        this.absolute_yaw_rate = initObj.absolute_yaw_rate
      }
      else {
        this.absolute_yaw_rate = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('relative_yaw_rate')) {
        this.relative_yaw_rate = initObj.relative_yaw_rate
      }
      else {
        this.relative_yaw_rate = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('classification')) {
        this.classification = initObj.classification
      }
      else {
        this.classification = 0;
      }
      if (initObj.hasOwnProperty('classification_age')) {
        this.classification_age = initObj.classification_age
      }
      else {
        this.classification_age = 0;
      }
      if (initObj.hasOwnProperty('classification_certainty')) {
        this.classification_certainty = initObj.classification_certainty
      }
      else {
        this.classification_certainty = 0;
      }
      if (initObj.hasOwnProperty('contour_points')) {
        this.contour_points = initObj.contour_points
      }
      else {
        this.contour_points = [];
      }
      if (initObj.hasOwnProperty('contour_points_absolute')) {
        this.contour_points_absolute = initObj.contour_points_absolute
      }
      else {
        this.contour_points_absolute = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.int32(obj.age, buffer, bufferOffset);
    // Serialize message field [prediction_age]
    bufferOffset = _serializer.int32(obj.prediction_age, buffer, bufferOffset);
    // Serialize message field [reference_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.reference_point, buffer, bufferOffset);
    // Serialize message field [reference_points]
    // Serialize the length for message field [reference_points]
    bufferOffset = _serializer.uint32(obj.reference_points.length, buffer, bufferOffset);
    obj.reference_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bounding_box_center]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.bounding_box_center, buffer, bufferOffset);
    // Serialize message field [bounding_box_size]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.bounding_box_size, buffer, bufferOffset);
    // Serialize message field [object_box_center]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.object_box_center, buffer, bufferOffset);
    // Serialize message field [object_box_size]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.object_box_size, buffer, bufferOffset);
    // Serialize message field [object_box_orientation]
    bufferOffset = _serializer.float64(obj.object_box_orientation, buffer, bufferOffset);
    // Serialize message field [object_box_orientation_absolute]
    bufferOffset = _serializer.float64(obj.object_box_orientation_absolute, buffer, bufferOffset);
    // Serialize message field [absolute_velocity]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.absolute_velocity, buffer, bufferOffset);
    // Serialize message field [absolute_velocity_sigma]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.absolute_velocity_sigma, buffer, bufferOffset);
    // Serialize message field [relative_velocity]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.relative_velocity, buffer, bufferOffset);
    // Serialize message field [absolute_acceleration]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.absolute_acceleration, buffer, bufferOffset);
    // Serialize message field [relative_acceleration]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.relative_acceleration, buffer, bufferOffset);
    // Serialize message field [absolute_yaw_rate]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.absolute_yaw_rate, buffer, bufferOffset);
    // Serialize message field [relative_yaw_rate]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.relative_yaw_rate, buffer, bufferOffset);
    // Serialize message field [classification]
    bufferOffset = _serializer.int32(obj.classification, buffer, bufferOffset);
    // Serialize message field [classification_age]
    bufferOffset = _serializer.int32(obj.classification_age, buffer, bufferOffset);
    // Serialize message field [classification_certainty]
    bufferOffset = _serializer.int32(obj.classification_certainty, buffer, bufferOffset);
    // Serialize message field [contour_points]
    // Serialize the length for message field [contour_points]
    bufferOffset = _serializer.uint32(obj.contour_points.length, buffer, bufferOffset);
    obj.contour_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [contour_points_absolute]
    // Serialize the length for message field [contour_points_absolute]
    bufferOffset = _serializer.uint32(obj.contour_points_absolute.length, buffer, bufferOffset);
    obj.contour_points_absolute.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [prediction_age]
    data.prediction_age = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reference_point]
    data.reference_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [reference_points]
    // Deserialize array length for message field [reference_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.reference_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reference_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bounding_box_center]
    data.bounding_box_center = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [bounding_box_size]
    data.bounding_box_size = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_box_center]
    data.object_box_center = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_box_size]
    data.object_box_size = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_box_orientation]
    data.object_box_orientation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [object_box_orientation_absolute]
    data.object_box_orientation_absolute = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [absolute_velocity]
    data.absolute_velocity = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [absolute_velocity_sigma]
    data.absolute_velocity_sigma = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_velocity]
    data.relative_velocity = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [absolute_acceleration]
    data.absolute_acceleration = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_acceleration]
    data.relative_acceleration = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [absolute_yaw_rate]
    data.absolute_yaw_rate = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_yaw_rate]
    data.relative_yaw_rate = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [classification]
    data.classification = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [classification_age]
    data.classification_age = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [classification_certainty]
    data.classification_certainty = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [contour_points]
    // Deserialize array length for message field [contour_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contour_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contour_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [contour_points_absolute]
    // Deserialize array length for message field [contour_points_absolute]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contour_points_absolute = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contour_points_absolute[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.reference_points.length;
    length += 24 * object.contour_points.length;
    length += 24 * object.contour_points_absolute.length;
    return length + 340;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '683135dacc3cb368d96ceddae6f34be6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    int32 age
    int32 prediction_age
    
    geometry_msgs/Point reference_point
    geometry_msgs/Point[] reference_points
    geometry_msgs/Point bounding_box_center
    geometry_msgs/Point bounding_box_size
    geometry_msgs/Point object_box_center
    geometry_msgs/Point object_box_size
    
    float64 object_box_orientation
    float64 object_box_orientation_absolute
    
    geometry_msgs/Point absolute_velocity
    geometry_msgs/Point absolute_velocity_sigma
    geometry_msgs/Point relative_velocity
    
    geometry_msgs/Point absolute_acceleration
    geometry_msgs/Point relative_acceleration
    
    geometry_msgs/Point absolute_yaw_rate
    geometry_msgs/Point relative_yaw_rate
    
    int32 classification
    int32 classification_age
    int32 classification_certainty
    
    geometry_msgs/Point[] contour_points
    geometry_msgs/Point[] contour_points_absolute
    
    
    
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
    const resolved = new Object(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.prediction_age !== undefined) {
      resolved.prediction_age = msg.prediction_age;
    }
    else {
      resolved.prediction_age = 0
    }

    if (msg.reference_point !== undefined) {
      resolved.reference_point = geometry_msgs.msg.Point.Resolve(msg.reference_point)
    }
    else {
      resolved.reference_point = new geometry_msgs.msg.Point()
    }

    if (msg.reference_points !== undefined) {
      resolved.reference_points = new Array(msg.reference_points.length);
      for (let i = 0; i < resolved.reference_points.length; ++i) {
        resolved.reference_points[i] = geometry_msgs.msg.Point.Resolve(msg.reference_points[i]);
      }
    }
    else {
      resolved.reference_points = []
    }

    if (msg.bounding_box_center !== undefined) {
      resolved.bounding_box_center = geometry_msgs.msg.Point.Resolve(msg.bounding_box_center)
    }
    else {
      resolved.bounding_box_center = new geometry_msgs.msg.Point()
    }

    if (msg.bounding_box_size !== undefined) {
      resolved.bounding_box_size = geometry_msgs.msg.Point.Resolve(msg.bounding_box_size)
    }
    else {
      resolved.bounding_box_size = new geometry_msgs.msg.Point()
    }

    if (msg.object_box_center !== undefined) {
      resolved.object_box_center = geometry_msgs.msg.Point.Resolve(msg.object_box_center)
    }
    else {
      resolved.object_box_center = new geometry_msgs.msg.Point()
    }

    if (msg.object_box_size !== undefined) {
      resolved.object_box_size = geometry_msgs.msg.Point.Resolve(msg.object_box_size)
    }
    else {
      resolved.object_box_size = new geometry_msgs.msg.Point()
    }

    if (msg.object_box_orientation !== undefined) {
      resolved.object_box_orientation = msg.object_box_orientation;
    }
    else {
      resolved.object_box_orientation = 0.0
    }

    if (msg.object_box_orientation_absolute !== undefined) {
      resolved.object_box_orientation_absolute = msg.object_box_orientation_absolute;
    }
    else {
      resolved.object_box_orientation_absolute = 0.0
    }

    if (msg.absolute_velocity !== undefined) {
      resolved.absolute_velocity = geometry_msgs.msg.Point.Resolve(msg.absolute_velocity)
    }
    else {
      resolved.absolute_velocity = new geometry_msgs.msg.Point()
    }

    if (msg.absolute_velocity_sigma !== undefined) {
      resolved.absolute_velocity_sigma = geometry_msgs.msg.Point.Resolve(msg.absolute_velocity_sigma)
    }
    else {
      resolved.absolute_velocity_sigma = new geometry_msgs.msg.Point()
    }

    if (msg.relative_velocity !== undefined) {
      resolved.relative_velocity = geometry_msgs.msg.Point.Resolve(msg.relative_velocity)
    }
    else {
      resolved.relative_velocity = new geometry_msgs.msg.Point()
    }

    if (msg.absolute_acceleration !== undefined) {
      resolved.absolute_acceleration = geometry_msgs.msg.Point.Resolve(msg.absolute_acceleration)
    }
    else {
      resolved.absolute_acceleration = new geometry_msgs.msg.Point()
    }

    if (msg.relative_acceleration !== undefined) {
      resolved.relative_acceleration = geometry_msgs.msg.Point.Resolve(msg.relative_acceleration)
    }
    else {
      resolved.relative_acceleration = new geometry_msgs.msg.Point()
    }

    if (msg.absolute_yaw_rate !== undefined) {
      resolved.absolute_yaw_rate = geometry_msgs.msg.Point.Resolve(msg.absolute_yaw_rate)
    }
    else {
      resolved.absolute_yaw_rate = new geometry_msgs.msg.Point()
    }

    if (msg.relative_yaw_rate !== undefined) {
      resolved.relative_yaw_rate = geometry_msgs.msg.Point.Resolve(msg.relative_yaw_rate)
    }
    else {
      resolved.relative_yaw_rate = new geometry_msgs.msg.Point()
    }

    if (msg.classification !== undefined) {
      resolved.classification = msg.classification;
    }
    else {
      resolved.classification = 0
    }

    if (msg.classification_age !== undefined) {
      resolved.classification_age = msg.classification_age;
    }
    else {
      resolved.classification_age = 0
    }

    if (msg.classification_certainty !== undefined) {
      resolved.classification_certainty = msg.classification_certainty;
    }
    else {
      resolved.classification_certainty = 0
    }

    if (msg.contour_points !== undefined) {
      resolved.contour_points = new Array(msg.contour_points.length);
      for (let i = 0; i < resolved.contour_points.length; ++i) {
        resolved.contour_points[i] = geometry_msgs.msg.Point.Resolve(msg.contour_points[i]);
      }
    }
    else {
      resolved.contour_points = []
    }

    if (msg.contour_points_absolute !== undefined) {
      resolved.contour_points_absolute = new Array(msg.contour_points_absolute.length);
      for (let i = 0; i < resolved.contour_points_absolute.length; ++i) {
        resolved.contour_points_absolute[i] = geometry_msgs.msg.Point.Resolve(msg.contour_points_absolute[i]);
      }
    }
    else {
      resolved.contour_points_absolute = []
    }

    return resolved;
    }
};

module.exports = Object;
