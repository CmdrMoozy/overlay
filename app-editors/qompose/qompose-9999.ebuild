EAPI=5
inherit cmake-utils flag-o-matic

EGIT_HAS_SUBMODULES=true
inherit git-2

DESCRIPTION="A simple programmer's text editor."
EGIT_REPO_URI="https://github.com/CmdrMoozy/qompose.git"
HOMEPAGE="https://github.com/CmdrMoozy/qompose"
KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="GPL-3"
IUSE=""

CMAKE_MIN_VERSION=3.0.2

RDEPEND="dev-libs/leveldb
	app-text/hunspell
	dev-libs/libgit2
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtnetwork:5
	dev-qt/qtprintsupport:5"
DEPEND="${RDEPEND}"

src_configure() {
	append-cxxflags -std=c++1y
	cmake-utils_src_configure
}

src_install() {
	exeinto /usr/bin

	doexe ${BUILD_DIR}/src/Qompose/Qompose
}
