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
#                                      Thomas Moulard on Mon Jun 7 2010
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROBOT_VIEWER_DEPEND_MK:=	${ROBOT_VIEWER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			robot-viewer
endif

ifeq (+,$(ROBOT_VIEWER_DEPEND_MK)) # --------------------------------------

PREFER.robot-viewer?=		robotpkg

DEPEND_USE+=			robot-viewer

DEPEND_ABI.robot-viewer?=	robot-viewer>=1.2
DEPEND_DIR.robot-viewer?=	../../wip/robot-viewer

SYSTEM_SEARCH.robot-viewer=			\
	lib/python2.6/site-packages/robot_viewer-1.2-py2.6.egg/robotviewer/__init__.py

endif # ROBOT_VIEWER_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
