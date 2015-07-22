#
# Makefile for Forlinx  OK6410
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
TS_PATH := $(LOCAL_PATH)



LOCAL_SRC_FILES:= ts_attach.c ts_close.c ts_config.c \
    ts_error.c ts_fd.c ts_load_module.c ts_open.c ts_parse_vars.c \
    ts_read.c ts_read_raw.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../

LOCAL_SHARED_LIBRARIES += libutils libcutils
LOCAL_SHARED_LIBRARIES += libdl
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libts
#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TAGS := eng

include $(BUILD_SHARED_LIBRARY)



 


