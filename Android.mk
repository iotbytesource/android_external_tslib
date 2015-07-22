

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles)

#LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

#file := $(TARGET_OUT_ETC)/ts.conf
$(file): $(LOCAL_PATH)/etc/ts.conf | $(ACP)
 $(transform-prebuilt-to-target)

ALL_PREBUILT +=  $(file)



 
