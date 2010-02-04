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
#                                      Thomas Moulard on Thu Feb 4 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
VISP_DEPEND_MK:=	${VISP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		visp
endif

ifeq (+,$(VISP_DEPEND_MK)) # ---------------------------------------------

PREFER.visp?=		robotpkg

DEPEND_USE+=		visp

DEPEND_ABI.visp?=	visp>=2.4.4
DEPEND_DIR.visp?=	../../wip/visp

SYSTEM_SEARCH.visp=\
	'bin/visp-config:/ViSP/{s/^[^0-9]*//;s/[^.0-9].*//;s/^[^0-9]*$$//;p;}:% --version' \
	include/visp/vpConfig.h

endif # VISP_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
