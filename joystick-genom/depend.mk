# Copyright (c) 2012 LAAS/CNRS
# All rights reserved.
#
# Redistribution  and  use in source   and binary forms,  with or without
# modification, are permitted provided that  the following conditions are
# met:
#
#   1. Redistributions  of  source code must  retain  the above copyright
#      notice, this list of conditions and the following disclaimer.
#   2. Redistributions in binary form must  reproduce the above copyright
#      notice,  this list of  conditions and  the following disclaimer in
#      the  documentation   and/or  other  materials   provided with  the
#      distribution.
#
#                                    Xavier BROQUERE on Fri 06 Jan 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
JOYSTICK-GENOM_DEPEND_MK:=	${JOYSTICK-GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		joystick-genom
endif

ifeq (+,$(JOYSTICK-GENOM_DEPEND_MK)) # ----------------------------------

PREFER.joystick-genom?=	robotpkg

SYSTEM_SEARCH.joystick-genom=\
	include/joystick/joystickStruct.h	\
	lib/pkgconfig/joystick.pc	\
	bin/joystick

DEPEND_USE+=		joystick-genom

DEPEND_ABI.joystick-genom?=joystick-genom>=1.0
DEPEND_DIR.joystick-genom?=../../wip/joystick-genom

endif # JOYSTICK-GENOM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
