# robotpkg depend.mk for:	math/libann
# Created:			Nizar Sallem on Mon, 8 Nov 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBANN_DEPEND_MK:=	${LIBANN_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libANN
endif

ifeq (+,$(LIBANN_DEPEND_MK)) # -------------------------------------------

PREFER.libann?=	robotpkg

DEPEND_USE+=		libANN
DEPEND_ABI.libann?=	libANN>=1.1.2
DEPEND_DIR.libann?=	../../wip/libANN

SYSTEM_SEARCH.libann=\
	include/ANN/ANN.h				\
	lib/libann.a

endif # LIBANN_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
