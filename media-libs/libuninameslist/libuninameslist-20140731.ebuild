# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Library of unicode annotation data"
HOMEPAGE="https://github.com/fontforge/libuninameslist"
SRC_URI="https://github.com/fontforge/${PN}/archive/0.4.${PV}.tar.gz -> ${PN}-0.4.${PV}.tar.gz"

S="${WORKDIR}/${PN}-0.4.${PV}"

inherit autotools-multilib

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-solaris"
IUSE="static-libs"

src_prepare(){
	eautoreconf
}

multilib_src_configure(){
	local myeconfargs=(
		$(use_enable static-libs static)
	)
	autotools-utils_src_configure
}
