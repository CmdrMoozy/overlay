# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit git-2

DESCRIPTION="Standards compliant, fast, secure markdown processing library in C"
HOMEPAGE="https://github.com/hoedown/hoedown"
EGIT_REPO_URI="https://github.com/hoedown/hoedown.git"
KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="BSD"
IUSE="+tools"

src_compile() {
	emake DESTDIR="${D}" || die
}

src_install() {

	# Install the command-line tools, if enabled.

	if use tools ; then
		exeinto /usr/bin

		doexe hoedown
		doexe smartypants
	fi

	# Install the shared library.

	dolib.so libhoedown.so.1 libhoedown.so

	# Install all header files into /usr/include/hoedown.

	dodir /usr/include/hoedown
	insinto /usr/include/hoedown

	doins src/*.h

}
