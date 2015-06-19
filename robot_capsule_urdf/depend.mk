# robotpkg depend.mk for:	graphics/robot_capsule_urdf
# Created:			Olivier Stasse on Wed, 19 Jun 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROBOT_CAPSULE_URDF_DEPEND_MK:=	${ROBOT_CAPSULE_URDF_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		robot-capsule-robot-urdf
endif

ifeq (+,$(ROMEO_DEPEND_MK)) # -------------------------------------------

PREFER.robot-capsule-robot-urdf?=	robotpkg

SYSTEM_SEARCH.robot-capsule-robot-urdf=\
	'lib/pkgconfig/robot-capsule-robot-urdf.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		robot-capsule-robot-urdf

DEPEND_ABI.robot-capsule-robot-urdf?=	robot-capsule-robot-urdf>=1.0.0
DEPEND_DIR.robot-capsule-robot-urdf?=	../../robots/robot-capsule-robot-urdf

endif # ROBOT_CAPSULE_URDF_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
