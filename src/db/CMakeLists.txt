##
# This file is part of the enhanceMT Project.
# Based on TrinityCore project cmake files.
##

file(GLOB_RECURSE sources_localdir *.cpp *.h)

SET(db_SRCS
	${db_SRCS}
	${sources_localdir}
)

include_directories(
	${CMAKE_BINARY_DIR}
	${CMAKE_SOURCE_DIR}/src
	${BOOST_INCLUDE_DIR}
	${MYSQL_INCLUDE_DIR}
)

link_directories(
	${MYSQL_LIBRARIES}
)

add_executable(db ${db_SRCS})

#target_link_libraries(db
#	${MYSQL_LIBRARIES}/mysqlclient.lib
#)
