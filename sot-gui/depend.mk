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
#                                      Duong Dang on Wed June 2 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_GUI_DEPEND_MK:=	${SOT_GUI_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-gui
endif

ifeq (+,$(SOT_GUI_DEPEND_MK)) # --------------------------------------

PREFER.sot-gui?=	robotpkg

DEPEND_USE+=		sot-gui

DEPEND_ABI.sot-gui?=	sot-gui>=0.2
DEPEND_DIR.sot-gui?=	../../wip/sot-gui

SYSTEM_SEARCH.sot-gui=			\
			bin/sot_gui

endif # SOT_GUI

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
