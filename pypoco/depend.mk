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
#                                        Severin Lemaignan on 25 Jan 2011

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PYPOCO_DEPEND_MK:=	${PYPOCO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		pypoco
endif

ifeq (+,$(PYPOCO_DEPEND_MK)) # -----------------------------------------------

PREFER.pypoco?=		robotpkg

DEPEND_USE+=		pypoco
DEPEND_ABI.pypoco?=	pypoco>=1.2
DEPEND_DIR.pypoco?=	../../wip/pypoco

_pynamespec=python{2.6,2.5,2.4,[0-9].[0-9],}
SYSTEM_SEARCH.pypoco=\
	'lib/${_pynamespec}/{site,dist}-packages/pypoco.py'

endif # PYPOCO_DEPEND_MK -----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
