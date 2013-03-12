# robotpkg depend.mk for:	architecture/certi
# Created:			Arnaud Degroote on Tue, 12 Mar 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
CERTI_LIBS_DEPEND_MK:=${CERTI_LIBS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		certi
endif

ifeq (+,$(CERTI_LIBS_DEPEND_MK))
PREFER.certi?=	robotpkg

DEPEND_USE+=		certi

DEPEND_ABI.certi?=	certi>=20120101
DEPEND_DIR.certi?=	../../wip/certi

SYSTEM_SEARCH.certi=\
	bin/rtia 		\
	include/RTI.hh  \
	lib/libCERTI.so
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
