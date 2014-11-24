##
# This file is part of the enhanceMT Project.
# Based on TrinityCore project cmake files.
##

file(GLOB_RECURSE sources_localdir *.cpp *.h)

SET(common_SRCS
	${common_SRCS}
	${sources_localdir}
)
