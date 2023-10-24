# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "traj_gennav: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(traj_gennav_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv" NAME_WE)
add_custom_target(_traj_gennav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "traj_gennav" "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv" NAME_WE)
add_custom_target(_traj_gennav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "traj_gennav" "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv" "std_msgs/String"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(traj_gennav
  "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traj_gennav
)
_generate_srv_cpp(traj_gennav
  "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traj_gennav
)

### Generating Module File
_generate_module_cpp(traj_gennav
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traj_gennav
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(traj_gennav_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(traj_gennav_generate_messages traj_gennav_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv" NAME_WE)
add_dependencies(traj_gennav_generate_messages_cpp _traj_gennav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv" NAME_WE)
add_dependencies(traj_gennav_generate_messages_cpp _traj_gennav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traj_gennav_gencpp)
add_dependencies(traj_gennav_gencpp traj_gennav_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traj_gennav_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(traj_gennav
  "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traj_gennav
)
_generate_srv_eus(traj_gennav
  "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traj_gennav
)

### Generating Module File
_generate_module_eus(traj_gennav
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traj_gennav
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(traj_gennav_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(traj_gennav_generate_messages traj_gennav_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv" NAME_WE)
add_dependencies(traj_gennav_generate_messages_eus _traj_gennav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv" NAME_WE)
add_dependencies(traj_gennav_generate_messages_eus _traj_gennav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traj_gennav_geneus)
add_dependencies(traj_gennav_geneus traj_gennav_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traj_gennav_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(traj_gennav
  "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traj_gennav
)
_generate_srv_lisp(traj_gennav
  "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traj_gennav
)

### Generating Module File
_generate_module_lisp(traj_gennav
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traj_gennav
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(traj_gennav_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(traj_gennav_generate_messages traj_gennav_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv" NAME_WE)
add_dependencies(traj_gennav_generate_messages_lisp _traj_gennav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv" NAME_WE)
add_dependencies(traj_gennav_generate_messages_lisp _traj_gennav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traj_gennav_genlisp)
add_dependencies(traj_gennav_genlisp traj_gennav_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traj_gennav_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(traj_gennav
  "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traj_gennav
)
_generate_srv_nodejs(traj_gennav
  "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traj_gennav
)

### Generating Module File
_generate_module_nodejs(traj_gennav
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traj_gennav
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(traj_gennav_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(traj_gennav_generate_messages traj_gennav_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv" NAME_WE)
add_dependencies(traj_gennav_generate_messages_nodejs _traj_gennav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv" NAME_WE)
add_dependencies(traj_gennav_generate_messages_nodejs _traj_gennav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traj_gennav_gennodejs)
add_dependencies(traj_gennav_gennodejs traj_gennav_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traj_gennav_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(traj_gennav
  "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_gennav
)
_generate_srv_py(traj_gennav
  "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_gennav
)

### Generating Module File
_generate_module_py(traj_gennav
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_gennav
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(traj_gennav_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(traj_gennav_generate_messages traj_gennav_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ExecutePath.srv" NAME_WE)
add_dependencies(traj_gennav_generate_messages_py _traj_gennav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronesteam/ws_droneSchool/src/traj_gennav/srv/ReadPathFromFile.srv" NAME_WE)
add_dependencies(traj_gennav_generate_messages_py _traj_gennav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traj_gennav_genpy)
add_dependencies(traj_gennav_genpy traj_gennav_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traj_gennav_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traj_gennav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traj_gennav
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(traj_gennav_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traj_gennav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traj_gennav
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(traj_gennav_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traj_gennav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traj_gennav
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(traj_gennav_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traj_gennav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traj_gennav
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(traj_gennav_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_gennav)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_gennav\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_gennav
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(traj_gennav_generate_messages_py std_msgs_generate_messages_py)
endif()
