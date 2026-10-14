# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "D:\\stereo-depth-cam\\sw\\workspace_2slice\\ebaz4205_stereo\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\sleep.h"
  "D:\\stereo-depth-cam\\sw\\workspace_2slice\\ebaz4205_stereo\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xiltimer.h"
  "D:\\stereo-depth-cam\\sw\\workspace_2slice\\ebaz4205_stereo\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xtimer_config.h"
  "D:\\stereo-depth-cam\\sw\\workspace_2slice\\ebaz4205_stereo\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
