# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdesdk-strigi-analyzer/kdesdk-strigi-analyzer-4.12.0.ebuild,v 1.2 2014/01/09 08:30:22 kensington Exp $

EAPI=5

KMNAME="kdesdk-strigi-analyzers"
inherit kde4-base

DESCRIPTION="kdesdk: strigi plugins"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	app-misc/strigi
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${KMNAME}-${PV}"