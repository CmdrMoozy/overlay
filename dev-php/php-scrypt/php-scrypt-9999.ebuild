EAPI="5"

PHP_EXT_NAME="scrypt"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"

USE_PHP="php5-5"

inherit php-ext-source-r2 eutils git-2

KEYWORDS="~amd64 ~x86"

DESCRIPTION="PHP extension providing a wrapper to Colin Percival's scrypt implementation."
HOMEPAGE="https://github.com/DomBlack/php-scrypt"
EGIT_REPO_URI="git://github.com/DomBlack/php-scrypt.git"
LICENSE="BSD-2"
SLOT="0"
IUSE=""

DEPEND="dev-lang/php"
RDEPEND="${DEPEND}"

src_prepare() {
	php-ext-source-r2_src_prepare
}
