# robotpkg depend.mk for:	planning/msgconnector
# Created:			Raphaël Lallement, 22/01/2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MSGCONNECTOR_DEPEND_MK:=${MSGCONNECTOR_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		msgconnector
endif

ifeq (+,$(MSGCONNECTOR_DEPEND_MK))
PREFER.msgconnector?=	robotpkg

DEPEND_USE+=		msgconnector

DEPEND_ABI.msgconnector?=	msgconnector>=2.8.3
DEPEND_DIR.msgconnector?=	../../wip/msgconnector

SYSTEM_SEARCH.msgconnector=\
	include/msgconnector/msgClient.hh\
	lib/libmsgconnectorClient.so\
	bin/MsgServer\
	lib/pkgconfig/msgconnector.pc\
	share/cmake/Modules/Findmsgconnector.cmake
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
