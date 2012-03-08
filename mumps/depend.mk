# robotpkg depend.mk for:	optimization/mumps
# Created:			Antonio El Khoury on Wed, 7 Mar 2012
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MUMPS_DEPEND_MK:=	${MUMPS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		mumps
endif

ifeq (+,$(MUMPS_DEPEND_MK)) # ----------------------------------------------

PREFER.mumps?=		robotpkg

DEPEND_USE+=		mumps

DEPEND_ABI.mumps?=	mumps>=4.10.0
DEPEND_DIR.mumps?=	../../wip/mumps

SYSTEM_SEARCH.mumps=\
  'include/mumps/dmumps_c.h:/MUMPS_VERSION.*"[0-9.]*"/s/[^0-9.]//gp'	\
  'lib/lib{s,d,c,z}mumps.{so,a}'

SYSTEM_PKG.Ubuntu.mumps=libmumps-dev

endif # MUMPS_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
