# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit autotools

DESCRIPTION="NATSPEC library is intended to smooth national specificities in using of program"
HOMEPAGE="http://natspec.sourceforge.net/"
SRC_URI="mirror://sourceforge/natspec/lib${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc python"

RDEPEND="python? ( >=dev-lang/python-2.3 )"
DEPEND="dev-libs/popt
	doc? ( app-doc/doxygen )
	python? ( dev-lang/tcl )
	${RDEPEND}"

S=${WORKDIR}/lib${P}

src_prepare() {
	eautoreconf
}

src_configure() {
	use doc || export ac_cv_prog_DOX=no
	local myconf=""
	# braindead configure script does not disable python on --without-python
	use python && myconf="$(use_with python)"
	econf ${myconf} || die "econf failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc ChangeLog NEWS README* TODO || die "dodoc failed"
}
