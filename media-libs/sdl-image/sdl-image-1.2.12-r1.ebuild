# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/sdl-image/sdl-image-1.2.12-r1.ebuild,v 1.1 2014/04/18 19:08:23 hasufell Exp $

EAPI=5
inherit eutils multilib-minimal

MY_P="${P/sdl-/SDL_}"
DESCRIPTION="image file loading library"
HOMEPAGE="http://www.libsdl.org/projects/SDL_image/"
SRC_URI="http://www.libsdl.org/projects/SDL_image/release/${MY_P}.tar.gz"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sparc ~x86 ~amd64-fbsd ~x86-fbsd ~x86-freebsd ~amd64-linux ~ia64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE="gif jpeg png static-libs tiff webp"

RDEPEND="
	abi_x86_32? (
		!app-emulation/emul-linux-x86-sdl[-abi_x86_32(-)]
		!<=app-emulation/emul-linux-x86-sdl-20140406
	)
	sys-libs/zlib[${MULTILIB_USEDEP}]
	media-libs/libsdl[${MULTILIB_USEDEP}]
	png? ( media-libs/libpng:0[${MULTILIB_USEDEP}] )
	jpeg? ( virtual/jpeg[${MULTILIB_USEDEP}] )
	tiff? ( media-libs/tiff[${MULTILIB_USEDEP}] )
	webp? ( media-libs/libwebp[${MULTILIB_USEDEP}] )"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${MY_P}

multilib_src_configure() {
	ECONF_SOURCE="${S}" econf \
		--disable-jpg-shared \
		--disable-png-shared \
		--disable-tif-shared \
		--disable-webp-shared \
		$(use_enable static-libs static) \
		$(use_enable gif) \
		$(use_enable jpeg jpg) \
		$(use_enable tiff tif) \
		$(use_enable png) \
		$(use_enable webp) \
		--enable-bmp \
		--enable-lbm \
		--enable-pcx \
		--enable-pnm \
		--enable-tga \
		--enable-xcf \
		--enable-xpm \
		--enable-xv
}

multilib_src_install() {
	emake DESTDIR="${D}" install
	dobin .libs/showimage
}

multilib_src_install_all() {
	dodoc CHANGES README
	use static-libs || prune_libtool_files --all
}