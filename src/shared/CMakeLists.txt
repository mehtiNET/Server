##
# This file is part of the enhanceMT Project.
##

file(GLOB_RECURSE sources_localdir *.cpp *.cc *.c *.h)

SET(shared_SRCS
	${shared_SRCS}
	${sources_localdir}
)

include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}
	${CMAKE_SOURCE_DIR}/src
	${BOOST_INCLUDE_DIR}
	${CRYPTOPP_INCLUDE_DIRS}
	${MYSQL_INCLUDE_DIR}
	${OPENSSL_INCLUDE_DIR}
)

add_library(shared STATIC ${shared_SRCS})
