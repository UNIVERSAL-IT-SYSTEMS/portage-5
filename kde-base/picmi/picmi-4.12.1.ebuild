# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/picmi/picmi-4.12.1.ebuild,v 1.2 2014/01/19 10:58:46 ago Exp $

EAPI=5

inherit kde4-base

DESCRIPTION="Nonogram logic game for KDE"
HOMEPAGE="http://games.kde.org/game.php?game=picmi"
KEYWORDS="~amd64 ~arm ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="$(add_kdebase_dep libkdegames)"
RDEPEND="${DEPEND}"

RESTRICT=test
# needs X server