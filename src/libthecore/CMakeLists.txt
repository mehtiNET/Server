##
# This file is part of the enhanceMT Project.
##

file(GLOB_RECURSE sources_localdir *.cpp *.cc *.c *.h)

SET(libthecore_SRCS
	${libthecore_SRCS}
	${sources_localdir}
)

include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}
	${BOOST_INCLUDE_DIR}
	${CRYPTOPP_INCLUDE_DIRS}
	${MYSQL_INCLUDE_DIR}
	${OPENSSL_INCLUDE_DIR}
)

add_library(libthecore STATIC ${libthecore_SRCS})
