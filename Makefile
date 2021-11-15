include Makefile.inc

.PHONY: build clean test

build: $(BIN)/$(HL_TARGET)/process

TIMING_ITERATIONS ?= 5

$(GENERATOR_BIN)/camera_pipe.generator: camera_pipe_generator.cpp $(GENERATOR_DEPS)
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) $(filter-out %.h,$^) -o $@ $(LIBHALIDE_LDFLAGS) $(HALIDE_SYSTEM_LIBS)

$(BIN)/%/camera_pipe.a: $(GENERATOR_BIN)/camera_pipe.generator 
	@mkdir -p $(@D)
	$^ -g camera_pipe -e $(GENERATOR_OUTPUTS) -o $(@D) -f camera_pipe target=$*

$(BIN)/%/process: process.cpp $(BIN)/%/camera_pipe.a
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) -Wall -I$(BIN)/$* $^ -o $@ $(IMAGE_IO_FLAGS) $(LDFLAGS)

$(BIN)/%/process_viz: process.cpp  $(BIN)/%-trace_all/camera_pipe.a 
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) -Wall -I$(BIN)/$*-trace_all $^ -o $@ $(IMAGE_IO_FLAGS) $(LDFLAGS)

$(BIN)/%/out.png: $(BIN)/%/process
	@mkdir -p $(@D)
	$(BIN)/$*/process RAW_images/bayer_raw.png 3700 2.0 50 1.0 $(TIMING_ITERATIONS) output_images/output.png

$(BIN)/%/camera_pipe.mp4: $(BIN)/%/process_viz viz.sh ./HalideTraceViz 
	HL_AVCONV=$(HL_AVCONV) bash viz.sh $(@D)

clean:
	rm -rf $(BIN)

test: $(BIN)/$(HL_TARGET)/out.png

viz: $(BIN)/$(HL_TARGET)/camera_pipe.mp4
	$(HL_VIDEOPLAYER) $^
