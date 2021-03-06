# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$ Necrose99 Proxymaintier
EAPI=6

inherit qmake-utils versionator eutils

MY_P="${PN}-$(replace_version_separator 3 '-')"
MIN_PV="$(get_version_component_range 1-3)"

DESCRIPTION="Qt5 frontend for fsarchiver forked into qt5 flavor"
HOMEPAGE="http://qt4-fsarchiver.sourceforge.net/"

SRC_URI="mirror://sourceforge/qt4-fsarchiver/${PN}/source/${MY_P}.tar.gz"
		
	KEYWORDS="amd64 arm hppa ~mips ppc ppc64 x86"


LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

CDEPEND="app-arch/bzip2
	app-arch/xz-utils
	dev-libs/libgcrypt:=
	dev-libs/lzo
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	sys-apps/util-linux
	sys-fs/e2fsprogs
	sys-libs/zlib"
RDEPEND="${CDEPEND}
	>=app-backup/fsarchiver-${MIN_PV}[lzma,lzo]"
DEPEND="${CDEPEND}"

S="${WORKDIR}/${PN}"


src_prepare() {
#use our custom fixes , to replace with Epatch however this will do for testing. 
#and I am none to fond of sed partly due to it being quite obscure.
src_prepare() {
	# fix .desktop file
src_prepare() {
	# fix .desktop file/s
for i in starter/*.desktop ; do sed -i 
			\ -e '/Encoding/d' starter/"*.desktop \
		|| die "sed on qt5-fsarchiver.desktop failed"
	# fix icon installation location
	
	# fix icon installation location
	sed -i \
		-e "/icon.path/s:app-install/icons:${PN}:" "${PN}.pro" \
		|| die "sed on ${PN}.pro failed"
}



src_configure() {
	eqmake
}

src_install() {
	emake INSTALL_ROOT="${D}" install
	einstalldocs
}

pkg_postinst() {
	elog "The following packages may be installed to provide optional features/file system support & or Samba NFS etc: for network"
	optfeature "btrfs-progs" sys-fs/btrfs-progs 
	optfeature "jfsutils" sys-fs/jfsutils"
	optfeature "ntfs3g" sys-fs/ntfs3g[ntfsprogs]"
	optfeature "reiser4progs"  sys-fs/reiser4progs"
	optfeature "reiserprogs" sys-fs/reiserfsprogs"
	optfeature "sshfs-fuse" sys-fs/sshfs-fuse"
	optfeature "sys-fs/xfsprogs"  sys-fs/xfsprogs"
}

