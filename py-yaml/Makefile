# robotpkg Makefile for:	py-yaml
# Created:			Pierrick Koch on Wed, 22 Jul 2015
#

VERSION=		3.10
PKGNAME=		${PKGTAG.python}-yaml
DISTNAME=		PyYAML-${VERSION}
MASTER_SITES=		http://pyyaml.org/download/pyyaml/
MASTER_REPOSITORY=	http://svn.pyyaml.org/pyyaml/trunk
# http://pyyaml.org/download/pyyaml/PyYAML-3.10.tar.gz

CATEGORIES=		sysutils
COMMENT=		YAML Python bindings
HOMEPAGE=		http://pyyaml.org
LICENSE=		mit

PYDISTUTILSPKG=	yes

# FIXME warning does not seems to prevent installing
# libyaml is not found or a compiler error: forcing --without-libyaml
# (if libyaml is installed correctly, you may need to
# specify the option --include-dirs or uncomment and
# modify the parameter include_dirs in setup.cfg)

include ../../devel/yaml-cpp/depend.mk
include ../../mk/sysdep/py-argparse.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
