# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-lang/moarvm/moarvm-2015.06.ebuild,v 1.1 2015/06/19 11:13:14 patrick Exp $

EAPI=5

inherit eutils multilib

MY_PN="MoarVM"

DESCRIPTION="A 6model-based VM for NQP and Rakudo Perl 6"
HOMEPAGE="http://moarvm.org"
SRC_URI="http://moarvm.org/releases/${MY_PN}-${PV}.tar.gz"
LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

RDEPEND="dev-libs/libuv"
DEPEND="${RDEPEND}
	dev-lang/perl"

S="${WORKDIR}/MoarVM-${PV}"

src_configure() {
	perl Configure.pl --prefix="/usr" || die
}

src_install() {
	emake DESTDIR="${ED}" install
}
