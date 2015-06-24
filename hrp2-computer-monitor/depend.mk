# robotpkg depend.mk for:	robots/hrp2-computer-monitor
# Created:			Olivier Stasse on Wed, 24 Jun 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HRP2_COMPUTER_MONITOR_DEPEND_MK:=	${HRP2_COMPUTER_MONITOR_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hrp2-computer-monitor
endif

ifeq (+,$(ROMEO_DEPEND_MK)) # -------------------------------------------

PREFER.hrp2-computer-monitor?=	robotpkg

SYSTEM_SEARCH.hrp2-computer-monitor=\
	'lib/pkgconfig/hrp2-computer-monitor.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		hrp2-computer-monitor
ROS_DEPEND_USER+=	hrp2-computer-monitor

DEPEND_ABI.hrp2-computer-monitor?=	hrp2-computer-monitor>=1.0.0
DEPEND_DIR.hrp2-computer-monitor?=	../../robots/hrp2-computer-monitor

endif # HRP2_COMPUTER_MONITOR_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
