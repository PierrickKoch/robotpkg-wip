
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PYYAML_DEPEND_MK:=	${PYYAML_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-yaml
endif

ifeq (+,$(PYYAML_DEPEND_MK)) # -----------------------------------------------

PREFER.py-yaml?=		robotpkg

DEPEND_USE+=		py-yaml
DEPEND_ABI.py-yaml?=	${PKGTAG.python-}yaml>=3.10
DEPEND_DIR.py-yaml?=	../../wip/py-yaml

SYSTEM_SEARCH.py-yaml=\
	'${PYTHON_SYSLIBSEARCH}/yaml/__init__.py:/__version__/s/[^0-9.]//gp'

include ../../devel/yaml-cpp/depend.mk
include ../../mk/sysdep/python.mk

endif # PYYAML_DEPEND_MK -----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
