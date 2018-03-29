LOCAL_PATH:= $(call my-dir)

ifeq ($(TARGET_USES_QSSI),true)
include $(CLEAR_VARS)

LOCAL_VENDOR_MODULE := true
LOCAL_COPY_HEADERS_TO := thermal-engine
LOCAL_COPY_HEADERS := ./thermal_client.h

include $(BUILD_COPY_HEADERS)

include $(CLEAR_VARS)
LOCAL_MODULE := libThermal_headers
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)
LOCAL_VENDOR_MODULE := true
include $(BUILD_HEADER_LIBRARY)

endif
