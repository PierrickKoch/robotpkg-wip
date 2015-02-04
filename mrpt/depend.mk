# robotpkg depend.mk for:	wip/mrpt
# Created:			Arnaud Degroote on Wed, 11 Dec 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MRPT_DEPEND_MK:=${MRPT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		mrpt
endif

ifeq (+,$(MRPT_DEPEND_MK))
PREFER.mrpt?=	robotpkg

DEPEND_USE+=		mrpt

DEPEND_ABI.mrpt?=	mrpt>=1.0.2
DEPEND_DIR.mrpt?=	../../wip/mrpt

SYSTEM_SEARCH.mrpt=\
	bin/mrpt-performance \
	include/mrpt/base/include/mrpt/base.h \
	lib/libmrpt-base.so \
	'lib/pkgconfig/mrpt-base.pc:/Version/s/[^0-9.]//gp'
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
