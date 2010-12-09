# Copyright (c) 2010 LAAS/CNRS
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
#                                    Xavier BROQUERE on Tue 31 Aug 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
RFID-GENOM_DEPEND_MK:=	${RFID-GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		rfid-genom
endif

ifeq (+,$(RFID-GENOM_DEPEND_MK)) # ----------------------------------

PREFER.rfid-genom?=	robotpkg

SYSTEM_SEARCH.rfid-genom=\
	include/rfid/rfidStruct.h	\
	lib/pkgconfig/rfid.pc	\
	bin/rfid

DEPEND_USE+=		rfid-genom

DEPEND_ABI.rfid-genom?=rfid-genom>=1.1
DEPEND_DIR.rfid-genom?=../../wip/rfid-genom

endif # RFID-GENOM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
