# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-djbdns/selinux-djbdns-2.20140311-r1.ebuild,v 1.1 2014/03/21 19:13:14 swift Exp $
EAPI="4"

IUSE=""
MODS="djbdns"
BASEPOL="2.20140311-r1"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for djbdns"

KEYWORDS="~amd64 ~x86"
DEPEND="${DEPEND}
	sec-policy/selinux-daemontools
	sec-policy/selinux-ucspitcp
"
RDEPEND="${DEPEND}"