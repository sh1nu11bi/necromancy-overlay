# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="The Yubico PIV Tool allows you to configure a PIV-enabled YubiKey through a command line interface."
HOMEPAGE="https://developers.yubico.com/yubico-piv-tool/"
SRC_URI="https://developers.yubico.com/yubico-piv-tool/Releases/yubico-piv-tool-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
RESTRICT="mirror"
#DEPEND="dev-util/gtk-doc"

#inherit autotools
#flag-o-matic
