// Auto-generated. Do not edit!

// (in-package pnc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let pncc_msgs = _finder('pncc_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.steering_mode = null;
      this.steering_angle = null;
      this.steering_speed = null;
      this.throttle_mode = null;
      this.throttle = null;
      this.brake_mode = null;
      this.brake = null;
      this.acceleration_request = null;
      this.acceleration_mode = null;
      this.gear = null;
      this.gear_mode = null;
      this.turn_light_mode = null;
      this.turn_light = null;
      this.light_mode = null;
      this.light = null;
      this.wiper_mode = null;
      this.wiper = null;
      this.door_mode = null;
      this.door = null;
      this.horn_mode = null;
      this.horn = null;
      this.auto_driver_cmd = null;
      this.e_stop_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
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
      if (initObj.hasOwnProperty('steering_speed')) {
        this.steering_speed = initObj.steering_speed
      }
      else {
        this.steering_speed = 0.0;
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
      if (initObj.hasOwnProperty('acceleration_request')) {
        this.acceleration_request = initObj.acceleration_request
      }
      else {
        this.acceleration_request = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration_mode')) {
        this.acceleration_mode = initObj.acceleration_mode
      }
      else {
        this.acceleration_mode = 0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = new pncc_msgs.msg.Gear();
      }
      if (initObj.hasOwnProperty('gear_mode')) {
        this.gear_mode = initObj.gear_mode
      }
      else {
        this.gear_mode = 0;
      }
      if (initObj.hasOwnProperty('turn_light_mode')) {
        this.turn_light_mode = initObj.turn_light_mode
      }
      else {
        this.turn_light_mode = 0;
      }
      if (initObj.hasOwnProperty('turn_light')) {
        this.turn_light = initObj.turn_light
      }
      else {
        this.turn_light = 0;
      }
      if (initObj.hasOwnProperty('light_mode')) {
        this.light_mode = initObj.light_mode
      }
      else {
        this.light_mode = 0;
      }
      if (initObj.hasOwnProperty('light')) {
        this.light = initObj.light
      }
      else {
        this.light = 0;
      }
      if (initObj.hasOwnProperty('wiper_mode')) {
        this.wiper_mode = initObj.wiper_mode
      }
      else {
        this.wiper_mode = 0;
      }
      if (initObj.hasOwnProperty('wiper')) {
        this.wiper = initObj.wiper
      }
      else {
        this.wiper = 0;
      }
      if (initObj.hasOwnProperty('door_mode')) {
        this.door_mode = initObj.door_mode
      }
      else {
        this.door_mode = 0;
      }
      if (initObj.hasOwnProperty('door')) {
        this.door = initObj.door
      }
      else {
        this.door = 0;
      }
      if (initObj.hasOwnProperty('horn_mode')) {
        this.horn_mode = initObj.horn_mode
      }
      else {
        this.horn_mode = 0;
      }
      if (initObj.hasOwnProperty('horn')) {
        this.horn = initObj.horn
      }
      else {
        this.horn = 0;
      }
      if (initObj.hasOwnProperty('auto_driver_cmd')) {
        this.auto_driver_cmd = initObj.auto_driver_cmd
      }
      else {
        this.auto_driver_cmd = 0;
      }
      if (initObj.hasOwnProperty('e_stop_cmd')) {
        this.e_stop_cmd = initObj.e_stop_cmd
      }
      else {
        this.e_stop_cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [steering_mode]
    bufferOffset = _serializer.uint8(obj.steering_mode, buffer, bufferOffset);
    // Serialize message field [steering_angle]
    bufferOffset = _serializer.float64(obj.steering_angle, buffer, bufferOffset);
    // Serialize message field [steering_speed]
    bufferOffset = _serializer.float64(obj.steering_speed, buffer, bufferOffset);
    // Serialize message field [throttle_mode]
    bufferOffset = _serializer.uint8(obj.throttle_mode, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float64(obj.throttle, buffer, bufferOffset);
    // Serialize message field [brake_mode]
    bufferOffset = _serializer.uint8(obj.brake_mode, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.float64(obj.brake, buffer, bufferOffset);
    // Serialize message field [acceleration_request]
    bufferOffset = _serializer.float64(obj.acceleration_request, buffer, bufferOffset);
    // Serialize message field [acceleration_mode]
    bufferOffset = _serializer.uint8(obj.acceleration_mode, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = pncc_msgs.msg.Gear.serialize(obj.gear, buffer, bufferOffset);
    // Serialize message field [gear_mode]
    bufferOffset = _serializer.uint8(obj.gear_mode, buffer, bufferOffset);
    // Serialize message field [turn_light_mode]
    bufferOffset = _serializer.uint8(obj.turn_light_mode, buffer, bufferOffset);
    // Serialize message field [turn_light]
    bufferOffset = _serializer.uint8(obj.turn_light, buffer, bufferOffset);
    // Serialize message field [light_mode]
    bufferOffset = _serializer.uint8(obj.light_mode, buffer, bufferOffset);
    // Serialize message field [light]
    bufferOffset = _serializer.uint8(obj.light, buffer, bufferOffset);
    // Serialize message field [wiper_mode]
    bufferOffset = _serializer.uint8(obj.wiper_mode, buffer, bufferOffset);
    // Serialize message field [wiper]
    bufferOffset = _serializer.uint8(obj.wiper, buffer, bufferOffset);
    // Serialize message field [door_mode]
    bufferOffset = _serializer.uint8(obj.door_mode, buffer, bufferOffset);
    // Serialize message field [door]
    bufferOffset = _serializer.uint8(obj.door, buffer, bufferOffset);
    // Serialize message field [horn_mode]
    bufferOffset = _serializer.uint8(obj.horn_mode, buffer, bufferOffset);
    // Serialize message field [horn]
    bufferOffset = _serializer.uint8(obj.horn, buffer, bufferOffset);
    // Serialize message field [auto_driver_cmd]
    bufferOffset = _serializer.uint8(obj.auto_driver_cmd, buffer, bufferOffset);
    // Serialize message field [e_stop_cmd]
    bufferOffset = _serializer.uint8(obj.e_stop_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleCmd
    let len;
    let data = new VehicleCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_mode]
    data.steering_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [steering_angle]
    data.steering_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_speed]
    data.steering_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle_mode]
    data.throttle_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_mode]
    data.brake_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration_request]
    data.acceleration_request = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration_mode]
    data.acceleration_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = pncc_msgs.msg.Gear.deserialize(buffer, bufferOffset);
    // Deserialize message field [gear_mode]
    data.gear_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [turn_light_mode]
    data.turn_light_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [turn_light]
    data.turn_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [light_mode]
    data.light_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [light]
    data.light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wiper_mode]
    data.wiper_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wiper]
    data.wiper = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [door_mode]
    data.door_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [door]
    data.door = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [horn_mode]
    data.horn_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [horn]
    data.horn = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [auto_driver_cmd]
    data.auto_driver_cmd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [e_stop_cmd]
    data.e_stop_cmd = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 58;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnc_msgs/VehicleCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd13944380411e88decad84bf9d937781';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MODE_MANUAL = 100
    uint8 MODE_AUTO = 101
    
    uint8 OFF = 150              # For horn, left_light and right_light
    uint8 ON = 151               # For horn, left_light and right_light
    
    uint8 TURN_LIGHT_LEFT = 0
    uint8 TURN_LIGHT_RIGHT = 1
    uint8 TURN_LIGHT_BOTH = 2
    uint8 TURN_LIGHT_INVALID = 3
    
    uint8 LIGHT_CLOSE = 0
    uint8 LIGHT_NEAR = 1
    uint8 LIGHT_FAR = 2
    uint8 LIGHT_INVALID = 3
    
    uint8 WIPER_CLOSE = 0
    uint8 WIPER_RUN = 1
    uint8 WIPER_RESERVE = 2
    uint8 WIPER_INVALID = 3
    
    uint8 DOOR_NO_CONTROL = 0
    uint8 DOOR_NORMAL_OPEN = 1
    uint8 DOOR_EMERGENCY_OPEN = 2
    uint8 DOOR_RESERVE = 3
    
    uint8 HORN_NO_CONTROL = 0
    uint8 HORN_OPEN = 1
    
    Header header
    
    uint8 steering_mode
    float64 steering_angle     # -1.0 ~ 1.0, positive number on the right side
    float64 steering_speed     # 0.0 ~ 1.0
    
    uint8 throttle_mode
    float64 throttle           # 0.0 ~ 1.0
    uint8 brake_mode
    float64 brake              # 0.0 ~ 1.0
    
    float64 acceleration_request   # m/s2
    uint8 acceleration_mode
    
    pncc_msgs/Gear gear
    uint8 gear_mode
    
    uint8 turn_light_mode
    uint8 turn_light            #0:left  1:right  2:both  3:invalid
    
    uint8 light_mode
    uint8 light                 #front light    0:close  1:near light   2:far light  3:invalid
    
    uint8 wiper_mode
    uint8 wiper                 #0:wiper close  1:run wiper  2:reserve  3:invalid
    
    uint8 door_mode
    uint8 door                  #0:no control  1:normal open  2:emergency open  3:reserve
    
    uint8 horn_mode
    uint8 horn               #0:no control  1:open
    
    uint8 auto_driver_cmd
    uint8 e_stop_cmd
    
    
    
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
    const resolved = new VehicleCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

    if (msg.steering_speed !== undefined) {
      resolved.steering_speed = msg.steering_speed;
    }
    else {
      resolved.steering_speed = 0.0
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

    if (msg.acceleration_request !== undefined) {
      resolved.acceleration_request = msg.acceleration_request;
    }
    else {
      resolved.acceleration_request = 0.0
    }

    if (msg.acceleration_mode !== undefined) {
      resolved.acceleration_mode = msg.acceleration_mode;
    }
    else {
      resolved.acceleration_mode = 0
    }

    if (msg.gear !== undefined) {
      resolved.gear = pncc_msgs.msg.Gear.Resolve(msg.gear)
    }
    else {
      resolved.gear = new pncc_msgs.msg.Gear()
    }

    if (msg.gear_mode !== undefined) {
      resolved.gear_mode = msg.gear_mode;
    }
    else {
      resolved.gear_mode = 0
    }

    if (msg.turn_light_mode !== undefined) {
      resolved.turn_light_mode = msg.turn_light_mode;
    }
    else {
      resolved.turn_light_mode = 0
    }

    if (msg.turn_light !== undefined) {
      resolved.turn_light = msg.turn_light;
    }
    else {
      resolved.turn_light = 0
    }

    if (msg.light_mode !== undefined) {
      resolved.light_mode = msg.light_mode;
    }
    else {
      resolved.light_mode = 0
    }

    if (msg.light !== undefined) {
      resolved.light = msg.light;
    }
    else {
      resolved.light = 0
    }

    if (msg.wiper_mode !== undefined) {
      resolved.wiper_mode = msg.wiper_mode;
    }
    else {
      resolved.wiper_mode = 0
    }

    if (msg.wiper !== undefined) {
      resolved.wiper = msg.wiper;
    }
    else {
      resolved.wiper = 0
    }

    if (msg.door_mode !== undefined) {
      resolved.door_mode = msg.door_mode;
    }
    else {
      resolved.door_mode = 0
    }

    if (msg.door !== undefined) {
      resolved.door = msg.door;
    }
    else {
      resolved.door = 0
    }

    if (msg.horn_mode !== undefined) {
      resolved.horn_mode = msg.horn_mode;
    }
    else {
      resolved.horn_mode = 0
    }

    if (msg.horn !== undefined) {
      resolved.horn = msg.horn;
    }
    else {
      resolved.horn = 0
    }

    if (msg.auto_driver_cmd !== undefined) {
      resolved.auto_driver_cmd = msg.auto_driver_cmd;
    }
    else {
      resolved.auto_driver_cmd = 0
    }

    if (msg.e_stop_cmd !== undefined) {
      resolved.e_stop_cmd = msg.e_stop_cmd;
    }
    else {
      resolved.e_stop_cmd = 0
    }

    return resolved;
    }
};

// Constants for message
VehicleCmd.Constants = {
  MODE_MANUAL: 100,
  MODE_AUTO: 101,
  OFF: 150,
  ON: 151,
  TURN_LIGHT_LEFT: 0,
  TURN_LIGHT_RIGHT: 1,
  TURN_LIGHT_BOTH: 2,
  TURN_LIGHT_INVALID: 3,
  LIGHT_CLOSE: 0,
  LIGHT_NEAR: 1,
  LIGHT_FAR: 2,
  LIGHT_INVALID: 3,
  WIPER_CLOSE: 0,
  WIPER_RUN: 1,
  WIPER_RESERVE: 2,
  WIPER_INVALID: 3,
  DOOR_NO_CONTROL: 0,
  DOOR_NORMAL_OPEN: 1,
  DOOR_EMERGENCY_OPEN: 2,
  DOOR_RESERVE: 3,
  HORN_NO_CONTROL: 0,
  HORN_OPEN: 1,
}

module.exports = VehicleCmd;
