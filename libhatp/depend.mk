# robotpkg depend.mk for:	planning/libhatp
# Created:			Raphaël Lallement, 18/01/2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBHATP_DEPEND_MK:=${LIBHATP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libhatp
endif

ifeq (+,$(LIBHATP_DEPEND_MK))
PREFER.libhatp?=	robotpkg

DEPEND_USE+=		libhatp

DEPEND_ABI.libhatp?=	libhatp>=1.1.0
DEPEND_DIR.libhatp?=	../../wip/libhatp

SYSTEM_SEARCH.libhatp=\
	include/libhatp/hatpPlan.hh \
	lib/liblibhatp.so \
	lib/pkgconfig/libhatp.pc\
	share/cmake/Modules/Findlibhatp.cmake
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
