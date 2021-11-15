# Halide_ISP_Pipeline
Image Signal Processor Pipeline using Halide

# Requirements
1.Halide 12.0.0 or above: https://github.com/halide/Halide

2.If you want to output pipeline video, ffmpeg 4.2.4 or above is required: https://ubuntu.pkgs.org/20.04/ubuntu-updates-universe-amd64/ffmpeg_4.2.4-1ubuntu0.1_amd64.deb.html

# Methods
1.Input Raw image(Bayer pattern: GRBG)

2.Denoise image

3.Demosaic image

4.Color correct

5.Gamma correct

6.Sharp

# Image Signal Processor Pipeline Video
https://user-images.githubusercontent.com/58883801/141746628-aa8d2ac3-017f-4d34-8767-c854abfec547.mp4

# Usage
1. Change HALIDE_DISTRIB_PATH to yours in Makefile.inc
```
HALIDE_DISTRIB_PATH ?= /mnt/d/Software/Halide-12/distrib 
```
2. Run Makefile 
```
make test
```
3. Output ISP pipeline video
```
make viz
```

# Reference
ISP method is reference to https://github.com/halide/Halide/tree/master/apps/camera_pipe
