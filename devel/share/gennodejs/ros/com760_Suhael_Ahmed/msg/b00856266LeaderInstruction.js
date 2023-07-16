// Auto-generated. Do not edit!

// (in-package com760_Suhael_Ahmed.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class b00856266LeaderInstruction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.instructionID = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('instructionID')) {
        this.instructionID = initObj.instructionID
      }
      else {
        this.instructionID = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type b00856266LeaderInstruction
    // Serialize message field [instructionID]
    bufferOffset = _serializer.int64(obj.instructionID, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type b00856266LeaderInstruction
    let len;
    let data = new b00856266LeaderInstruction(null);
    // Deserialize message field [instructionID]
    data.instructionID = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'com760_Suhael_Ahmed/b00856266LeaderInstruction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0322711d40d955a41c13dde39236d522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 instructionID
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new b00856266LeaderInstruction(null);
    if (msg.instructionID !== undefined) {
      resolved.instructionID = msg.instructionID;
    }
    else {
      resolved.instructionID = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = b00856266LeaderInstruction;
