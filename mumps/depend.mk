# robotpkg depend.mk for:	optimization/mumps
# Created:			Antonio El Khoury on Wed, 7 Mar 2012
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
IPOPT_DEPEND_MK:=${IPOPT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=	mumps
endif

ifeq (+,$(IPOPT_DEPEND_MK)) # ------------------------------

PREFER.ipopt?=	robotpkg

DEPEND_USE+=			mumps

DEPEND_ABI.ipopt?=	mumps>=4.10.0
DEPEND_DIR.ipopt?=	../../optimization/ipopt

SYSTEM_SEARCH.ipopt=\
	include/coin/ThirdParty/dmumps_c.h		\
	lib/libcoinmumps.so

endif # --------------------------------------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
