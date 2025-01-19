TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = radamsa

submodule_DIR = submodule

radamsa_FILES = $(submodule_DIR)/radamsa.c
radamsa_CFLAGS = -Wall -O3

before-all::
	$(MAKE) -C $(submodule_DIR) bin/ol
	$(MAKE) -C $(submodule_DIR) radamsa.c

after-clean::
	$(MAKE) -C $(submodule_DIR) clean

include $(THEOS_MAKE_PATH)/tool.mk