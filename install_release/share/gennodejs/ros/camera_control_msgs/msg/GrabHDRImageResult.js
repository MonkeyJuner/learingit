// Auto-generated. Do not edit!

// (in-package camera_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class GrabHDRImageResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reached_values = null;
      this.hdr_image = null;
      this.reached_exposure_times = null;
      this.reached_brightness_values = null;
      this.reached_gain_values = null;
      this.reached_gamma_values = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('reached_values')) {
        this.reached_values = initObj.reached_values
      }
      else {
        this.reached_values = [];
      }
      if (initObj.hasOwnProperty('hdr_image')) {
        this.hdr_image = initObj.hdr_image
      }
      else {
        this.hdr_image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('reached_exposure_times')) {
        this.reached_exposure_times = initObj.reached_exposure_times
      }
      else {
        this.reached_exposure_times = [];
      }
      if (initObj.hasOwnProperty('reached_brightness_values')) {
        this.reached_brightness_values = initObj.reached_brightness_values
      }
      else {
        this.reached_brightness_values = [];
      }
      if (initObj.hasOwnProperty('reached_gain_values')) {
        this.reached_gain_values = initObj.reached_gain_values
      }
      else {
        this.reached_gain_values = [];
      }
      if (initObj.hasOwnProperty('reached_gamma_values')) {
        this.reached_gamma_values = initObj.reached_gamma_values
      }
      else {
        this.reached_gamma_values = [];
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GrabHDRImageResult
    // Serialize message field [reached_values]
    bufferOffset = _arraySerializer.float32(obj.reached_values, buffer, bufferOffset, null);
    // Serialize message field [hdr_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.hdr_image, buffer, bufferOffset);
    // Serialize message field [reached_exposure_times]
    bufferOffset = _arraySerializer.float32(obj.reached_exposure_times, buffer, bufferOffset, null);
    // Serialize message field [reached_brightness_values]
    bufferOffset = _arraySerializer.float32(obj.reached_brightness_values, buffer, bufferOffset, null);
    // Serialize message field [reached_gain_values]
    bufferOffset = _arraySerializer.float32(obj.reached_gain_values, buffer, bufferOffset, null);
    // Serialize message field [reached_gamma_values]
    bufferOffset = _arraySerializer.float32(obj.reached_gamma_values, buffer, bufferOffset, null);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GrabHDRImageResult
    let len;
    let data = new GrabHDRImageResult(null);
    // Deserialize message field [reached_values]
    data.reached_values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [hdr_image]
    data.hdr_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [reached_exposure_times]
    data.reached_exposure_times = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [reached_brightness_values]
    data.reached_brightness_values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [reached_gain_values]
    data.reached_gain_values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [reached_gamma_values]
    data.reached_gamma_values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.reached_values.length;
    length += sensor_msgs.msg.Image.getMessageSize(object.hdr_image);
    length += 4 * object.reached_exposure_times.length;
    length += 4 * object.reached_brightness_values.length;
    length += 4 * object.reached_gain_values.length;
    length += 4 * object.reached_gamma_values.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'camera_control_msgs/GrabHDRImageResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94b690a9387c9677e5fe4fdfb8dc4bc6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    ##########################################
    ################# RESULT #################
    ##########################################
    
    ########################################## DEPRECATED !!!
    # target values can not always be reached
    float32[] reached_values
    ########################################## DEPRECATED !!!
    
    # The resulting HDR image generated out of several images with the inquired
    # image intensity settings.
    sensor_msgs/Image hdr_image
    
    # The reached values of the images e.g. the values that were set to the camera
    # before the grab
    float32[] reached_exposure_times
    
    float32[] reached_brightness_values
    
    float32[] reached_gain_values
    
    float32[] reached_gamma_values
    
    # Flag which indicates the success of the grabbing action
    bool success
    
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    const resolved = new GrabHDRImageResult(null);
    if (msg.reached_values !== undefined) {
      resolved.reached_values = msg.reached_values;
    }
    else {
      resolved.reached_values = []
    }

    if (msg.hdr_image !== undefined) {
      resolved.hdr_image = sensor_msgs.msg.Image.Resolve(msg.hdr_image)
    }
    else {
      resolved.hdr_image = new sensor_msgs.msg.Image()
    }

    if (msg.reached_exposure_times !== undefined) {
      resolved.reached_exposure_times = msg.reached_exposure_times;
    }
    else {
      resolved.reached_exposure_times = []
    }

    if (msg.reached_brightness_values !== undefined) {
      resolved.reached_brightness_values = msg.reached_brightness_values;
    }
    else {
      resolved.reached_brightness_values = []
    }

    if (msg.reached_gain_values !== undefined) {
      resolved.reached_gain_values = msg.reached_gain_values;
    }
    else {
      resolved.reached_gain_values = []
    }

    if (msg.reached_gamma_values !== undefined) {
      resolved.reached_gamma_values = msg.reached_gamma_values;
    }
    else {
      resolved.reached_gamma_values = []
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = GrabHDRImageResult;
