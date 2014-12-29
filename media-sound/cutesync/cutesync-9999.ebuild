EAPI=5
inherit git-2

DESCRIPTION="A simple application for syncing media devices."
EGIT_REPO_URI="https://github.com/CmdrMoozy/cutesync.git"
HOMEPAGE="https://github.com/CmdrMoozy/cutesync"
KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="GPL-3"
IUSE=""

RDEPEND=">=dev-util/cmake-2.8.9
	dev-libs/glib
	x11-libs/gdk-pixbuf
	>=media-libs/libgpod-0.8.3
	>=dev-qt/qtcore-5.4.0
	>=dev-qt/qtgui-5.4.0
	>=dev-qt/qtwidgets-5.4.0
	>=dev-qt/qtnetwork-5.4.0"

DEPEND="${RDEPEND}"

src_compile() {
	
	${S}/release.sh || die
	
}

src_install() {
	
	exeinto /usr/bin
	
	doexe build/CuteSync
	
}
