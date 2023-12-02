FINALPACKAGE=1
THEOS_PACKAGE_SCHEME=rootless
ARCHS = arm64
TARGET := iphone:clang:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AdvancedMapEnabler

$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
