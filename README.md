# Halide_ISP_Pipeline
Image Signal Processor Pipeline using Halide

# Requirements
1.Halide 12.0.0 or above: https://github.com/halide/Halide

# Methods
1.Resize input image to get low resolution image for deep learning.

2.Apply laplacian pyramid and deep learning model to correct exposure of image.

3.Apply Bilateral Guided Upsampling to get high resolution exposure corrected image. 

4.Fuse input image and exposure corrected image to get better performance of exposure correction.

# Input
Raw Image

# Image Signal Processor Pipeline Video
https://user-images.githubusercontent.com/58883801/141731689-90c418ff-5390-40ab-a20e-e1c0f536a34b.mp4

# Usage
1. Change HALIDE_DISTRIB_PATH to yours in Makefile.inc
```
HALIDE_DISTRIB_PATH ?= /mnt/d/Software/Halide-12/distrib 
```
2. Run Makefile 
```
make test
```

# Reference

