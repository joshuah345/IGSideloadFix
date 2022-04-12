Hackogram_INJECT_DYLIBS = Tweaks/Rocket.dylib

MODULES = jailed
include $(THEOS)/makefiles/common.mk
ARCHS = arm64
CODESIGN_IPA = 0
FINALPACKAGE = 1

TWEAK_NAME = Hackogram
DISPLAY_NAME = Instagram
BUNDLE_ID = com.burbn.instagram

Hackogram_FILES = Init.x SideloadedFixes.x
Hackogram_IPA = /path//to/Instagram.ipa

include $(THEOS_MAKE_PATH)/tweak.mk

after-package::
	@rm -rf .theos/_/Payload