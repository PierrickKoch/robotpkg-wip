# robotpkg depend.mk for:	sysutils/py-rospkg
# Created:			Anthony Mallet on Sun, 15 Jul 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROSPACK_DEPEND_MK:=	${ROSPACK_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		rospack
endif

ifeq (+,$(ROSPACK_DEPEND_MK)) # --------------------------------------------

PREFER.rospack?=		robotpkg

DEPEND_USE+=		rospack

DEPEND_METHOD.rospack?=	build
DEPEND_ABI.rospack?=	rospack>=0.4
DEPEND_DIR.rospack?=	../../wip/rospack

SYSTEM_SEARCH.rospack=\
	bin/rospack						\
	'lib/pkgconfig/rospack.pc:/Version/s/[^0-9.]//gp'

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/cmake.mk

endif # ROSPACK_DEPEND_MK --------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
