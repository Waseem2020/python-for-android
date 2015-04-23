LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := _crypt
LOCAL_MODULE_FILENAME := libcrypt
LOCAL_SRC_FILES := crypt.c \
	des.c \
	md5.c
LOCAL_CFLAGS := -D__USE_GNU -D_LIBC  -DHAVE_LIMITS_H -D__GNU_LIBRARY__ \
                -D__THROW= -Dattribute_hidden= -D"__nonnull(a...)= "
LOCAL_C_EXPORTS := $(LOCAL_PATH)

include $(BUILD_SHARED_LIBRARY)