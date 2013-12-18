# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit eutils

DESCRIPTION="It backs things up based on the git packfile format"
HOMEPAGE="http://github.com/bup/bup"
SRC_URI="http://github.com/bup/bup/archive/${PV/_/-}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+acl +attr +doc +fuse +parity"

DEPEND=">=dev-lang/python-2.4
		>=dev-vcs/git-1.5.3.1
		attr? ( dev-python/pyxattr )
		acl? ( dev-python/pylibacl )
		fuse? ( dev-python/fuse-python )
		doc? ( app-text/pandoc )
		parity? ( app-arch/par2cmdline )"

RDEPEND="${DEPEND}"

DOCS="README CODINGSTYLE DESIGN"
S=${WORKDIR}/${PN}

src_unpack() {
  unpack "${A}"
  mv ${PN}-* "${S}"
}

src_configure() {
  true
}
