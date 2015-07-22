#
# Makefile for Forlinx  OK6410
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
TS_PATH := $(LOCAL_PATH)


LOCAL_SRC_FILES:= input-raw.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := libts
LOCAL_MODULE := tsinput
LOCAL_PRELINK_MODULE := false
#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TAGS := eng
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES:= pthres.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := libts
LOCAL_MODULE := pthres
LOCAL_PRELINK_MODULE := false
#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TAGS := eng
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES:= variance.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := libts
LOCAL_MODULE := variance
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := eng
#LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES:= dejitter.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := libts
LOCAL_MODULE := dejitter
LOCAL_PRELINK_MODULE := false
#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TAGS := eng
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= linear.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := libts
LOCAL_MODULE := linear

#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TAGS := eng
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)


 


