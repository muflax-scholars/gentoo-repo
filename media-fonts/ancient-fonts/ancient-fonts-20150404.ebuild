# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-fonts/anonymous-pro/anonymous-pro-1.002.ebuild,v 1.1 2011/01/18 23:10:46 spatz Exp $

EAPI=5

inherit font

MY_PN="Ancient Fonts"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Unicode Fonts for Ancient Scripts"
HOMEPAGE="http://users.teilar.gr/~g1951d/"
SRC_URI="http://users.teilar.gr/~g1951d/Aegean.zip
http://users.teilar.gr/~g1951d/CyproMinoan.zip
http://users.teilar.gr/~g1951d/Cretan.zip
http://users.teilar.gr/~g1951d/TextFonts.zip
http://users.teilar.gr/~g1951d/Aegyptus.zip
http://users.teilar.gr/~g1951d/Nilus.zip
http://users.teilar.gr/~g1951d/Gardiner.zip
http://users.teilar.gr/~g1951d/Akkadian.zip
http://users.teilar.gr/~g1951d/Assyrian.zip
http://users.teilar.gr/~g1951d/Anatolian.zip
http://users.teilar.gr/~g1951d/Maya.zip
http://users.teilar.gr/~g1951d/Musica.zip
http://users.teilar.gr/~g1951d/Analecta.zip"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

FONT_SUFFIX="ttf"
FONT_S="${WORKDIR}"
S=${FONT_S}
