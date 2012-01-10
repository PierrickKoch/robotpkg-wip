# robotpkg depend.mk for:	path/MPC
# Created:			Arnaud Degroote on Tue, 10 Jan 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBMPC_DEPEND_MK:=${LIBMPC_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		MPC
endif

ifeq (+,$(LIBMPC_DEPEND_MK))
PREFER.MPC?=	robotpkg

DEPEND_USE+=		MPC

DEPEND_ABI.MPC?=	MPC>=1.0
DEPEND_DIR.MPC?=	../../wip/MPC

SYSTEM_SEARCH.MPC=\
	include/MPC/mpc.hpp	\
	lib/libMPC-core.so	\
	lib/pkgconfig/mpc-core.pc
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
