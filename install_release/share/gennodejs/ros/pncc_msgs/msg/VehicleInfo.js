// Auto-generated. Do not edit!

// (in-package pncc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Gear = require('./Gear.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicle_speed = null;
      this.odometer = null;
      this.wheel_speed = null;
      this.wheel_odometer = null;
      this.wheel_angle_left = null;
      this.wheel_angle_right = null;
      this.yaw_rate = null;
      this.gx = null;
      this.gy = null;
      this.steering_mode = null;
      this.steering_angle = null;
      this.throttle_mode = null;
      this.throttle = null;
      this.brake_mode = null;
      this.brake = null;
      this.acceleration_mode = null;
      this.acceleration = null;
      this.gear_mode = null;
      this.gear = null;
      this.turn_light_status = null;
      this.door_status = null;
      this.wiper_status = null;
      this.horn_status = null;
      this.light_status = null;
      this.dump_energy_status = null;
      this.auto_driver_status = null;
      this.vehicle_error_status = null;
      this.emergency_stop_status = null;
      this.brake_air_pressure_0 = null;
      this.brake_air_pressure_1 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicle_speed')) {
        this.vehicle_speed = initObj.vehicle_speed
      }
      else {
        this.vehicle_speed = 0.0;
      }
      if (initObj.hasOwnProperty('odometer')) {
        this.odometer = initObj.odometer
      }
      else {
        this.odometer = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed')) {
        this.wheel_speed = initObj.wheel_speed
      }
      else {
        this.wheel_speed = [];
      }
      if (initObj.hasOwnProperty('wheel_odometer')) {
        this.wheel_odometer = initObj.wheel_odometer
      }
      else {
        this.wheel_odometer = [];
      }
      if (initObj.hasOwnProperty('wheel_angle_left')) {
        this.wheel_angle_left = initObj.wheel_angle_left
      }
      else {
        this.wheel_angle_left = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_angle_right')) {
        this.wheel_angle_right = initObj.wheel_angle_right
      }
      else {
        this.wheel_angle_right = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('gx')) {
        this.gx = initObj.gx
      }
      else {
        this.gx = 0.0;
      }
      if (initObj.hasOwnProperty('gy')) {
        this.gy = initObj.gy
      }
      else {
        this.gy = 0.0;
      }
      if (initObj.hasOwnProperty('steering_mode')) {
        this.steering_mode = initObj.steering_mode
      }
      else {
        this.steering_mode = 0;
      }
      if (initObj.hasOwnProperty('steering_angle')) {
        this.steering_angle = initObj.steering_angle
      }
      else {
        this.steering_angle = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_mode')) {
        this.throttle_mode = initObj.throttle_mode
      }
      else {
        this.throttle_mode = 0;
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('brake_mode')) {
        this.brake_mode = initObj.brake_mode
      }
      else {
        this.brake_mode = 0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration_mode')) {
        this.acceleration_mode = initObj.acceleration_mode
      }
      else {
        this.acceleration_mode = 0;
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('gear_mode')) {
        this.gear_mode = initObj.gear_mode
      }
      else {
        this.gear_mode = 0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = new Gear();
      }
      if (initObj.hasOwnProperty('turn_light_status')) {
        this.turn_light_status = initObj.turn_light_status
      }
      else {
        this.turn_light_status = 0;
      }
      if (initObj.hasOwnProperty('door_status')) {
        this.door_status = initObj.door_status
      }
      else {
        this.door_status = 0;
      }
      if (initObj.hasOwnProperty('wiper_status')) {
        this.wiper_status = initObj.wiper_status
      }
      else {
        this.wiper_status = 0;
      }
      if (initObj.hasOwnProperty('horn_status')) {
        this.horn_status = initObj.horn_status
      }
      else {
        this.horn_status = 0;
      }
      if (initObj.hasOwnProperty('light_status')) {
        this.light_status = initObj.light_status
      }
      else {
        this.light_status = 0;
      }
      if (initObj.hasOwnProperty('dump_energy_status')) {
        this.dump_energy_status = initObj.dump_energy_status
      }
      else {
        this.dump_energy_status = 0;
      }
      if (initObj.hasOwnProperty('auto_driver_status')) {
        this.auto_driver_status = initObj.auto_driver_status
      }
      else {
        this.auto_driver_status = 0;
      }
      if (initObj.hasOwnProperty('vehicle_error_status')) {
        this.vehicle_error_status = initObj.vehicle_error_status
      }
      else {
        this.vehicle_error_status = 0;
      }
      if (initObj.hasOwnProperty('emergency_stop_status')) {
        this.emergency_stop_status = initObj.emergency_stop_status
      }
      else {
        this.emergency_stop_status = 0;
      }
      if (initObj.hasOwnProperty('brake_air_pressure_0')) {
        this.brake_air_pressure_0 = initObj.brake_air_pressure_0
      }
      else {
        this.brake_air_pressure_0 = 0.0;
      }
      if (initObj.hasOwnProperty('brake_air_pressure_1')) {
        this.brake_air_pressure_1 = initObj.brake_air_pressure_1
      }
      else {
        this.brake_air_pressure_1 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicle_speed]
    bufferOffset = _serializer.float64(obj.vehicle_speed, buffer, bufferOffset);
    // Serialize message field [odometer]
    bufferOffset = _serializer.float64(obj.odometer, buffer, bufferOffset);
    // Serialize message field [wheel_speed]
    bufferOffset = _arraySerializer.float64(obj.wheel_speed, buffer, bufferOffset, null);
    // Serialize message field [wheel_odometer]
    bufferOffset = _arraySerializer.float64(obj.wheel_odometer, buffer, bufferOffset, null);
    // Serialize message field [wheel_angle_left]
    bufferOffset = _serializer.float64(obj.wheel_angle_left, buffer, bufferOffset);
    // Serialize message field [wheel_angle_right]
    bufferOffset = _serializer.float64(obj.wheel_angle_right, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float64(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [gx]
    bufferOffset = _serializer.float64(obj.gx, buffer, bufferOffset);
    // Serialize message field [gy]
    bufferOffset = _serializer.float64(obj.gy, buffer, bufferOffset);
    // Serialize message field [steering_mode]
    bufferOffset = _serializer.uint8(obj.steering_mode, buffer, bufferOffset);
    // Serialize message field [steering_angle]
    bufferOffset = _serializer.float64(obj.steering_angle, buffer, bufferOffset);
    // Serialize message field [throttle_mode]
    bufferOffset = _serializer.uint8(obj.throttle_mode, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float64(obj.throttle, buffer, bufferOffset);
    // Serialize message field [brake_mode]
    bufferOffset = _serializer.uint8(obj.brake_mode, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.float64(obj.brake, buffer, bufferOffset);
    // Serialize message field [acceleration_mode]
    bufferOffset = _serializer.uint8(obj.acceleration_mode, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = _serializer.float64(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [gear_mode]
    bufferOffset = _serializer.uint8(obj.gear_mode, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = Gear.serialize(obj.gear, buffer, bufferOffset);
    // Serialize message field [turn_light_status]
    bufferOffset = _serializer.uint8(obj.turn_light_status, buffer, bufferOffset);
    // Serialize message field [door_status]
    bufferOffset = _serializer.uint8(obj.door_status, buffer, bufferOffset);
    // Serialize message field [wiper_status]
    bufferOffset = _serializer.uint8(obj.wiper_status, buffer, bufferOffset);
    // Serialize message field [horn_status]
    bufferOffset = _serializer.uint8(obj.horn_status, buffer, bufferOffset);
    // Serialize message field [light_status]
    bufferOffset = _serializer.uint8(obj.light_status, buffer, bufferOffset);
    // Serialize message field [dump_energy_status]
    bufferOffset = _serializer.uint8(obj.dump_energy_status, buffer, bufferOffset);
    // Serialize message field [auto_driver_status]
    bufferOffset = _serializer.uint8(obj.auto_driver_status, buffer, bufferOffset);
    // Serialize message field [vehicle_error_status]
    bufferOffset = _serializer.uint16(obj.vehicle_error_status, buffer, bufferOffset);
    // Serialize message field [emergency_stop_status]
    bufferOffset = _serializer.uint8(obj.emergency_stop_status, buffer, bufferOffset);
    // Serialize message field [brake_air_pressure_0]
    bufferOffset = _serializer.float64(obj.brake_air_pressure_0, buffer, bufferOffset);
    // Serialize message field [brake_air_pressure_1]
    bufferOffset = _serializer.float64(obj.brake_air_pressure_1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleInfo
    let len;
    let data = new VehicleInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_speed]
    data.vehicle_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [odometer]
    data.odometer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wheel_speed]
    data.wheel_speed = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [wheel_odometer]
    data.wheel_odometer = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [wheel_angle_left]
    data.wheel_angle_left = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wheel_angle_right]
    data.wheel_angle_right = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gx]
    data.gx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gy]
    data.gy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_mode]
    data.steering_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [steering_angle]
    data.steering_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle_mode]
    data.throttle_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_mode]
    data.brake_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration_mode]
    data.acceleration_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gear_mode]
    data.gear_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = Gear.deserialize(buffer, bufferOffset);
    // Deserialize message field [turn_light_status]
    data.turn_light_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [door_status]
    data.door_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wiper_status]
    data.wiper_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [horn_status]
    data.horn_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [light_status]
    data.light_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dump_energy_status]
    data.dump_energy_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [auto_driver_status]
    data.auto_driver_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vehicle_error_status]
    data.vehicle_error_status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [emergency_stop_status]
    data.emergency_stop_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_air_pressure_0]
    data.brake_air_pressure_0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_air_pressure_1]
    data.brake_air_pressure_1 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.wheel_speed.length;
    length += 8 * object.wheel_odometer.length;
    return length + 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pncc_msgs/VehicleInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5250ff1105cef33cd8779a4c67c998f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MODE_MANUAL = 70
    uint8 MODE_AUTO = 71
    uint8 MODE_INTERVENED = 72
    
    Header header
    
    float64 vehicle_speed    # m/s
    float64 odometer         # m
    
    float64[] wheel_speed    # m/s, start from FL, clockwise.
    float64[] wheel_odometer # m, start from FL, clockwise.
    
    float64 wheel_angle_left # degree
    float64 wheel_angle_right# degree
    
    float64 yaw_rate         # rad/s
    float64 gx               # m/s2
    float64 gy               # m/s2
    
    uint8 steering_mode
    float64 steering_angle   # degree
    
    uint8 throttle_mode
    float64 throttle         # 0.0 ~ 1.0; -1.0 for unavailable.
    
    uint8 brake_mode
    float64 brake            # 0.0 ~ 1.0; -1.0 for unavailable.
    
    uint8 acceleration_mode
    float64 acceleration     # m/s2
    
    uint8 gear_mode
    Gear gear
    
    uint8 turn_light_status
    uint8 door_status
    uint8 wiper_status
    uint8 horn_status
    uint8 light_status
    uint8 dump_energy_status
    
    uint8 auto_driver_status           #0:auto_driver          1:human intervention 2:udp lost 3:can lost 5:cdc lost
    uint16 vehicle_error_status        #contain eight status, each status takes 2 bits          steering_error/gear_error/throttle_error/brake_error/vehicle_error
    
    uint8 emergency_stop_status        #0:normal 1:stop_status
    
    float64 brake_air_pressure_0 # air pressure
    float64 brake_air_pressure_1
    
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
    MSG: pncc_msgs/Gear
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
    const resolved = new VehicleInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicle_speed !== undefined) {
      resolved.vehicle_speed = msg.vehicle_speed;
    }
    else {
      resolved.vehicle_speed = 0.0
    }

    if (msg.odometer !== undefined) {
      resolved.odometer = msg.odometer;
    }
    else {
      resolved.odometer = 0.0
    }

    if (msg.wheel_speed !== undefined) {
      resolved.wheel_speed = msg.wheel_speed;
    }
    else {
      resolved.wheel_speed = []
    }

    if (msg.wheel_odometer !== undefined) {
      resolved.wheel_odometer = msg.wheel_odometer;
    }
    else {
      resolved.wheel_odometer = []
    }

    if (msg.wheel_angle_left !== undefined) {
      resolved.wheel_angle_left = msg.wheel_angle_left;
    }
    else {
      resolved.wheel_angle_left = 0.0
    }

    if (msg.wheel_angle_right !== undefined) {
      resolved.wheel_angle_right = msg.wheel_angle_right;
    }
    else {
      resolved.wheel_angle_right = 0.0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    if (msg.gx !== undefined) {
      resolved.gx = msg.gx;
    }
    else {
      resolved.gx = 0.0
    }

    if (msg.gy !== undefined) {
      resolved.gy = msg.gy;
    }
    else {
      resolved.gy = 0.0
    }

    if (msg.steering_mode !== undefined) {
      resolved.steering_mode = msg.steering_mode;
    }
    else {
      resolved.steering_mode = 0
    }

    if (msg.steering_angle !== undefined) {
      resolved.steering_angle = msg.steering_angle;
    }
    else {
      resolved.steering_angle = 0.0
    }

    if (msg.throttle_mode !== undefined) {
      resolved.throttle_mode = msg.throttle_mode;
    }
    else {
      resolved.throttle_mode = 0
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.brake_mode !== undefined) {
      resolved.brake_mode = msg.brake_mode;
    }
    else {
      resolved.brake_mode = 0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0.0
    }

    if (msg.acceleration_mode !== undefined) {
      resolved.acceleration_mode = msg.acceleration_mode;
    }
    else {
      resolved.acceleration_mode = 0
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = msg.acceleration;
    }
    else {
      resolved.acceleration = 0.0
    }

    if (msg.gear_mode !== undefined) {
      resolved.gear_mode = msg.gear_mode;
    }
    else {
      resolved.gear_mode = 0
    }

    if (msg.gear !== undefined) {
      resolved.gear = Gear.Resolve(msg.gear)
    }
    else {
      resolved.gear = new Gear()
    }

    if (msg.turn_light_status !== undefined) {
      resolved.turn_light_status = msg.turn_light_status;
    }
    else {
      resolved.turn_light_status = 0
    }

    if (msg.door_status !== undefined) {
      resolved.door_status = msg.door_status;
    }
    else {
      resolved.door_status = 0
    }

    if (msg.wiper_status !== undefined) {
      resolved.wiper_status = msg.wiper_status;
    }
    else {
      resolved.wiper_status = 0
    }

    if (msg.horn_status !== undefined) {
      resolved.horn_status = msg.horn_status;
    }
    else {
      resolved.horn_status = 0
    }

    if (msg.light_status !== undefined) {
      resolved.light_status = msg.light_status;
    }
    else {
      resolved.light_status = 0
    }

    if (msg.dump_energy_status !== undefined) {
      resolved.dump_energy_status = msg.dump_energy_status;
    }
    else {
      resolved.dump_energy_status = 0
    }

    if (msg.auto_driver_status !== undefined) {
      resolved.auto_driver_status = msg.auto_driver_status;
    }
    else {
      resolved.auto_driver_status = 0
    }

    if (msg.vehicle_error_status !== undefined) {
      resolved.vehicle_error_status = msg.vehicle_error_status;
    }
    else {
      resolved.vehicle_error_status = 0
    }

    if (msg.emergency_stop_status !== undefined) {
      resolved.emergency_stop_status = msg.emergency_stop_status;
    }
    else {
      resolved.emergency_stop_status = 0
    }

    if (msg.brake_air_pressure_0 !== undefined) {
      resolved.brake_air_pressure_0 = msg.brake_air_pressure_0;
    }
    else {
      resolved.brake_air_pressure_0 = 0.0
    }

    if (msg.brake_air_pressure_1 !== undefined) {
      resolved.brake_air_pressure_1 = msg.brake_air_pressure_1;
    }
    else {
      resolved.brake_air_pressure_1 = 0.0
    }

    return resolved;
    }
};

// Constants for message
VehicleInfo.Constants = {
  MODE_MANUAL: 70,
  MODE_AUTO: 71,
  MODE_INTERVENED: 72,
}

module.exports = VehicleInfo;
