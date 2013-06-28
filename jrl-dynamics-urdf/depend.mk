# robotpkg depend.mk for:	math/jrl-dynamics-urdf
# Created:			Olivier Stasse on Fri, Jun 28
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
JRL_DYNAMICS_URDF_DEPEND_MK:=${JRL_DYNAMICS_URDF_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jrl-dynamics-urdf
endif

ifeq (+,$(JRL_DYNAMICS_DEPEND_MK)) # ---------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.jrl-dynamics-urdf?=		${PREFER.ros-base}
SYSTEM_PREFIX.jrl-dynamics-urdf?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=		jrl-dynamics-urdf

DEPEND_ABI.jrl-dynamics-urdf?=jrl-dynamics-urdf>=1.0.0
DEPEND_DIR.jrl-dynamics-urdf?=../../wip/jrl-dynamics-urdf

endif # JRL_DYNAMICS_URDF_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}

