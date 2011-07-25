# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit flag-o-matic eutils

DESCRIPTION="a libpurple (Pidgin, ...) plugin which treats microblogging (Twitter, ...) as IM protocols."
HOMEPAGE="http://code.google.com/p/prpltwtr/"
SRC_URI="http://prpltwtr.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="net-im/pidgin"


src_prepare() {
	# patch the data/Makefile so that ${D} gets respected
	epatch ${FILESDIR}/${P}-respect-destdir.patch
}

src_compile() {
	emake -j1  || die "emake failed"
}

src_install() {
	emake -j1 install DESTDIR="${D}" || die "install failed"
}

