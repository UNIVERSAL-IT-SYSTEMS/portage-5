# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/waffle/waffle-9999.ebuild,v 1.1 2014/01/23 23:24:58 mattst88 Exp $

EAPI=5

EGIT_REPO_URI="git://people.freedesktop.org/~chadversary/waffle"

if [[ ${PV} = 9999* ]]; then
    GIT_ECLASS="git-2"
fi

inherit cmake-utils cmake-multilib ${GIT_ECLASS}

DESCRIPTION="Library that allows selection of GL API and of window system at runtime"
HOMEPAGE="http://people.freedesktop.org/~chadversary/waffle/"

if [[ $PV = 9999* ]]; then
	KEYWORDS=""
else
	SRC_URI="http://people.freedesktop.org/~chadversary/waffle/files/release/${P}/${P}.tar.xz"
	KEYWORDS="~amd64 ~arm ~x86"
fi

LICENSE="BSD-2"
SLOT="0"
IUSE="doc egl gbm test wayland"

RDEPEND="
	media-libs/mesa[egl?,gbm?,${MULTILIB_USEDEP}]
	virtual/opengl[${MULTILIB_USEDEP}]
	wayland? ( >=dev-libs/wayland-1.0[${MULTILIB_USEDEP}] )
	gbm? ( virtual/udev[${MULTILIB_USEDEP}] )
	x11-libs/libX11[${MULTILIB_USEDEP}]
	x11-libs/libxcb[${MULTILIB_USEDEP}]"
DEPEND="${RDEPEND}
	x11-proto/xcb-proto[${MULTILIB_USEDEP}]
	doc? (
		dev-libs/libxslt
		app-text/docbook-xml-dtd:4.2
	)"

src_unpack() {
	default
	[[ $PV = 9999* ]] && git-2_src_unpack
}

src_configure() {
	local mycmakeargs=(
		-Dwaffle_has_glx=ON
		-Dwaffle_build_examples=OFF
		$(cmake-utils_use doc waffle_build_manpages)
		$(cmake-utils_use egl waffle_has_x11_egl)
		$(cmake-utils_use gbm waffle_has_gbm)
		$(cmake-utils_use test waffle_build_tests)
		$(cmake-utils_use wayland waffle_has_wayland)
	)

	cmake-multilib_src_configure
}

src_test() {
	emake -C "${CMAKE_BUILD_DIR}" check
}