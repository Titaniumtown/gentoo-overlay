# Copyright 1999-2020 Go Overlay Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGIT_REPO_URI="https://github.com/zyedidia/${PN}.git"

inherit desktop git-r3 go-module xdg-utils

DESCRIPTION="A modern and intuitive terminal-based text editor"
HOMEPAGE="https://micro-editor.github.io https://github.com/zyedidia/micro"


LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="wayland debug"

RDEPEND="|| (
	!wayland? (
		x11-misc/xsel
		x11-misc/xclip
	)
	wayland? ( gui-apps/wl-clipboard )
)"

DOCS=( "${S}"/runtime/help/ )

src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}

src_compile() {
	GOVARS="-X github.com/zyedidia/micro/v2/internal/util.Version=${PV}
		-X github.com/zyedidia/micro/v2/internal/util.CommitHash=${PV}
		-X github.com/zyedidia/micro/v2/internal/util.CompileDate=$(date +%F)
		$(usex debug '-X github.com/zyedidia/micro/v2/internal/util.Debug=ON' '' '' '')"
	go build -ldflags "-s -w -${GOVARS}" ./cmd/micro || die "build failed"
}

src_test() {
	emake test || die
}

src_install() {
	dobin micro
	doman assets/packaging/micro.1
	newicon -s scalable assets/micro-logo.svg micro.svg
	newicon assets/micro-logo.svg micro.svg
	domenu assets/packaging/micro.desktop
}
