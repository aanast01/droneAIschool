# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "drone_school: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(drone_school_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv" NAME_WE)
add_custom_target(_drone_school_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "drone_school" "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(drone_school
  "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drone_school
)

### Generating Module File
_generate_module_cpp(drone_school
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drone_school
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(drone_school_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(drone_school_generate_messages drone_school_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv" NAME_WE)
add_dependencies(drone_school_generate_messages_cpp _drone_school_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drone_school_gencpp)
add_dependencies(drone_school_gencpp drone_school_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drone_school_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(drone_school
  "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drone_school
)

### Generating Module File
_generate_module_eus(drone_school
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drone_school
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(drone_school_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(drone_school_generate_messages drone_school_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv" NAME_WE)
add_dependencies(drone_school_generate_messages_eus _drone_school_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drone_school_geneus)
add_dependencies(drone_school_geneus drone_school_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drone_school_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(drone_school
  "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drone_school
)

### Generating Module File
_generate_module_lisp(drone_school
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drone_school
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(drone_school_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(drone_school_generate_messages drone_school_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv" NAME_WE)
add_dependencies(drone_school_generate_messages_lisp _drone_school_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drone_school_genlisp)
add_dependencies(drone_school_genlisp drone_school_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drone_school_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(drone_school
  "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drone_school
)

### Generating Module File
_generate_module_nodejs(drone_school
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drone_school
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(drone_school_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(drone_school_generate_messages drone_school_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv" NAME_WE)
add_dependencies(drone_school_generate_messages_nodejs _drone_school_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drone_school_gennodejs)
add_dependencies(drone_school_gennodejs drone_school_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drone_school_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(drone_school
  "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drone_school
)

### Generating Module File
_generate_module_py(drone_school
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drone_school
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(drone_school_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(drone_school_generate_messages drone_school_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/drone_school/srv/CreatePPComTopic.srv" NAME_WE)
add_dependencies(drone_school_generate_messages_py _drone_school_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drone_school_genpy)
add_dependencies(drone_school_genpy drone_school_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drone_school_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drone_school)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drone_school
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(drone_school_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drone_school)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drone_school
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(drone_school_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drone_school)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drone_school
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(drone_school_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drone_school)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drone_school
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(drone_school_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drone_school)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drone_school\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drone_school
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(drone_school_generate_messages_py std_msgs_generate_messages_py)
endif()
