# robotpkg depend.mk for:	path/trajectory_monitor-genom
# Created:			Arnaud Degroote on Mon, 8 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TRAJECTORY_MONITOR_GENOM_DEPEND_MK:=	${TRAJECTORY_MONITOR_GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		trajectory_monitor-genom
endif

ifeq (+,$(TRAJECTORY_MONITOR_GENOM_DEPEND_MK))
PREFER.trajectory_monitor-genom?=	robotpkg

DEPEND_USE+=		trajectory_monitor-genom

DEPEND_ABI.trajectory_monitor-genom?=	trajectory_monitor-genom>=0.1
DEPEND_DIR.trajectory_monitor-genom?=	../../wip/trajectory_monitor-genom

SYSTEM_SEARCH.trajectory_monitor-genom=\
	include/trajectory_monitor/trajectory_monitor-Struct.h		\
	lib/pkgconfig/trajectory_monitor.pc

include ../../architecture/genom/depend.mk

endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
