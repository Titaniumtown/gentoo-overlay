EAPI=7

CRATES="
Inflector-0.11.4
aho-corasick-0.7.18
ansi_term-0.11.0
ansi_term-0.12.1
arrayref-0.3.6
arrayvec-0.5.2
atty-0.2.14
autocfg-1.0.1
binary-heap-plus-0.4.1
bit-set-0.5.2
bit-vec-0.6.3
bitflags-1.2.1
blake2b_simd-0.5.11
block-buffer-0.2.0
bstr-0.2.16
byte-tools-0.2.0
byteorder-1.4.3
cc-1.0.68
cfg-if-0.1.10
cfg-if-1.0.0
chrono-0.4.19
clap-2.33.3
cloudabi-0.0.3
compare-0.1.0
constant_time_eq-0.1.5
conv-0.3.3
cpp-0.5.6
cpp_build-0.4.0
cpp_common-0.4.0
cpp_common-0.5.6
cpp_macros-0.5.6
cpp_syn-0.12.0
cpp_synmap-0.3.0
cpp_synom-0.12.0
crossbeam-channel-0.5.1
crossbeam-deque-0.8.0
crossbeam-epoch-0.9.5
crossbeam-utils-0.8.5
crossterm-0.20.0
crossterm_winapi-0.8.0
ctor-0.1.20
custom_derive-0.1.7
data-encoding-2.1.2
diff-0.1.12
digest-0.6.2
dns-lookup-1.0.5
dunce-1.0.2
either-1.6.1
env_logger-0.7.1
fake-simd-0.1.2
file_diff-1.0.0
filetime-0.2.14
fnv-1.0.7
fs_extra-1.2.0
fuchsia-cprng-0.1.1
generic-array-0.8.4
getopts-0.2.21
getrandom-0.1.16
getrandom-0.2.3
glob-0.2.11
glob-0.3.0
globset-0.4.8
half-1.7.1
heck-0.3.3
hermit-abi-0.1.19
hex-0.2.0
hostname-0.3.1
if_rust_version-1.0.0
instant-0.1.10
ioctl-sys-0.5.2
itertools-0.10.1
itertools-0.8.2
kernel32-sys-0.2.2
lazy_static-1.4.0
libc-0.2.85
locale-0.2.2
lock_api-0.4.4
log-0.4.14
lscolors-0.7.1
match_cfg-0.1.0
maybe-uninit-2.0.0
md5-0.3.8
memchr-1.0.2
memchr-2.4.0
memoffset-0.6.4
mio-0.7.7
miow-0.3.7
nix-0.13.1
nix-0.20.0
nodrop-0.1.14
ntapi-0.3.6
num-bigint-0.4.0
num-integer-0.1.44
num-traits-0.2.14
num_cpus-1.13.0
number_prefix-0.4.0
numtoa-0.1.0
once_cell-1.8.0
onig-4.3.3
onig_sys-69.1.0
ouroboros-0.9.5
ouroboros_macro-0.9.5
output_vt100-0.1.2
parking_lot-0.11.1
parking_lot_core-0.8.3
paste-0.1.18
paste-impl-0.1.18
pkg-config-0.3.19
platform-info-0.1.0
ppv-lite86-0.2.10
pretty_assertions-0.7.2
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro-hack-0.5.19
proc-macro2-1.0.27
quick-error-1.2.3
quick-error-2.0.1
quickcheck-0.9.2
quote-0.3.15
quote-1.0.9
rand-0.5.6
rand-0.7.3
rand-0.8.4
rand_chacha-0.2.2
rand_chacha-0.3.1
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.5.1
rand_core-0.6.3
rand_hc-0.2.0
rand_hc-0.3.1
rand_pcg-0.2.1
rayon-1.5.1
rayon-core-1.9.1
redox_syscall-0.1.57
redox_syscall-0.2.9
redox_termios-0.1.2
regex-1.5.4
regex-automata-0.1.10
regex-syntax-0.6.25
remove_dir_all-0.5.3
retain_mut-0.1.3
rlimit-0.4.0
rust-ini-0.13.0
same-file-1.0.6
scopeguard-1.1.0
sha1-0.6.0
sha2-0.6.0
sha3-0.6.0
signal-hook-0.3.9
signal-hook-mio-0.2.1
signal-hook-registry-1.4.0
smallvec-0.6.14
smallvec-1.6.1
socket2-0.3.19
stable_deref_trait-1.2.0
strsim-0.8.0
strum-0.20.0
strum_macros-0.20.1
syn-1.0.73
tempfile-3.2.0
term_grid-0.1.7
term_size-0.3.2
termion-1.5.6
termsize-0.1.6
textwrap-0.11.0
thiserror-1.0.26
thiserror-impl-1.0.26
time-0.1.43
typenum-1.13.0
unicode-segmentation-1.8.0
unicode-width-0.1.8
unicode-xid-0.0.4
unicode-xid-0.2.2
unindent-0.1.7
unix_socket-0.5.0
users-0.10.0
vec_map-0.8.2
version_check-0.9.3
void-1.0.2
walkdir-2.3.2
wasi-0.10.2+wasi-snapshot-preview1
wasi-0.9.0+wasi-snapshot-preview1
wild-2.0.4
winapi-0.2.8
winapi-0.3.9
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
xattr-0.2.2
"

inherit cargo flag-o-matic

DESCRIPTION="Cross-platform Rust rewrite of the GNU coreutils"
HOMEPAGE="
	https://crates.io/crates/coreutils
	https://github.com/uutils/coreutils
"
SRC_URI="
	$(cargo_crate_uris ${CRATES})
	https://github.com/${PN%%-*}/${PN##*-}/archive/refs/tags/${PV}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="Apache-2.0 BSD BSD-2 CC0-1.0 ISC MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

UU_PROGS=(
	base32 base64 basename cat cksum comm csplit cut dircolors dirname echo env
	expand factor false fmt fold hashsum head link ln mkdir mktemp mv nl numfmt
	nproc paste printenv ptx pwd readlink realpath relpath rm rmdir seq shred
	shuf sleep sum sync tee tr true truncate tsort unexpand uniq wc whoami yes
)
UU_PROGS_UNSTABLE=(
	cp expr ls more od printf sort split tail test date join df tac
)
UU_UNIX_PROGS=(
	arch chgrp chmod chown chroot du groups hostid hostname id kill
	logname mkfifo mknod nice nohup pathchk stat stdbuf timeout touch tty
	uname unlink
)
UU_UNIX_PROGS_UNSTABLE=( install )
UU_MUSL=( pinky uptime users who )  # failed to build on musl

if [ "${ELIBC}" = musl ]; then
	UU_UNIX_PROGS_UNSTABLE+=( "${UU_MUSL[@]}" )
else
	UU_UNIX_PROGS+=( "${UU_MUSL[@]}" )
fi

IUSE="
	doc -path
	${UU_PROGS[@]/#/+uu_progs_}
	${UU_PROGS_UNSTABLE[@]/#/-uu_progs_}

	${UU_UNIX_PROGS[@]/#/+uu_unix_progs_}
	${UU_UNIX_PROGS_UNSTABLE[@]/#/-uu_unix_progs_}
"

REQUIRED_USE="
	elibc_musl? ( ${UU_MUSL[@]/#/!uu_unix_progs_} )
	|| (
		${UU_PROGS[@]/#/uu_progs_}
		${UU_PROGS_UNSTABLE[@]/#/uu_progs_}

		${UU_UNIX_PROGS[@]/#/uu_unix_progs_}
		${UU_UNIX_PROGS_UNSTABLE[@]/#/uu_unix_progs_}
	)
"

BDEPEND="doc? ( dev-python/sphinx )"

S="${WORKDIR}/${P#uutils-}"

UUTILS=/opt/uutils
UU_ENABLED=()
UU_UNSTABLE_ENABLED=()

_uu_append() {
	local prefix="${1:?}" prog="${2:?}"

	if use "${prefix}_${prog}"; then
		UU_ENABLED+=( "${prog}" )
		return 0
	else
		return 1
	fi
}

src_prepare() {
	default

	local prog
	for prog in "${UU_PROGS[@]}"; do
		_uu_append uu_progs "${prog}"
	done
	for prog in "${UU_PROGS_UNSTABLE[@]}"; do
		_uu_append uu_progs "${prog}" && UU_UNSTABLE_ENABLED+=( "${prog}" )
	done

	# unix progs
	for prog in "${UU_UNIX_PROGS[@]}"; do
		_uu_append uu_unix_progs "${prog}"
	done
	for prog in "${UU_UNIX_PROGS_UNSTABLE[@]}"; do
		_uu_append uu_unix_progs "${prog}" \
			&& UU_UNSTABLE_ENABLED+=( "${prog}" )
	done

	UU_MAKE_FLAGS=(
		PROFILE=release MULTICALL=y UTILS="${UU_ENABLED[*]}" PREFIX="${UUTILS}"
	)

	filter-flags -flto*  # building fails when compiling with LTO

	use doc || {
		sed -i ./GNUmakefile \
			-e '/\/man\//d' \
			-e '/^build:/s/build-manpages//' \
		|| die
	}
}

src_compile() {
	emake "${UU_MAKE_FLAGS[@]}" build
}

src_install() {
	emake "${UU_MAKE_FLAGS[@]}" DESTDIR="${ED}" install

	local envd=(
		'UUTILS="'"${UUTILS}"'"'
		'PATH="'"${UUTILS}"'/bin"'
		'ROOTPATH="'"${UUTILS}"'/bin"'
	)
	use doc && envd+=( 'MANPATH="'"${UUTILS}"'/man"' )

	local prefix=60
	use path && prefix=40
	# original PATH seted from 50baselayout
	# if we want to use uutils insetad of coreutils
	# we need to set our path first

	printf '%s\n' "${envd[@]}" | newenvd - "${prefix}uutils"
}

pkg_postinst() {
	[ "${#UU_UNSTABLE_ENABLED[@]}" -gt 0 ] && {

		ewarn "Warning: Semi-Done utils installed: ${UU_UNSTABLE_ENABLED[*]}"

		local homepage
		while read -r homepage; do
			[ "${homepage}" ] || continue
			ewarn "see: ${homepage}#utilities"
			return
		done <<< "${HOMEPAGE}"
	}
}
