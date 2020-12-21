# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pmt: 2 messages, 1 services")

set(MSG_I_FLAGS "-Ipmt:/home/edi/ros_revision/catkin_ws/src/pmt/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pmt_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg" NAME_WE)
add_custom_target(_pmt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pmt" "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg" ""
)

get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg" NAME_WE)
add_custom_target(_pmt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pmt" "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg" ""
)

get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv" NAME_WE)
add_custom_target(_pmt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pmt" "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pmt
)
_generate_msg_cpp(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pmt
)

### Generating Services
_generate_srv_cpp(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pmt
)

### Generating Module File
_generate_module_cpp(pmt
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pmt
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pmt_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pmt_generate_messages pmt_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg" NAME_WE)
add_dependencies(pmt_generate_messages_cpp _pmt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg" NAME_WE)
add_dependencies(pmt_generate_messages_cpp _pmt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv" NAME_WE)
add_dependencies(pmt_generate_messages_cpp _pmt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pmt_gencpp)
add_dependencies(pmt_gencpp pmt_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pmt_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pmt
)
_generate_msg_eus(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pmt
)

### Generating Services
_generate_srv_eus(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pmt
)

### Generating Module File
_generate_module_eus(pmt
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pmt
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pmt_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pmt_generate_messages pmt_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg" NAME_WE)
add_dependencies(pmt_generate_messages_eus _pmt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg" NAME_WE)
add_dependencies(pmt_generate_messages_eus _pmt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv" NAME_WE)
add_dependencies(pmt_generate_messages_eus _pmt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pmt_geneus)
add_dependencies(pmt_geneus pmt_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pmt_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pmt
)
_generate_msg_lisp(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pmt
)

### Generating Services
_generate_srv_lisp(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pmt
)

### Generating Module File
_generate_module_lisp(pmt
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pmt
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pmt_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pmt_generate_messages pmt_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg" NAME_WE)
add_dependencies(pmt_generate_messages_lisp _pmt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg" NAME_WE)
add_dependencies(pmt_generate_messages_lisp _pmt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv" NAME_WE)
add_dependencies(pmt_generate_messages_lisp _pmt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pmt_genlisp)
add_dependencies(pmt_genlisp pmt_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pmt_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pmt
)
_generate_msg_nodejs(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pmt
)

### Generating Services
_generate_srv_nodejs(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pmt
)

### Generating Module File
_generate_module_nodejs(pmt
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pmt
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pmt_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pmt_generate_messages pmt_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg" NAME_WE)
add_dependencies(pmt_generate_messages_nodejs _pmt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg" NAME_WE)
add_dependencies(pmt_generate_messages_nodejs _pmt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv" NAME_WE)
add_dependencies(pmt_generate_messages_nodejs _pmt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pmt_gennodejs)
add_dependencies(pmt_gennodejs pmt_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pmt_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pmt
)
_generate_msg_py(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pmt
)

### Generating Services
_generate_srv_py(pmt
  "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pmt
)

### Generating Module File
_generate_module_py(pmt
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pmt
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pmt_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pmt_generate_messages pmt_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/pmt.msg" NAME_WE)
add_dependencies(pmt_generate_messages_py _pmt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/msg/vec.msg" NAME_WE)
add_dependencies(pmt_generate_messages_py _pmt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edi/ros_revision/catkin_ws/src/pmt/srv/pmtsrv.srv" NAME_WE)
add_dependencies(pmt_generate_messages_py _pmt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pmt_genpy)
add_dependencies(pmt_genpy pmt_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pmt_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pmt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pmt
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pmt_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pmt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pmt
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pmt_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pmt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pmt
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pmt_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pmt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pmt
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pmt_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pmt)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pmt\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pmt
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pmt_generate_messages_py std_msgs_generate_messages_py)
endif()
