# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/pwstore-fast/pwstore-fast-2.4.1.ebuild,v 1.1 2013/12/10 14:19:03 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Secure password storage."
HOMEPAGE="https://github.com/PeterScott/pwstore"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base64-bytestring-0.1:=[profile?]
	>=dev-haskell/binary-0.5:=[profile?]
	>=dev-haskell/cryptohash-0.6:=[profile?]
	>=dev-haskell/random-1:=[profile?]
	>=dev-haskell/sha-1.6.1:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"