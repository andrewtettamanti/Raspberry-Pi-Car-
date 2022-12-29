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

class motor_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_Upper_Wheel = null;
      this.left_Lower_Wheel = null;
      this.right_Upper_Wheel = null;
      this.right_Lower_Wheel = null;
    }
    else {
      if (initObj.hasOwnProperty('left_Upper_Wheel')) {
        this.left_Upper_Wheel = initObj.left_Upper_Wheel
      }
      else {
        this.left_Upper_Wheel = 0;
      }
      if (initObj.hasOwnProperty('left_Lower_Wheel')) {
        this.left_Lower_Wheel = initObj.left_Lower_Wheel
      }
      else {
        this.left_Lower_Wheel = 0;
      }
      if (initObj.hasOwnProperty('right_Upper_Wheel')) {
        this.right_Upper_Wheel = initObj.right_Upper_Wheel
      }
      else {
        this.right_Upper_Wheel = 0;
      }
      if (initObj.hasOwnProperty('right_Lower_Wheel')) {
        this.right_Lower_Wheel = initObj.right_Lower_Wheel
      }
      else {
        this.right_Lower_Wheel = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motor_msg
    // Serialize message field [left_Upper_Wheel]
    bufferOffset = _serializer.int32(obj.left_Upper_Wheel, buffer, bufferOffset);
    // Serialize message field [left_Lower_Wheel]
    bufferOffset = _serializer.int32(obj.left_Lower_Wheel, buffer, bufferOffset);
    // Serialize message field [right_Upper_Wheel]
    bufferOffset = _serializer.int32(obj.right_Upper_Wheel, buffer, bufferOffset);
    // Serialize message field [right_Lower_Wheel]
    bufferOffset = _serializer.int32(obj.right_Lower_Wheel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor_msg
    let len;
    let data = new motor_msg(null);
    // Deserialize message field [left_Upper_Wheel]
    data.left_Upper_Wheel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left_Lower_Wheel]
    data.left_Lower_Wheel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right_Upper_Wheel]
    data.right_Upper_Wheel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right_Lower_Wheel]
    data.right_Lower_Wheel = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'freenove_base/motor_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e24da12eec5391bbb4b843a4cfaed882';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 left_Upper_Wheel
    int32 left_Lower_Wheel
    int32 right_Upper_Wheel
    int32 right_Lower_Wheel
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motor_msg(null);
    if (msg.left_Upper_Wheel !== undefined) {
      resolved.left_Upper_Wheel = msg.left_Upper_Wheel;
    }
    else {
      resolved.left_Upper_Wheel = 0
    }

    if (msg.left_Lower_Wheel !== undefined) {
      resolved.left_Lower_Wheel = msg.left_Lower_Wheel;
    }
    else {
      resolved.left_Lower_Wheel = 0
    }

    if (msg.right_Upper_Wheel !== undefined) {
      resolved.right_Upper_Wheel = msg.right_Upper_Wheel;
    }
    else {
      resolved.right_Upper_Wheel = 0
    }

    if (msg.right_Lower_Wheel !== undefined) {
      resolved.right_Lower_Wheel = msg.right_Lower_Wheel;
    }
    else {
      resolved.right_Lower_Wheel = 0
    }

    return resolved;
    }
};

module.exports = motor_msg;
