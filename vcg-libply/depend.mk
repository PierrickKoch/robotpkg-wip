# robotpkg depend.mk for:	modeling/vcg-libply
# Created:			nksallem on Tue, 24 Aug 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
VCG_LIBPLY_DEPEND_MK:=	${VCG_LIBPLY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		vcg-libply
endif

ifeq (+,$(VCG_LIBPLYPLY_DEPEND_MK)) # --------------------------------------

DEPEND_USE+=		vcg-libply

PREFER.vcg-libply?=	robotpkg
DEPEND_ABI.vcg-libply?=	vcg-libply>=20100824
DEPEND_DIR.vcg-libply?=	../../wip/vcg-libply

SYSTEM_SEARCH.vcg-libply=\
	include/vcg-plylib.h	\
	'lib/libply.{a,so,dylib}'

endif # VCG_LIBPLY_DEPEND_MK -----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
