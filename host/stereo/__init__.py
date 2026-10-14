"""Stereo processing, developed in Python first and written so that every
step can later be moved into the FPGA (integer arithmetic, line buffers)."""
import cv2

# The OpenCL path only adds start-up noise and cache files for images this small.
cv2.ocl.setUseOpenCL(False)
