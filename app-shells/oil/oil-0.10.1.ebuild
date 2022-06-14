# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A new Unix shell"
HOMEPAGE="https://www.oilshell.org"
SRC_URI="http://www.oilshell.org/download/oil-0.10.1.tar.xz"

#TODO double check licenses
LICENSE="Apache-2.0 PSF2 yajl"
SLOT="0"
KEYWORDS="amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	#if releasing, add use for with/without readline
	#$(use_with readline)
	econf --with-readline
}

src_compile() {
	einfo "Building oil"
	emake
}

src_install() {
	einfo "Installing oil to ${D}"
	emake DESTDIR="${D}" install
}
