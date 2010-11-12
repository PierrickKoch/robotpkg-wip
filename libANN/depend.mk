# robotpkg depend.mk for:	math/libann
# Created:			Nizar Sallem on Mon, 8 Nov 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBANN_DEPEND_MK:=	${LIBANN_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libANN
endif

ifeq (+,$(LIBANN_DEPEND_MK)) # -------------------------------------------

PREFER.libANN?=	robotpkg

DEPEND_USE+=		libANN
DEPEND_ABI.libANN?=	libANN>=1.1.2
DEPEND_DIR.libANN?=	../../wip/libANN

SYSTEM_SEARCH.libANN=\
	include/ANN/ANN.h				\
	lib/libANN.so.0

endif # LIBANN_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
