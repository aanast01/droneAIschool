// Auto-generated. Do not edit!

// (in-package drone_school.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CreatePPComTopicRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source = null;
      this.targets = null;
      this.topic_name = null;
      this.package_name = null;
      this.message_type = null;
    }
    else {
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = '';
      }
      if (initObj.hasOwnProperty('targets')) {
        this.targets = initObj.targets
      }
      else {
        this.targets = [];
      }
      if (initObj.hasOwnProperty('topic_name')) {
        this.topic_name = initObj.topic_name
      }
      else {
        this.topic_name = '';
      }
      if (initObj.hasOwnProperty('package_name')) {
        this.package_name = initObj.package_name
      }
      else {
        this.package_name = '';
      }
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CreatePPComTopicRequest
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    // Serialize message field [targets]
    bufferOffset = _arraySerializer.string(obj.targets, buffer, bufferOffset, null);
    // Serialize message field [topic_name]
    bufferOffset = _serializer.string(obj.topic_name, buffer, bufferOffset);
    // Serialize message field [package_name]
    bufferOffset = _serializer.string(obj.package_name, buffer, bufferOffset);
    // Serialize message field [message_type]
    bufferOffset = _serializer.string(obj.message_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CreatePPComTopicRequest
    let len;
    let data = new CreatePPComTopicRequest(null);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [targets]
    data.targets = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [topic_name]
    data.topic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [package_name]
    data.package_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source);
    object.targets.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.topic_name);
    length += _getByteLength(object.package_name);
    length += _getByteLength(object.message_type);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'drone_school/CreatePPComTopicRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5039a038352a619c947e87a4f84f27a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string source            # Source of the topic
    string[] targets         # Names of nodes that can receive this message,
                             # set to 'all' if all nodes can receive the message
    string topic_name
    string package_name
    string message_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CreatePPComTopicRequest(null);
    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = ''
    }

    if (msg.targets !== undefined) {
      resolved.targets = msg.targets;
    }
    else {
      resolved.targets = []
    }

    if (msg.topic_name !== undefined) {
      resolved.topic_name = msg.topic_name;
    }
    else {
      resolved.topic_name = ''
    }

    if (msg.package_name !== undefined) {
      resolved.package_name = msg.package_name;
    }
    else {
      resolved.package_name = ''
    }

    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = ''
    }

    return resolved;
    }
};

class CreatePPComTopicResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CreatePPComTopicResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CreatePPComTopicResponse
    let len;
    let data = new CreatePPComTopicResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.result);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'drone_school/CreatePPComTopicResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22f2a1ed8654a0b365f1bb3f7ff2c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result            # Return 'succeeded' for 'failed'
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CreatePPComTopicResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: CreatePPComTopicRequest,
  Response: CreatePPComTopicResponse,
  md5sum() { return '04b00a4c4e03cffa324c24830dde7e4a'; },
  datatype() { return 'drone_school/CreatePPComTopic'; }
};
