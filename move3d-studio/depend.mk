## robotpkg depend.mk for:	path/move3d-studio
# Created:			Severin Lemaignan on Fri, 11 Feb 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MOVE3DSTUDIO_DEPEND_MK:=	${MOVE3DSTUDIO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		move3d-studio
endif

ifeq (+,$(MOVE3DSTUDIO_DEPEND_MK)) # ----------------------------------

PREFER.move3d-studio?=	robotpkg

SYSTEM_SEARCH.move3d-studio=\
	bin/move3d-studio
#TODO: check the version

DEPEND_USE+=		move3d-studio

DEPEND_ABI.move3d-studio?=move3d-studio>=3.9
DEPEND_DIR.move3d-studio?=../../wip/move3d-studio

endif # MOVE3DSTUDIO_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
