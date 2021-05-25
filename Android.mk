LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	src/modbus.c \
	src/modbus-data.c \
	src/modbus-tcp.c
	#src/modbus-rtu.c \


LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/android \
	$(LOCAL_PATH)/android/uapi \
	$(LOCAL_PATH)/src

LOCAL_CFLAGS += -D HAVE_STDLIB_H \
				-D HAVE_STDIO_H \
				-D HAVE_MATH_H \
				-D HAVE_STRING_H \
				-D HAVE_ERRNO_H \
				-D HAVE_LIMITS_H \
				-D HAVE_UNISTD_H \
				-D HAVE_WAVREAD \
				-D HAVE_STDARG_H

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE := libmodbus

include $(BUILD_SHARED_LIBRARY)
