# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="A library which can read Excel (xls) files"
HOMEPAGE="http://libxls.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.zip"

LICENSE="GPL-2 LGPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="virtual/libintl
	!app-text/catdoc"

DEPEND="${RDEPEND}
	virtual/pkgconfig
	app-arch/unzip"

src_configure() {
	cd ${PN}
	econf
}

src_install() {
	cd ${PN}
	emake DESTDIR="${D}" install || die
	find "${D}" -name '*.la' -delete
}

