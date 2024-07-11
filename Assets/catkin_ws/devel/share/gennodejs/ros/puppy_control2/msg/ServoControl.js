// Auto-generated. Do not edit!

// (in-package puppy_control2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ServoControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frontleftx = null;
      this.frontleftz = null;
      this.frontrightx = null;
      this.frontrightz = null;
      this.backleftx = null;
      this.backleftz = null;
      this.backrightx = null;
      this.backrightz = null;
    }
    else {
      if (initObj.hasOwnProperty('frontleftx')) {
        this.frontleftx = initObj.frontleftx
      }
      else {
        this.frontleftx = 0.0;
      }
      if (initObj.hasOwnProperty('frontleftz')) {
        this.frontleftz = initObj.frontleftz
      }
      else {
        this.frontleftz = 0.0;
      }
      if (initObj.hasOwnProperty('frontrightx')) {
        this.frontrightx = initObj.frontrightx
      }
      else {
        this.frontrightx = 0.0;
      }
      if (initObj.hasOwnProperty('frontrightz')) {
        this.frontrightz = initObj.frontrightz
      }
      else {
        this.frontrightz = 0.0;
      }
      if (initObj.hasOwnProperty('backleftx')) {
        this.backleftx = initObj.backleftx
      }
      else {
        this.backleftx = 0.0;
      }
      if (initObj.hasOwnProperty('backleftz')) {
        this.backleftz = initObj.backleftz
      }
      else {
        this.backleftz = 0.0;
      }
      if (initObj.hasOwnProperty('backrightx')) {
        this.backrightx = initObj.backrightx
      }
      else {
        this.backrightx = 0.0;
      }
      if (initObj.hasOwnProperty('backrightz')) {
        this.backrightz = initObj.backrightz
      }
      else {
        this.backrightz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoControl
    // Serialize message field [frontleftx]
    bufferOffset = _serializer.float32(obj.frontleftx, buffer, bufferOffset);
    // Serialize message field [frontleftz]
    bufferOffset = _serializer.float32(obj.frontleftz, buffer, bufferOffset);
    // Serialize message field [frontrightx]
    bufferOffset = _serializer.float32(obj.frontrightx, buffer, bufferOffset);
    // Serialize message field [frontrightz]
    bufferOffset = _serializer.float32(obj.frontrightz, buffer, bufferOffset);
    // Serialize message field [backleftx]
    bufferOffset = _serializer.float32(obj.backleftx, buffer, bufferOffset);
    // Serialize message field [backleftz]
    bufferOffset = _serializer.float32(obj.backleftz, buffer, bufferOffset);
    // Serialize message field [backrightx]
    bufferOffset = _serializer.float32(obj.backrightx, buffer, bufferOffset);
    // Serialize message field [backrightz]
    bufferOffset = _serializer.float32(obj.backrightz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoControl
    let len;
    let data = new ServoControl(null);
    // Deserialize message field [frontleftx]
    data.frontleftx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frontleftz]
    data.frontleftz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frontrightx]
    data.frontrightx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frontrightz]
    data.frontrightz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [backleftx]
    data.backleftx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [backleftz]
    data.backleftz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [backrightx]
    data.backrightx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [backrightz]
    data.backrightz = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'puppy_control2/ServoControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '326b3455b95de3ececfaa8d7b1eb8c40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 frontleftx
    float32 frontleftz
    
    float32 frontrightx
    float32 frontrightz
    
    float32 backleftx
    float32 backleftz
    
    float32 backrightx
    float32 backrightz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoControl(null);
    if (msg.frontleftx !== undefined) {
      resolved.frontleftx = msg.frontleftx;
    }
    else {
      resolved.frontleftx = 0.0
    }

    if (msg.frontleftz !== undefined) {
      resolved.frontleftz = msg.frontleftz;
    }
    else {
      resolved.frontleftz = 0.0
    }

    if (msg.frontrightx !== undefined) {
      resolved.frontrightx = msg.frontrightx;
    }
    else {
      resolved.frontrightx = 0.0
    }

    if (msg.frontrightz !== undefined) {
      resolved.frontrightz = msg.frontrightz;
    }
    else {
      resolved.frontrightz = 0.0
    }

    if (msg.backleftx !== undefined) {
      resolved.backleftx = msg.backleftx;
    }
    else {
      resolved.backleftx = 0.0
    }

    if (msg.backleftz !== undefined) {
      resolved.backleftz = msg.backleftz;
    }
    else {
      resolved.backleftz = 0.0
    }

    if (msg.backrightx !== undefined) {
      resolved.backrightx = msg.backrightx;
    }
    else {
      resolved.backrightx = 0.0
    }

    if (msg.backrightz !== undefined) {
      resolved.backrightz = msg.backrightz;
    }
    else {
      resolved.backrightz = 0.0
    }

    return resolved;
    }
};

module.exports = ServoControl;
