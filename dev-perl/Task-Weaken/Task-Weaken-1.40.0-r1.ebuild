# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Task-Weaken/Task-Weaken-1.40.0-r1.ebuild,v 1.1 2014/08/22 18:22:08 axs Exp $

EAPI=5

MODULE_AUTHOR=ADAMK
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="Ensure that a platform has weaken support"

SLOT="0"
KEYWORDS="amd64 hppa ppc ppc64 x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~sparc-solaris"
IUSE=""

SRC_TEST="do"
