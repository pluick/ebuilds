# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A lightweight and portable command-line YAML processor"
HOMEPAGE="https://mikefarah.gitbook.io/yq"
SRC_URI="https://github.com/mikefarah/yq/releases/download/v4.22.1/yq_linux_amd64.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
}

src_compile() {
}

src_install() {
	einfo "Installing yq to ${D}"
	install yq_linux_amd64 "${D}/bin/yq"
	#install -d ${D}/man/man1
	#install -m 644 ./yq.1 "${D}/man/man1/"
	#./install-man-page.sh
}
