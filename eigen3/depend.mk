# robotpkg depend.mk for:	wip/eigen3
# Created:			Nizar Sallem on Tue, 26 Apr 2011
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
EIGEN3_DEPEND_MK:=	${EIGEN3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		eigen3
endif

ifeq (+,$(EIGEN3_DEPEND_MK))
PREFER.eigen3?=		system

DEPEND_USE+=		eigen3

DEPEND_ABI.eigen3?=	eigen3>=3.0.0
DEPEND_DIR.eigen3?=	../../wip/eigen3

SYSTEM_SEARCH.eigen3=	\
	include/eigen3/signature_of_eigen3_matrix_library

# extracting version from the .h file is challenging...
_eigen3_version_sed=	/^\#define EIGEN_[A-Z]*_VERSION[ \t]*/{s///;H;};
_eigen3_version_sed+=	$${x;s/\n/./g;s/^[.]//;p;}

endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
