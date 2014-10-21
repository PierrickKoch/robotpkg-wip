# robotpkg depend.mk for:	architecture/py27-hla
# Created:			Arnaud Degroote on Tue, 12 Mar 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PYHLA_DEPEND_MK:=${PYHLA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-hla
endif

ifeq (+,$(PYHLA_DEPEND_MK))
PREFER.py-hla?=	robotpkg

DEPEND_USE+=		py-hla

DEPEND_ABI.py-hla?=	${PKGTAG.python-}hla>=1.1.1
DEPEND_DIR.py-hla?=	../../wip/py-hla

SYSTEM_SEARCH.py-hla=\
	'${PYTHON_SYSLIBSEARCH}/hla/__init__.py'
endif

include ../../mk/sysdep/python.mk

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
