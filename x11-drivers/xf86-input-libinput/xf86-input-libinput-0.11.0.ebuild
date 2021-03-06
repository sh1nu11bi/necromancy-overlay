# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit xorg-2

DESCRIPTION="X.org input driver based on libinput"

KEYWORDS="~amd64 ~arm ~hppa ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-libs/libinput-0.14.0:0="
DEPEND="${RDEPEND}"

DOCS=( "README.md" "conf/99-libinput.conf" )

src_install(){
	xorg-2_src_install
	install -m755 -d "${D}/usr/share/X11/xorg.conf.d"
	install -m644 conf/99-libinput.conf "${D}/usr/share/X11/xorg.conf.d/"
}
