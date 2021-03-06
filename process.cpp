#include "halide_benchmark.h"
#include "camera_pipe.h"

#include "HalideBuffer.h"
#include "halide_image_io.h"
#include "halide_malloc_trace.h"

#include <cassert>
#include <cstdint>
#include <cstdio>
#include <cstdlib>

using namespace Halide::Runtime;
using namespace Halide::Tools;

int main(int argc, char **argv) {
    if (argc < 8) {
        printf("Usage: ./process raw.png color_temp gamma constrast shaprpen"
                "timing_iterations output.png\n"
                "e.g. ./process raw.png 3700 2.0 50 1.0 5 output.png\n");
        return 0;
    }

    fprintf(stderr, "input: %s\n", argv[1]);
    Buffer<uint16_t> input = load_and_convert_image(argv[1]);
    fprintf(stderr, "       width = %d, height = %d\n", input.width(), input.height());
    Buffer<uint8_t> output(((input.width() - 32) / 32) * 32,
                           ((input.height() - 24) / 32) * 32, 3);

    // These color matrices are for the sensor in the Nokia N900 and are
    // taken from the FCam source.
    float _matrix_3200[][4] = {{1.6697f, -0.2693f, -0.4004f, -42.4346f},
                               {-0.3576f, 1.0615f, 1.5949f, -37.1158f},
                               {-0.2175f, -1.8751f, 6.9640f, -26.6970f}};
    
    float _matrix_7000[][4] = {{2.2997f, -0.4478f, 0.1706f, -39.0923f},
                               {-0.3826f, 1.5906f, -0.2080f, -25.4311f},
                               {-0.0888f, -0.7344f, 2.2832f, -20.0826f}};
    Buffer<float> matrix_3200(4, 3), matrix_7000(4, 3);
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 4; j++) {
            matrix_3200(j, i) = _matrix_3200[i][j];
            matrix_7000(j, i) = _matrix_7000[i][j]; 
        }
    }

    float color_temp = (float)atof(argv[2]);
    float gamma = (float)atof(argv[3]);
    float contrast = (float)atof(argv[4]);
    float sharpen = (float)atof(argv[5]);
    float timing_iterations = atoi(argv[6]);
    int blackLevel = 25;
    int whiteLevel = 1023;

    double best;

    best = benchmark(timing_iterations, 1, [&]() {
        camera_pipe(input, matrix_3200, matrix_7000, color_temp,
                         gamma, contrast, sharpen, blackLevel, 
                         whiteLevel, output);
        output.device_sync();
    });
    fprintf(stderr, "Halide_processing time:\t%gus\n", best * 1e6);

    fprintf(stderr, "output: %s\n", argv[7]);
    convert_and_save_image(output, argv[7]);
    fprintf(stderr, "        width = %d, height = %d\n", output.width(), output.height());

    printf("Success!\n");
    return 0;
}
