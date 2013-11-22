# robotpkg depend.mk for:	action/vnet-yarp
# Created:			Arnaud Degroote on Wed, 16 Nov 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
VNET_YARP_DEPEND_MK:=	${VNET_YARP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		vnet-yarp
endif

ifeq (+,$(VNET_YARP_DEPEND_MK)) # --------------------------------------------

PREFER.vnet-yarp?=	robotpkg

SYSTEM_SEARCH.vnet-yarp=\
	'bin/vnet' 			\
	'include/vnet/vnet-yarp.hh' \
	'lib/pkgconfig/vnet-yarp.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		vnet-yarp
DEPEND_ABI.vnet-yarp?=	vnet-yarp>=0.2
DEPEND_DIR.vnet-yarp?=	../../wip/vnet-yarp

endif # VNET_YARP_DEPEND_MK --------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
