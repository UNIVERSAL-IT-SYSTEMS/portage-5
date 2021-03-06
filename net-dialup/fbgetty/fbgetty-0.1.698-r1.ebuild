# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-dialup/fbgetty/fbgetty-0.1.698-r1.ebuild,v 1.2 2015/02/13 11:46:52 pinkbyte Exp $

EAPI=5

inherit eutils

DESCRIPTION="An extended getty for the framebuffer console"
HOMEPAGE="http://projects.meuh.org/fbgetty/"
SRC_URI="http://projects.meuh.org/${PN}/downloads/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"

src_prepare() {
	epatch "${FILESDIR}/${P}-gcc41.patch"

	epatch_user
}

src_install() {
	default

	docompress -x "/usr/share/doc/${PF}/examples"
	insinto "/usr/share/doc/${PF}/examples"
	doins examples/{issue.*,inittab.*}
}
