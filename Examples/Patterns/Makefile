REPO_ROOT := $(shell git rev-parse --show-toplevel)
PRODUCT := Patterns.pdx
SRC += $(REPO_ROOT)/Sources/CPlaydate/playdate.c
include $(REPO_ROOT)/Examples/swift.mk
SWIFT_FLAGS_DEVICE += -module-alias PlaydateEx=playdateex_device
SWIFT_FLAGS_SIMULATOR += -module-alias PlaydateEx=playdateex_simulator

# MARK: - Build PlaydateEx Overlay Swift Module
build/Modules/playdateex_device.o: $(REPO_ROOT)/Sources/PlaydateEx/*.swift
	$(SWIFT_EXEC) $(SWIFT_FLAGS) $(SWIFT_FLAGS_DEVICE) -c $^ -emit-module -o $@

build/Modules/playdateex_simulator.o: $(REPO_ROOT)/Sources/PlaydateEx/*.swift
	$(SWIFT_EXEC) $(SWIFT_FLAGS) $(SWIFT_FLAGS_SIMULATOR) -c $^ -emit-module -o $@


# MARK: - Build Playdate Overlay Swift Module
build/Modules/playdate_device.o: $(REPO_ROOT)/Sources/Playdate/*.swift
	$(SWIFT_EXEC) $(SWIFT_FLAGS) $(SWIFT_FLAGS_DEVICE) -c $^ -emit-module -o $@

build/Modules/playdate_simulator.o: $(REPO_ROOT)/Sources/Playdate/*.swift
	$(SWIFT_EXEC) $(SWIFT_FLAGS) $(SWIFT_FLAGS_SIMULATOR) -c $^ -emit-module -o $@

# MARK: - Build Game Swift Object
build/game_device.o: Sources/*.swift | build/Modules/playdate_device.o build/Modules/playdateex_device.o
	$(SWIFT_EXEC) $(SWIFT_FLAGS) $(SWIFT_FLAGS_DEVICE) -c $^ -o $@
$(OBJDIR)/pdex.elf: build/game_device.o
OBJS += build/game_device.o

build/game_simulator.o: Sources/*.swift | build/Modules/playdate_simulator.o build/Modules/playdateex_simulator.o
	$(SWIFT_EXEC) $(SWIFT_FLAGS) $(SWIFT_FLAGS_SIMULATOR) -c $^ -o $@
$(OBJDIR)/pdex.${DYLIB_EXT}: build/game_simulator.o
SIMCOMPILER += build/game_simulator.o
