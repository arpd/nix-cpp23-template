CMAKE_BUILD_DIR := ./build
CMAKE_SOURCE_DIR := ./
REGIME ?= Debug

$(CMAKE_BUILD_DIR)/test/template-ut: $(CMAKE_BUILD_DIR)/build.ninja
	cmake -DCMAKE_GENERATOR=Ninja -DTESTING=ON -DCMAKE_BUILD_TYPE=$(REGIME) -S $(CMAKE_BUILD_DIR)/.. -B $(CMAKE_BUILD_DIR)
	ninja -C $(CMAKE_BUILD_DIR) # $(MAKE) -C $(CMAKE_BUILD_DIR) $(@F)
.PHONY : $(CMAKE_BUILD_DIR)/bin/template  # to allow CMake's make check the build

$(CMAKE_BUILD_DIR)/bin/template: $(CMAKE_BUILD_DIR)/build.ninja
	ninja -C $(CMAKE_BUILD_DIR) # $(MAKE) -C $(CMAKE_BUILD_DIR) $(@F)
.PHONY : $(CMAKE_BUILD_DIR)/bin/template  # to allow CMake's make check the build

$(CMAKE_BUILD_DIR)/build.ninja: $(CMAKE_SOURCE_DIR)/CMakeLists.txt
	cmake -DCMAKE_GENERATOR=Ninja -DCMAKE_BUILD_TYPE=$(REGIME) -S $(<D) -B $(@D)

clean:
	rm -rf $(CMAKE_BUILD_DIR)
.PHONY : clean

all: $(CMAKE_BUILD_DIR)/bin/template $(CMAKE_BUILD_DIR)/test/template-ut
.PHONY : all

run: $(CMAKE_BUILD_DIR)/bin/template
	$(CMAKE_BUILD_DIR)/bin/template
.PHONY : run

test: $(CMAKE_BUILD_DIR)/test/template-ut
	$(CMAKE_BUILD_DIR)/test/template-ut
.PHONY : run
