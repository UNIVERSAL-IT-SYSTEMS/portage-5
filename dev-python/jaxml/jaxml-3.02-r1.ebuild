# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/jaxml/jaxml-3.02-r1.ebuild,v 1.1 2014/01/20 03:11:52 floppym Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1

DESCRIPTION="XML generator written in Python"
HOMEPAGE="http://www.librelogiciel.com/software/jaxml/action_Presentation http://pypi.python.org/pypi/jaxml"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~ppc ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=""