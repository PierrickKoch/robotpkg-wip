# Created:                         Severin Lemaignan on Fri 24 Sep 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SPARK-GENOM_DEPEND_MK:=	${SPARK-GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		spark-genom
endif

ifeq (+,$(SPARK-GENOM_DEPEND_MK)) # ----------------------------------

PREFER.spark-genom?=	robotpkg

SYSTEM_SEARCH.spark-genom=\
	include/spark/sparkStruct.h	\
	lib/pkgconfig/spark.pc	\
	bin/spark

DEPEND_USE+=		spark-genom

DEPEND_ABI.spark-genom?=spark-genom>=3.8
DEPEND_DIR.spark-genom?=../../wip/spark-genom

endif # SPARK-GENOM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
