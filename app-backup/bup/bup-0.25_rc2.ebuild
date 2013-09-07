# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit eutils

DESCRIPTION="It backs things up based on the git packfile format"
HOMEPAGE="http://github.com/bup/#{PN}"
SRC_URI="https://github.com/bup/${PN}/tarball/${P/_/-} -> ${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+doc"

DEPEND="|| (
			dev-lang/python:2.4
			dev-lang/python:2.5
			dev-lang/python:2.6
			dev-lang/python:2.7
		)
		dev-vcs/git
		app-arch/par2cmdline
		dev-python/fuse-python
		dev-python/pyxattr
		dev-python/pylibacl
		doc? ( app-text/pandoc )"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	mv -v * "${S}" || die
}

src_configure() {
	echo "Nothing to configure..."
}

src_compile() {
	emake CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
}

src_install() {
	emake install DESTDIR="${D}"

	dodoc "${D}/usr/share/doc/${PN}"/*
	rm -r "${D}/usr/share/doc/${PN}/" || die

	dodoc README DESIGN
}

src_test() {
	emake test
}
