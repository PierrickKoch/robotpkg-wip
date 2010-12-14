# robotpkg depend.mk for:	hardware/openni
# Created:			Matthieu Herrb on Tue, 14 Dec 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
RMP_LIBS_DEPEND_MK:=${RMP_LIBS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		openi
endif

ifeq (+,$(RMP_LIBS_DEPEND_MK))
PREFER.openi?=	robotpkg

DEPEND_USE+=		openi

DEPEND_ABI.openi?=	openi>=20101212
DEPEND_DIR.openi?=	../../hardware/openi

SYSTEM_SEARCH.openi=\
	bin/niReg \
	bin/niLicense \
	include/ni/XnTypes.h \
	lib/libOpenNI.so
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
