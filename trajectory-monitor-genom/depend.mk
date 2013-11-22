# robotpkg depend.mk for:	path/trajectory-monitor-genom
# Created:			Arnaud Degroote on Mon, 8 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TRAJECTORY_MONITOR_GENOM_DEPEND_MK:=	${TRAJECTORY_MONITOR_GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		trajectory-monitor-genom
endif

ifeq (+,$(TRAJECTORY_MONITOR_GENOM_DEPEND_MK))
PREFER.trajectory-monitor-genom?=	robotpkg

DEPEND_USE+=		trajectory-monitor-genom

DEPEND_ABI.trajectory-monitor-genom?=	trajectory-monitor-genom>=0.1
DEPEND_DIR.trajectory-monitor-genom?=	../../wip/trajectory-monitor-genom

SYSTEM_SEARCH.trajectory-monitor-genom=\
	include/trajectory_monitor/trajectory_monitor-Struct.h		\
	lib/pkgconfig/trajectory_monitor.pc

include ../../architecture/genom/depend.mk

endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
