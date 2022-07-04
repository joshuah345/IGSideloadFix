export ARCHS = arm64 arm64e
export TARGET = iphone:clang:14.4:14.0

include $(THEOS)/makefiles/common.mk
FINALPACKAGE = 1

TWEAK_NAME = Hackogram
INSTALL_TARGET_PROCESSES = Instagram
Hackogram_FILES = Init.x SideloadedFixes.x

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
