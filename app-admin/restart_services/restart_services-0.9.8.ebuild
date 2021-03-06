# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-admin/restart_services/restart_services-0.9.8.ebuild,v 1.1 2015/02/19 16:25:52 mschiff Exp $

EAPI=5

DESCRIPTION="Tool to manage OpenRC services that need to be restarted"
HOMEPAGE="http://dev.gentoo.org/~mschiff/restart_services/"
SRC_URI="http://dev.gentoo.org/~mschiff/src/${PN}/${P}.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="
	app-admin/lib_users
	sys-apps/openrc
"

src_install() {
	exeinto /usr/sbin
	doexe restart_services
	doman restart_services.1
	insinto /etc
	doins restart_services.conf
	dodoc README CHANGES
}
