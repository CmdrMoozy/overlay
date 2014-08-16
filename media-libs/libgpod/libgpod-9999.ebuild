# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/libgpod/libgpod-0.7.2.ebuild,v 1.11 2009/12/08 01:44:32 jer Exp $

EAPI=5
inherit autotools eutils

EGIT_REPO_URI="git://gtkpod.git.sourceforge.net/gitroot/gtkpod/libgpod"
inherit git-2
SRC_URI=""

DESCRIPTION="Shared library to access the contents of an iPod"
HOMEPAGE="http://www.gtkpod.org/libgpod.html"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+gtk python test"

RDEPEND=">=app-pda/libplist-1.0
	>=dev-libs/glib-2.16
	>=dev-util/gtk-doc-1.11
	sys-apps/sg3_utils
	dev-libs/libxml2
	gtk? ( >=x11-libs/gtk+-2.6 )
	python? ( >=dev-lang/python-2.3
		>=media-libs/mutagen-1.8
		>=dev-python/pygobject-2.8 )
	test? ( media-libs/taglib )"
DEPEND="${RDEPEND}
	python? ( >=dev-lang/swig-1.3.24 )
	dev-util/pkgconfig
	dev-libs/libxslt"

src_prepare() {
	./autogen.sh
	eautoreconf
}

src_configure() {
	econf \
		$(use_with hal) \
		$(use_enable gtk gdk-pixbuf) \
		$(use_enable python pygobject) \
		$(use_with python)
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc README TROUBLESHOOTING AUTHORS NEWS README.SysInfo
}
