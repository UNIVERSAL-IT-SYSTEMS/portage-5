# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-portage/g-sorcery/g-sorcery-9999-r1.ebuild,v 1.4 2014/11/24 14:07:48 jauhien Exp $

EAPI=5

PYTHON_COMPAT=(python{2_7,3_3,3_4})

inherit distutils-r1 git-2

DESCRIPTION="framework for ebuild generators"
HOMEPAGE="https://github.com/jauhien/g-sorcery"
SRC_URI=""
EGIT_BRANCH="master"
EGIT_REPO_URI="git://git.overlays.gentoo.org/proj/g-sorcery.git"

LICENSE="GPL-2"
SLOT="0"

PDEPEND=">=app-portage/layman-2.2.0[g-sorcery(-),$(python_gen_usedep 'python*')]"

python_install_all() {
	distutils-r1_python_install_all

	doman docs/*.8
	dohtml docs/developer_instructions.html
	diropts -m0777
	dodir /var/lib/g-sorcery
}
