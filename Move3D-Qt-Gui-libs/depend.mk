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
#                                        Jim Mainprice on Thu 12 Nov 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MOVE3D-QT-GUI-LIBS_DEPEND_MK:=	${MOVE3D-QT-GUI-LIBS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		Move3D-Qt-Gui-libs
endif

ifeq (+,$(MOVE3D-QT-GUI-LIBS_DEPEND_MK)) # ----------------------------------

PREFER.Move3D-Qt-Gui-libs?=	robotpkg

SYSTEM_SEARCH.Move3D-Qt-Gui-libs=\
	include/Move3D-Qt-Gui/src/qtLibrary.hpp	\
	lib/libMove3D-Qt-Gui.so

DEPEND_USE+=		Move3D-Qt-Gui-libs

DEPEND_ABI.Move3D-Qt-Gui-libs?=Move3D-Qt-Gui-libs>=1.0.0
DEPEND_DIR.Move3D-Qt-Gui-libs?=../../wip/Move3D-Qt-Gui-libs

#include ../../wip/??

endif # Move3D-Qt-Gui-libs_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
