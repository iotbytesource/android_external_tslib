#
# Makefile for Forlinx  OK6410
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
TS_PATH := $(LOCAL_PATH)

LOCAL_SRC_FILES:= ts_calibrate.c fbutils.c testutils.c font_8x8.c font_8x16.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := libts

LOCAL_SHARED_LIBRARIES += libutils libcutils

LOCAL_MODULE := ts_calibrate
#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TAGS := eng


include $(BUILD_EXECUTABLE)
 


include $(CLEAR_VARS)
TS_PATH := $(LOCAL_PATH)

LOCAL_SRC_FILES:= ts_test.c  fbutils.c testutils.c font_8x8.c font_8x16.c 

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := libts

LOCAL_SHARED_LIBRARIES += libutils libcutils

LOCAL_MODULE := ts_test
#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)
 


include $(CLEAR_VARS)
TS_PATH := $(LOCAL_PATH)

LOCAL_SRC_FILES:= ts_print_raw.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := libts

LOCAL_SHARED_LIBRARIES += libutils libcutils

LOCAL_MODULE := ts_print_raw
#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)
 


include $(CLEAR_VARS)
TS_PATH := $(LOCAL_PATH)

LOCAL_SRC_FILES:= ts_print.c  

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := libts

LOCAL_SHARED_LIBRARIES += libutils libcutils

LOCAL_MODULE := ts_print
#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
TS_PATH := $(LOCAL_PATH)

LOCAL_SRC_FILES:= ts_harvest.c  fbutils.c testutils.c font_8x8.c font_8x16.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := libts
LOCAL_SHARED_LIBRARIES += libutils libcutils
LOCAL_MODULE := ts_harvest
#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)





