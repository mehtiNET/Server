##
# This file is part of the enhanceMT Project.
##

# Include global settings
include("${CMAKE_SOURCE_DIR}/cmake/platform/settings.cmake")

# Include platform settings
include("${CMAKE_SOURCE_DIR}/cmake/platform/win/settings.cmake")
set(CMAKE_CXX_FLAGS_RELEASE "/MT")
