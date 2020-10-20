# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit git-r3

DESCRIPTION="Servo, the Parallel Browser Engine Project"
HOMEPAGE="https://servo.org"
EGIT_REPO_URI="https://github.com/servo/servo.git"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="net-misc/curl media-libs/freeglut media-libs/freetype media-libs/mesa dev-util/gperf dev-python/virtualenv dev-python/pip dev-libs/openssl x11-libs/libXmu media-libs/glu x11-base/xorg-server dev-python/virtualenv dev-python/pip"
RDEPEND="${DEPEND}"

S=${WORKDIR}

src_compile() {
	cd "servo-9999"
	#python3 ./mach build --release
	cargo build --release
}

src_install() {
	insinto /opt
	doins -r servo
	fperms 755 /opt/servo/servo
	make_wrapper servo "/opt/servo/servo" || die
}
