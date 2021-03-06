# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} )

DESCRIPTION="The YubiKey PIV Manager enables you to configure a PIV-enabled YubiKey through a graphical user interface."
HOMEPAGE="https://developers.yubico.com/yubikey-piv-manager/"
SRC_URI="https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-${PV}.tar.gz"

inherit distutils-r1

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
RESTRICT="mirror"
DEPEND="dev-python/pyside
        dev-python/pycrypto
        app-crypt/yubico-piv-tool"

src_install()
{
        distutils-r1_src_install || die
        domenu resources/pivman.desktop || die
        doicon resources/pivman.xpm || die
}
