# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/games-arcade/spacerider/spacerider-0.13.ebuild,v 1.11 2015/02/15 23:19:11 mr_bones_ Exp $

EAPI=5
inherit eutils games

DESCRIPTION="space-shooter written in C++, using the SDL"
HOMEPAGE="http://www.hackl.dhs.org/spacerider/"
SRC_URI="mirror://gentoo/${P}.tar.bz2" # stupid php script

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"
IUSE=""

DEPEND="media-libs/libsdl[sound,video]
	media-libs/sdl-gfx
	media-libs/sdl-mixer
	media-libs/sdl-image[jpeg]
	media-libs/sdl-net
	media-libs/sdl-ttf"
RDEPEND=${DEPEND}

src_prepare() {
	epatch "${FILESDIR}/${P}"-gentoo.patch \
		"${FILESDIR}/${P}"-gcc41.patch \
		"${FILESDIR}"/${P}-ovflfix.patch
	sed -i \
		-e "s:/usr/share/games/spacerider:${GAMES_DATADIR}/${PN}:" \
		globals.cpp || die
}

src_install() {
	dogamesbin ${PN}
	insinto "${GAMES_DATADIR}/${PN}"
	doins -r data
	dodoc AUTHORS
	newman ${PN}.{1,6}
	prepgamesdirs
}
