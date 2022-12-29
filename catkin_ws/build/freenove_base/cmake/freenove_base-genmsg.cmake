# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "freenove_base: 7 messages, 1 services")

set(MSG_I_FLAGS "-Ifreenove_base:/home/pi/catkin_ws/src/freenove_base/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(freenove_base_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg" NAME_WE)
add_custom_target(_freenove_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "freenove_base" "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg" NAME_WE)
add_custom_target(_freenove_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "freenove_base" "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg" NAME_WE)
add_custom_target(_freenove_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "freenove_base" "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg" NAME_WE)
add_custom_target(_freenove_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "freenove_base" "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg" NAME_WE)
add_custom_target(_freenove_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "freenove_base" "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg" NAME_WE)
add_custom_target(_freenove_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "freenove_base" "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg" NAME_WE)
add_custom_target(_freenove_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "freenove_base" "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv" NAME_WE)
add_custom_target(_freenove_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "freenove_base" "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freenove_base
)
_generate_msg_cpp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freenove_base
)
_generate_msg_cpp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freenove_base
)
_generate_msg_cpp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freenove_base
)
_generate_msg_cpp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freenove_base
)
_generate_msg_cpp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freenove_base
)
_generate_msg_cpp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freenove_base
)

### Generating Services
_generate_srv_cpp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freenove_base
)

### Generating Module File
_generate_module_cpp(freenove_base
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freenove_base
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(freenove_base_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(freenove_base_generate_messages freenove_base_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_cpp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_cpp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_cpp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_cpp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_cpp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_cpp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_cpp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv" NAME_WE)
add_dependencies(freenove_base_generate_messages_cpp _freenove_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(freenove_base_gencpp)
add_dependencies(freenove_base_gencpp freenove_base_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS freenove_base_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freenove_base
)
_generate_msg_eus(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freenove_base
)
_generate_msg_eus(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freenove_base
)
_generate_msg_eus(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freenove_base
)
_generate_msg_eus(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freenove_base
)
_generate_msg_eus(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freenove_base
)
_generate_msg_eus(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freenove_base
)

### Generating Services
_generate_srv_eus(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freenove_base
)

### Generating Module File
_generate_module_eus(freenove_base
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freenove_base
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(freenove_base_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(freenove_base_generate_messages freenove_base_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_eus _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_eus _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_eus _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_eus _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_eus _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_eus _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_eus _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv" NAME_WE)
add_dependencies(freenove_base_generate_messages_eus _freenove_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(freenove_base_geneus)
add_dependencies(freenove_base_geneus freenove_base_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS freenove_base_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freenove_base
)
_generate_msg_lisp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freenove_base
)
_generate_msg_lisp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freenove_base
)
_generate_msg_lisp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freenove_base
)
_generate_msg_lisp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freenove_base
)
_generate_msg_lisp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freenove_base
)
_generate_msg_lisp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freenove_base
)

### Generating Services
_generate_srv_lisp(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freenove_base
)

### Generating Module File
_generate_module_lisp(freenove_base
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freenove_base
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(freenove_base_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(freenove_base_generate_messages freenove_base_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_lisp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_lisp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_lisp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_lisp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_lisp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_lisp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_lisp _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv" NAME_WE)
add_dependencies(freenove_base_generate_messages_lisp _freenove_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(freenove_base_genlisp)
add_dependencies(freenove_base_genlisp freenove_base_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS freenove_base_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freenove_base
)
_generate_msg_nodejs(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freenove_base
)
_generate_msg_nodejs(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freenove_base
)
_generate_msg_nodejs(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freenove_base
)
_generate_msg_nodejs(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freenove_base
)
_generate_msg_nodejs(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freenove_base
)
_generate_msg_nodejs(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freenove_base
)

### Generating Services
_generate_srv_nodejs(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freenove_base
)

### Generating Module File
_generate_module_nodejs(freenove_base
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freenove_base
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(freenove_base_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(freenove_base_generate_messages freenove_base_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_nodejs _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_nodejs _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_nodejs _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_nodejs _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_nodejs _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_nodejs _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_nodejs _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv" NAME_WE)
add_dependencies(freenove_base_generate_messages_nodejs _freenove_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(freenove_base_gennodejs)
add_dependencies(freenove_base_gennodejs freenove_base_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS freenove_base_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base
)
_generate_msg_py(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base
)
_generate_msg_py(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base
)
_generate_msg_py(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base
)
_generate_msg_py(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base
)
_generate_msg_py(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base
)
_generate_msg_py(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base
)

### Generating Services
_generate_srv_py(freenove_base
  "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base
)

### Generating Module File
_generate_module_py(freenove_base
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(freenove_base_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(freenove_base_generate_messages freenove_base_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/motor_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_py _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/line_tracking_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_py _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/servo_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_py _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/led_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_py _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/buzzer_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_py _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/adc_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_py _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/msg/open_cv_control_msg.msg" NAME_WE)
add_dependencies(freenove_base_generate_messages_py _freenove_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/freenove_base/srv/ultrasonic_srv.srv" NAME_WE)
add_dependencies(freenove_base_generate_messages_py _freenove_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(freenove_base_genpy)
add_dependencies(freenove_base_genpy freenove_base_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS freenove_base_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freenove_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freenove_base
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(freenove_base_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freenove_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freenove_base
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(freenove_base_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freenove_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freenove_base
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(freenove_base_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freenove_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freenove_base
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(freenove_base_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freenove_base
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(freenove_base_generate_messages_py std_msgs_generate_messages_py)
endif()
