SHELL=/bin/bash
ROOT_DIR=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
BUILD_DIR=$(ROOT_DIR)/build
ARDUINO_CLI=$(ROOT_DIR)/bin/arduino-cli
SKETCH=Marlin_I3

# You can optionally set a path to the avr-gcc tools. (ex: /usr/local/avr-gcc/bin)
#AVR_TOOLS_PATH?=
AVR_TOOLS_PATH=~/Applications/arduino-1.8.13/hardware/tools/avr/bin

AVR_OBJCOPY = $(AVR_TOOLS_PATH)/avr-objcopy
AVR_OBJDUMP = $(AVR_TOOLS_PATH)/avr-objdump

.PHONY: error
error:
	@echo "No make target selected!"
	@exit 2


# Installs 'arduino-cli' in ./bin
.PHONY: setup-arduino-cli
setup-arduino-cli:
	curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=$(ROOT_DIR)/bin sh
	$(ARDUINO_CLI) config init
	$(ARDUINO_CLI) core update-index
	#$(ARDUINO_CLI) core install arduino:avr@1.6.11
	$(ARDUINO_CLI) core install arduino:avr@1.8.3


.PHONY: clean
clean:
	rm -rfv $(ROOT_DIR)/build/*

.PHONY: compile
compile:
	$(ARDUINO_CLI) compile -v --build-path $(BUILD_DIR) --fqbn arduino:avr:mega $(SKETCH)


.PHONY: extract
extract:
	$(AVR_OBJCOPY) -I ihex $(BUILD_DIR)/$(SKETCH).ino.hex -O binary $(BUILD_DIR)/$(SKETCH).ino.bin
	$(AVR_OBJCOPY) -I ihex $(BUILD_DIR)/$(SKETCH).ino.with_bootloader.hex -O binary $(BUILD_DIR)/$(SKETCH).ino.with_bootloader.bin


.PHONY: disassemble
disassemble:
	$(AVR_OBJDUMP) -D $(BUILD_DIR)/$(SKETCH).ino.elf > $(BUILD_DIR)/$(SKETCH).ino.elf.asm
	$(AVR_OBJDUMP) -D -m avr6 $(BUILD_DIR)/$(SKETCH).ino.hex > $(BUILD_DIR)/$(SKETCH).ino.hex.asm
	$(AVR_OBJDUMP) -D -m avr6 $(BUILD_DIR)/$(SKETCH).ino.with_bootloader.hex > $(BUILD_DIR)/$(SKETCH).ino.with_bootloader.hex.asm
