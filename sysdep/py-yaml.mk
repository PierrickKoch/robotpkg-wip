# robotpkg sysdep/py-yaml.mk
# Created:			Arnaud Degroote on Mon,  1 Sep 2014
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_YAML_DEPEND_MK:=	${PY_YAML_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-yaml
endif

ifeq (+,$(PY_YAML_DEPEND_MK)) # --------------------------------------------

PREFER.py-yaml?=	system

DEPEND_USE+=		py-yaml

DEPEND_ABI.py-yaml?=	${PKGTAG.python}-yaml>=3.0

SYSTEM_SEARCH.py-yaml=\
  '${PYTHON_SYSLIBSEARCH}/yaml/__init__.py'

SYSTEM_PKG.Debian.py-yaml=	python-yaml (python-${PYTHON_VERSION})
SYSTEM_PKG.Fedora.py-yaml=	PyYAML 
SYSTEM_PKG.NetBSD.py-yaml=	textproc/${PKGTAG.python}-yaml
SYSTEM_PKG.Ubuntu.py-yaml=	python-yaml (python-${PYTHON_VERSION})
SYSTEM_PKG.Gentoo.py-yaml=	dev-python/pyyaml (python-${PYTHON_VERSION})

include ../../mk/sysdep/python.mk

export YAMLTESTS=	$(word 1,${SYSTEM_FILES.py-yaml})

endif # PY_YAML_DEPEND_MK --------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
