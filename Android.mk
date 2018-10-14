LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CLANG := true
LOCAL_SRC_FILES := \
     libkmod/libkmod.c \
     libkmod/libkmod-file.c \
     libkmod/libkmod-module.c \
     libkmod/libkmod-config.c \
     libkmod/libkmod-index.c \
     libkmod/libkmod-elf.c \
     libkmod/libkmod-list.c \
     libkmod/libkmod-signature.c \
     shared/array.c \
     shared/scratchbuf.c \
     shared/util.c \
     shared/hash.c \
     shared/strbuf.c \
     tools/port.c \
     tools/depmod.c \
     tools/kmod.c \
     tools/modinfo.c \
     tools/rmmod.c \
     tools/insert.c \
     tools/log.c \
     tools/modprobe.c \
     tools/static-nodes.c \
     tools/insmod.c \
     tools/lsmod.c \
     tools/remove.c

LOCAL_MODULE := depmod
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/port-gnu
LOCAL_CFLAGS := \
     -include config.h \
     -ffunction-sections \
     -fdata-sections \
     -Wall \
     -Wno-unused-parameter \
     -Wno-unused-variable \
     -Dsecure_getenv=getenv \
     -DHAVE_CONFIG_H \
     -DANOTHER_BRICK_IN_THE \
     -DSYSCONFDIR=\"/tmp\"
include $(BUILD_HOST_EXECUTABLE)
