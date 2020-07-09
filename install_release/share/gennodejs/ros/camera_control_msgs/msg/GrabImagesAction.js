// Auto-generated. Do not edit!

// (in-package camera_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GrabImagesActionGoal = require('./GrabImagesActionGoal.js');
let GrabImagesActionResult = require('./GrabImagesActionResult.js');
let GrabImagesActionFeedback = require('./GrabImagesActionFeedback.js');

//-----------------------------------------------------------

class GrabImagesAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new GrabImagesActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new GrabImagesActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new GrabImagesActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GrabImagesAction
    // Serialize message field [action_goal]
    bufferOffset = GrabImagesActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = GrabImagesActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = GrabImagesActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GrabImagesAction
    let len;
    let data = new GrabImagesAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = GrabImagesActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = GrabImagesActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = GrabImagesActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GrabImagesActionGoal.getMessageSize(object.action_goal);
    length += GrabImagesActionResult.getMessageSize(object.action_result);
    length += GrabImagesActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'camera_control_msgs/GrabImagesAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb800b200cfebf3a0829529417896e4c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    GrabImagesActionGoal action_goal
    GrabImagesActionResult action_result
    GrabImagesActionFeedback action_feedback
    
    ================================================================================
    MSG: camera_control_msgs/GrabImagesActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    GrabImagesGoal goal
    
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
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: camera_control_msgs/GrabImagesGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    ##########################################
    ################## GOAL ##################
    ##########################################
    
    ########################################## DEPRECATED !!!
    uint8 BRIGHTNESS = 1
    uint8 EXPOSURE = 2
    # select between desired mean brightness or exposure
    uint8 target_type
    # list of target exposures/brightness -> resulting 'images' list has same size
    float32[] target_values
    ########################################## DEPRECATED !!!
    
    # Flag which indicates if the exposure times are provided and hence should be
    # set before grabbing
    bool exposure_given
    
    # Only relevant, if exposure_given is true:
    # The list of target exposure times in microseconds.
    # It is possible to grab only one image as well as several images with
    # different exposure times. This values can be overriden from the brightness
    # search, in case that the flag exposure_fixed is not true.
    float32[] exposure_times
    
    # Flag which indicates if the gain is provided and hence should be set before
    # grabbing
    bool gain_given
    
    # Only relevant, if gain_given is true:
    # The target gain in percent of the maximal value the camera supports.
    # For USB-Cameras, the gain is in dB, for GigE-Cameras it is given in so
    # called 'device specific units'. This value can be overriden from the
    # brightness search, in case that the gain_fixed flag is set to false.
    float32[] gain_values
    
    # Flag which indicates if the gamma value is provided and hence should be set
    # before grabbing
    bool gamma_given
    
    # Only relevant, if gain_given is true:
    # Gamma correction of pixel intensity.
    # Adjusts the brightness of the pixel values output by the camera's sensor
    # to account for a non-linearity in the human perception of brightness or
    # of the display system (such as CRT).
    float32[] gamma_values
    
    # Flag which indicates if the brightness values are provided and hence should
    # be set before grabbing
    bool brightness_given
    
    # Only relevant, if brightness_given is true:
    # The average intensity values of the images. It depends the exposure time
    # as well as the gain setting.
    float32[] brightness_values
    
    # Only relevant, if brightness_given is true:
    # If the camera should try reach the desired brightness, at least one of the
    # following flags MUST be set. If both are set, the interface will use the
    # profile that tries to keep the gain at minimum to reduce white noise.
    # 'exposure_auto' will adapt the exposure time to reach the brightness, wheras
    # 'gain_auto' does so by adapting the gain. If one of these flags is set to
    # false, the connected property will be kept fix.
    # In most of the cases trying to reach a target brightness only by varying the
    # gain and keeping the exposure time fix is not a good approach, because the
    # exposure range is many times higher than the gain range.
    bool exposure_auto
    bool gain_auto
    
    
    ================================================================================
    MSG: camera_control_msgs/GrabImagesActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    GrabImagesResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: camera_control_msgs/GrabImagesResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    ##########################################
    ################# RESULT #################
    ##########################################
    
    ########################################## DEPRECATED !!!
    # target values can not always be reached
    float32[] reached_values
    ########################################## DEPRECATED !!!
    
    # The resulting images with the inquired image intensity settings.
    # The size of the vector equals the size of the exposure_times or the
    # brightness_values-vector
    sensor_msgs/Image[] images
    
    # The reached values of the images e.g. the values that were set to the camera
    # before the grab
    float32[] reached_exposure_times
    
    float32[] reached_brightness_values
    
    float32[] reached_gain_values
    
    float32[] reached_gamma_values
    
    # Flag which indicates the success of the grabbing action
    # In case of failure, the images-vector contains only the images, that could be
    # grabbed before the failure occurred.
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
    MSG: camera_control_msgs/GrabImagesActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    GrabImagesFeedback feedback
    
    ================================================================================
    MSG: camera_control_msgs/GrabImagesFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    ##########################################
    ################ FEEDBACK ################
    ##########################################
    # The number of images already taken
    int32 curr_nr_images_taken
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GrabImagesAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = GrabImagesActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new GrabImagesActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = GrabImagesActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new GrabImagesActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = GrabImagesActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new GrabImagesActionFeedback()
    }

    return resolved;
    }
};

module.exports = GrabImagesAction;