include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = LightsOut

LightsOut_FILES = $(wildcard *.m) $(wildcard SkittyPrefs/*.m) ../iokit.c ../osversion.m
LightsOut_INSTALL_PATH = /Library/PreferenceBundles
LightsOut_PRIVATE_FRAMEWORKS = Preferences
LightsOut_CFLAGS = -fobjc-arc -I../headers -include $(THEOS_PROJECT_DIR)/prefs/UIWindowSceneCompat.h
LightsOut_LDFLAGS = ../IOKit.tbd

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/$(BUNDLE_NAME).plist$(ECHO_END)
