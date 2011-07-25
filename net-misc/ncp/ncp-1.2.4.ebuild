# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="A utility for copying files in a LAN"
HOMEPAGE="http://www.fefe.de/ncp/"
SRC_URI="http://dl.fefe.de/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-libs/libowfat"

src_compile() {
	emake CFLAGS="${CFLAGS} -I/usr/include/libowfat" || die "emake failed"
}

src_install() {
	dobin ncp

	dosym /usr/bin/ncp /usr/bin/npoll
	dosym /usr/bin/ncp /usr/bin/npush

	doman ncp.1
	dodoc NEWS
}

