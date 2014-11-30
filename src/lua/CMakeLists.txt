##
# This file is part of the enhanceMT Project.
##

file(GLOB sources_localdir *.c)
list(REMOVE_ITEM sources_localdir ${CMAKE_CURRENT_SOURCE_DIR}/lua.c)
list(REMOVE_ITEM sources_localdir ${CMAKE_CURRENT_SOURCE_DIR}/luac.c)

SET(lua_SRCS
	${sources_localdir}
)

include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}
)

add_library(lua STATIC ${lua_SRCS})
