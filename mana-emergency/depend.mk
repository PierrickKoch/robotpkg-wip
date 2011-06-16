# robotpkg depend.mk for:	robots/mana-emergency
# Created:			Matthieu Herrb on Thu, 29 Apr 2010
#


DEPEND_DEPTH:=		${DEPEND_DEPTH}+
RMP_LIBS_DEPEND_MK:=${RMP_LIBS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		mana-emergency
endif

ifeq (+,$(RMP_LIBS_DEPEND_MK))
PREFER.mana-emergency?=	robotpkg

DEPEND_USE+=		mana-emergency

DEPEND_ABI.mana-emergency?=	mana-emergency>=0.1
DEPEND_DIR.mana-emergency?=	../../wip/mana-emergency

SYSTEM_SEARCH.mana-emergency=\
	bin/fetest \
	include/fe/ftdi-emergency.h \
	lib/pkgconfig/felib.pc
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
