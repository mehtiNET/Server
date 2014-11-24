##
# This file is part of the enhanceMT Project.
# Based on TrinityCore project cmake files.
##

# Set project name
project(enhanceMT)

# CMake policies
cmake_minimum_required(VERSION 2.8)
cmake_policy(SET CMP0005 OLD)
if(POLICY CMP0043)
	cmake_policy(SET CMP0043 OLD) # Disable 'Ignore COMPILE_DEFINITIONS_<Config> properties'
endif(POLICY CMP0043)

# Set macro directory
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake/macros")

# Build in Release by default
set(CMAKE_BUILD_TYPE "Release")

# Set default build options and print them
include(cmake/options.cmake)

# Set platform and compiler options
include(CheckPlatform)

# Find CryptoPP
#find_package(CryptoPP REQUIRED)

# Find OpenSSL
#set(OPENSSL_EXPECTED_VERSION 1.0.1)
#find_package(OpenSSL REQUIRED)

set(ENV{BOOST_ROOT} C:/Boost/include/boost-1_57)
#set(Boost_INCLUDE_DIRS $ENV{BOOST_ROOT})
set(CRYPTOPP_INCLUDE_DIRS C:/cryptopp/include)
set(MYSQL_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/src/shared/libmysql/6.0.2/win32)
set(OPENSSL_INCLUDE_DIR C:/OpenSSL-Win32/include)

#include_directories(
#	${BOOST_INCLUDE_DIR}
#	${CRYPTOPP_INCLUDE_DIRS}
#	${MYSQL_INCLUDE_DIR}
#	${OPENSSL_INCLUDE_DIR}
#)

set(BOOST_LIBRARY_DIR C:/Boost/lib)
set(CRYPTOPP_LIBRARY_DIR C:/cryptopp/lib)
set(MYSQL_LIBRARIES ${CMAKE_SOURCE_DIR}/src/shared/libmysql/6.0.2/win32/lib)
set(OPENSSL_LIBRARIES C:/OpenSSL-Win32/lib)

# Boost
include(ConfigureBoost)
set(BOOST_INCLUDE_DIR ${Boost_INCLUDE_DIRS})

link_directories(
	${BOOST_LIBRARY_DIR}
	${CRYPTOPP_LIBRARY_DIR}
	${MYSQL_LIBRARIES}
	${OPENSSL_LIBRARIES}
)

# Print out the results before continuing
include(cmake/showoptions.cmake)

# Add core sources
add_subdirectory(src)