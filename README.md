# Halide_ISP_Pipeline
Image Signal Processor Pipeline using Halide

# Requirements
1.Halide 12.0.0 or above: https://github.com/halide/Halide

2.

# Methods
1.Input Raw image(GRBG)

2.Denoise image

3.Demosaic image

4.Color correct with 

5.Gamma correct

6.Sharpen

# Input
Raw Image

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

# Reference

