# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/python-caja/python-caja-1.6.1.ebuild,v 1.1 2014/03/12 19:26:40 tomwij Exp $

EAPI="5"

GCONF_DEBUG="no"
GNOME2_LA_PUNT="yes"

PYTHON_COMPAT=( python2_{6,7} )

inherit gnome2 python-single-r1 versionator

MATE_BRANCH="$(get_version_component_range 1-2)"

SRC_URI="http://pub.mate-desktop.org/releases/${MATE_BRANCH}/${P}.tar.xz"
DESCRIPTION="Python bindings for the Caja file manager"
HOMEPAGE="http://www.mate-desktop.org"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

IUSE="doc"

RDEPEND="dev-libs/glib:2
	dev-python/pygobject:3[${PYTHON_USEDEP}]
	>=mate-base/mate-file-manager-1.6:0[introspection]
	x11-libs/gtk+:2
	${PYTHON_DEPS}"

DEPEND="${RDEPEND}
	virtual/pkgconfig:*
	doc? (
		app-text/docbook-xml-dtd:4.1.2
	)"

DOCS="AUTHORS ChangeLog NEWS README"

src_install() {
	gnome2_src_install

	# Keep the directory for systemwide extensions.
	keepdir /usr/share/python-caja/extensions/

	# The HTML documentation generation is broken and commented out by upstream.
	#
	#if use doc ; then
	#	insinto /usr/share/gtk-doc/html/nautilus-python # for dev-util/devhelp
	#	doins -r docs/html/*
	#fi
}