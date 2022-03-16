# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A lightweight and portable command-line YAML processor"
HOMEPAGE="https://mikefarah.gitbook.io/yq"
SRC_URI="https://github.com/mikefarah/yq/releases/download/v4.22.1/yq_linux_amd64.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

MY_P="yq_linux_amd64"
MY_BINNAME="yq"
MY_M="yq.1"

src_unpack() {
	default_src_unpack
	mkdir "${S}" || die
	mv "${MY_M}" "${S}/" || die
	mv "${MY_P}" "${S}/${MY_BINNAME}" || die
}

src_install() {
	einfo "Installing yq to ${D}"
	dobin ${MY_BINNAME}
	doman ${MY_M}
}
