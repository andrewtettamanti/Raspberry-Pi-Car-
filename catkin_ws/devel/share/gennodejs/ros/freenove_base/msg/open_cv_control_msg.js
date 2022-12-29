// Auto-generated. Do not edit!

// (in-package freenove_base.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class open_cv_control_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.switch = null;
    }
    else {
      if (initObj.hasOwnProperty('switch')) {
        this.switch = initObj.switch
      }
      else {
        this.switch = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type open_cv_control_msg
    // Serialize message field [switch]
    bufferOffset = _serializer.bool(obj.switch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type open_cv_control_msg
    let len;
    let data = new open_cv_control_msg(null);
    // Deserialize message field [switch]
    data.switch = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'freenove_base/open_cv_control_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edf4418cb54ddc10e1d7f39bd43124c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool switch
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new open_cv_control_msg(null);
    if (msg.switch !== undefined) {
      resolved.switch = msg.switch;
    }
    else {
      resolved.switch = false
    }

    return resolved;
    }
};

module.exports = open_cv_control_msg;
