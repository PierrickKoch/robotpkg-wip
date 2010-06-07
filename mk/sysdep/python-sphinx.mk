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
#                                     Thomas Moulard on Mon Jan  7 2010
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PYTHON_SPHINX_DEPEND_MK:=	${PYTHON_SPHINX_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		python-sphinx
endif

ifeq (+,$(PYTHON_SPHINX_DEPEND_MK)) # ----------------------------------------

PREFER.python-sphinx?=		system
DEPEND_USE+=			python-sphinx
DEPEND_ABI.python-sphinx?=	python-sphinx>=0.6

SYSTEM_PKG.Linux-fedora.python-sphinx=python-sphinx
#SYSTEM_PKG.Linux-ubuntu.python-sphinx=
#SYSTEM_PKG.Linux-debian.python-sphinx=
#SYSTEM_PKG.NetBSD.python-sphinx=


SYSTEM_SEARCH.python-sphinx=	\
	'bin/sphinx-build:/Sphinx v/{s/^[^0-9]*//;s/[^.0-9].*$$//;p;}:% --version'

endif # PYTHON_SPHINX_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
