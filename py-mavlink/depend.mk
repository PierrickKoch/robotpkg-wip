# robotpkg depend.mk for:	net/py27-mavlink
# Created:			Arnaud Degroote on Fri, 30 Jan 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_MAVLINK_DEPEND_MK:=${PY_MAVLINK_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-mavlink
endif

ifeq (+,$(PY_MAVLINK_DEPEND_MK))
PREFER.py-mavlink?=	robotpkg

DEPEND_USE+=		py-mavlink

DEPEND_ABI.py-mavlink?=	py-mavlink>=1.0.11
DEPEND_DIR.py-mavlink?=	../../wip/py-mavlink

SYSTEM_SEARCH.mavlink=\
	'${PYTHON_SYSLIBSEARCH}/pymavlink/__init__.py'

include ../../wip/mavlink/depend.mk
include ../../mk/sysdep/python.mk

endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
