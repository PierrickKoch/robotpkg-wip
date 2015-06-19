# robotpkg depend.mk for:	robots/hrp2-14-description
# Created:			Olivier Stasse on Wed, 17 Jun 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HRP2_14_DESCRIPTION_DEPEND_MK:=	${HRP2_14_DESCRIPTION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hrp2-14-description
endif

ifeq (+,$(ROMEO_DEPEND_MK)) # -------------------------------------------

PREFER.hrp2-14-description?=	robotpkg

SYSTEM_SEARCH.hrp2-14-description=\
	'lib/pkgconfig/hrp2-14-description.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		hrp2-14-description
ROS_DEPEND_USER+=	hrp2-14-description

DEPEND_ABI.hrp2-14-description?=	hrp2-14-description>=1.0.0
DEPEND_DIR.hrp2-14-description?=	../../robots/hrp2-14-description

endif # HRP2_14_DESCRIPTION_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
