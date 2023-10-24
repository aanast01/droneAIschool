// Auto-generated. Do not edit!

// (in-package rotors_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class PPComTopology {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.node_id = null;
      this.node_role = null;
      this.node_alive = null;
      this.node_odom = null;
      this.range = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('node_id')) {
        this.node_id = initObj.node_id
      }
      else {
        this.node_id = [];
      }
      if (initObj.hasOwnProperty('node_role')) {
        this.node_role = initObj.node_role
      }
      else {
        this.node_role = [];
      }
      if (initObj.hasOwnProperty('node_alive')) {
        this.node_alive = initObj.node_alive
      }
      else {
        this.node_alive = [];
      }
      if (initObj.hasOwnProperty('node_odom')) {
        this.node_odom = initObj.node_odom
      }
      else {
        this.node_odom = [];
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PPComTopology
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [node_id]
    bufferOffset = _arraySerializer.string(obj.node_id, buffer, bufferOffset, null);
    // Serialize message field [node_role]
    bufferOffset = _arraySerializer.string(obj.node_role, buffer, bufferOffset, null);
    // Serialize message field [node_alive]
    bufferOffset = _arraySerializer.bool(obj.node_alive, buffer, bufferOffset, null);
    // Serialize message field [node_odom]
    // Serialize the length for message field [node_odom]
    bufferOffset = _serializer.uint32(obj.node_odom.length, buffer, bufferOffset);
    obj.node_odom.forEach((val) => {
      bufferOffset = nav_msgs.msg.Odometry.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [range]
    bufferOffset = _arraySerializer.float32(obj.range, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PPComTopology
    let len;
    let data = new PPComTopology(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [node_id]
    data.node_id = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [node_role]
    data.node_role = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [node_alive]
    data.node_alive = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [node_odom]
    // Deserialize array length for message field [node_odom]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.node_odom = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.node_odom[i] = nav_msgs.msg.Odometry.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [range]
    data.range = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.node_id.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.node_role.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += object.node_alive.length;
    object.node_odom.forEach((val) => {
      length += nav_msgs.msg.Odometry.getMessageSize(val);
    });
    length += 4 * object.range.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rotors_comm/PPComTopology';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3539f38cd38808600ac8586b8226ebc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # IDs of the nodes
    string[] node_id
    
    # Role of the node
    string[] node_role
    
    # Dead of alive
    bool[] node_alive
    
    # Odometry of the node
    nav_msgs/Odometry[] node_odom
    
    # Distance measurent as 1xM array from the NxN disMatrix
    float32[] range
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
    string frame_id
    
    ================================================================================
    MSG: nav_msgs/Odometry
    # This represents an estimate of a position and velocity in free space.  
    # The pose in this message should be specified in the coordinate frame given by header.frame_id.
    # The twist in this message should be specified in the coordinate frame given by the child_frame_id
    Header header
    string child_frame_id
    geometry_msgs/PoseWithCovariance pose
    geometry_msgs/TwistWithCovariance twist
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PPComTopology(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.node_id !== undefined) {
      resolved.node_id = msg.node_id;
    }
    else {
      resolved.node_id = []
    }

    if (msg.node_role !== undefined) {
      resolved.node_role = msg.node_role;
    }
    else {
      resolved.node_role = []
    }

    if (msg.node_alive !== undefined) {
      resolved.node_alive = msg.node_alive;
    }
    else {
      resolved.node_alive = []
    }

    if (msg.node_odom !== undefined) {
      resolved.node_odom = new Array(msg.node_odom.length);
      for (let i = 0; i < resolved.node_odom.length; ++i) {
        resolved.node_odom[i] = nav_msgs.msg.Odometry.Resolve(msg.node_odom[i]);
      }
    }
    else {
      resolved.node_odom = []
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = []
    }

    return resolved;
    }
};

module.exports = PPComTopology;
