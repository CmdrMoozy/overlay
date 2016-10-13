# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=(python{3_4,3_5})
inherit git-2 distutils-r1

DESCRIPTION="The Python binding for hoedown, a markdown parsing library"
HOMEPAGE="https://github.com/hhatto/python-hoedown"
EGIT_REPO_URI="https://github.com/hhatto/python-hoedown.git"
KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="BSD"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	=dev-libs/hoedown-9999
"

S="${WORKDIR}/${MY_P}"
