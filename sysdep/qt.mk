#
# Copyright (c) 2010 LAAS/CNRS
# All rights reserved.
#
# Redistribution and use  in source  and binary  forms,  with or without
# modification, are permitted provided that the following conditions are
# met:
#
#   1. Redistributions of  source  code must retain the  above copyright
#      notice and this list of conditions.
#   2. Redistributions in binary form must reproduce the above copyright
#      notice and  this list of  conditions in the  documentation and/or
#      other materials provided with the distribution.
#
#                                    Akin Sisbot on 7 Nov 2010
#

# Qt is a software toolkit for developing applications.
# This package contains base tools, like string, xml, and network handling.


DEPEND_DEPTH:=		${DEPEND_DEPTH}+
QT_DEPEND_MK:=		${QT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		qt
endif

ifeq (+,$(QT_DEPEND_MK)) # ---------------------------------------------

PREFER.qt?=		system
DEPEND_USE+=		qt
DEPEND_ABI.qt?=		qt>=4.0

SYSTEM_SEARCH.qt=	\
	include/QtGui/QApplication \
	lib/libQtGui.so	\
	lib/libQtOpenGL.so	\

SYSTEM_PKG.Linux-fedora.qt=qt
#SYSTEM_PKG.Linux-ubuntu.qt=libforms-dev
#SYSTEM_PKG.Linux-debian.qt=libforms-dev

endif # QT_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
