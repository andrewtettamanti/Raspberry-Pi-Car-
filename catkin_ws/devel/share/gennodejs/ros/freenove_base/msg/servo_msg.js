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

class servo_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.horizontal = null;
      this.vertical = null;
    }
    else {
      if (initObj.hasOwnProperty('horizontal')) {
        this.horizontal = initObj.horizontal
      }
      else {
        this.horizontal = 0;
      }
      if (initObj.hasOwnProperty('vertical')) {
        this.vertical = initObj.vertical
      }
      else {
        this.vertical = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type servo_msg
    // Serialize message field [horizontal]
    bufferOffset = _serializer.int32(obj.horizontal, buffer, bufferOffset);
    // Serialize message field [vertical]
    bufferOffset = _serializer.int32(obj.vertical, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type servo_msg
    let len;
    let data = new servo_msg(null);
    // Deserialize message field [horizontal]
    data.horizontal = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vertical]
    data.vertical = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'freenove_base/servo_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '811a705e34a03723eca077ed4732bcd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 horizontal
    int32 vertical
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new servo_msg(null);
    if (msg.horizontal !== undefined) {
      resolved.horizontal = msg.horizontal;
    }
    else {
      resolved.horizontal = 0
    }

    if (msg.vertical !== undefined) {
      resolved.vertical = msg.vertical;
    }
    else {
      resolved.vertical = 0
    }

    return resolved;
    }
};

module.exports = servo_msg;
