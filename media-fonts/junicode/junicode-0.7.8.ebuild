# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-fonts/anonymous-pro/anonymous-pro-1.002.ebuild,v 1.1 2011/01/18 23:10:46 spatz Exp $

EAPI=5

inherit font

inherit versionator
MY_PV=$(replace_all_version_separators '-')
MY_P="${PN}-${MY_PV}"

DESCRIPTION="Unicode Font for Medievalists"
HOMEPAGE="http://junicode.sourceforge.net"
SRC_URI="mirror://sourceforge/junicode/${MY_P}.zip"

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

FONT_SUFFIX="ttf"
FONT_S="${WORKDIR}/junicode/fonts"
S=${FONT_S}
