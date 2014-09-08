# robotpkg depend.mk for:	mapping/pcl
# Created:			Pierrick Koch on Mon, 08 Sep 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PCL_DEPEND_MK:=${PCL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		pcl
endif

ifeq (+,$(PCL_DEPEND_MK))
PREFER.pcl?=	robotpkg

DEPEND_USE+=		pcl

DEPEND_ABI.pcl?=	pcl>=1.7.1
DEPEND_DIR.pcl?=	../../wip/pcl

SYSTEM_SEARCH.pcl= \
	include/pcl-1.7/pcl/pcl_config.h \
	lib/libpcl_common.so \
	'lib/pkgconfig/pcl_common-1.7.pc:/Version/s/[^0-9.]//gp'
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
