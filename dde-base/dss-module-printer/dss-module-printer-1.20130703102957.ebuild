# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="4"

inherit fdo-mime versionator eutils

DSS="deepin-system-settings"
MY_VER="$(get_version_component_range 1)+git$(get_version_component_range 2)~7295fcb0a0"
SRC_URI="http://packages.linuxdeepin.com/deepin/pool/main/d/${DSS}/${DSS}_${MY_VER}.tar.gz"

DESCRIPTION="Deepin System Settings module for configuring printer"
HOMEPAGE="http://www.linuxdeepin.com"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dde-base/deepin-system-settings
	      app-admin/system-config-printer-gnome"
DEPEND=""
S="${WORKDIR}/${DSS}-${MY_VER}/modules/printer"

src_install() {

	insinto "/usr/share/${DSS}/modules/printer"
	doins -r ${S}/src ${S}/config.ini
	
	fperms 0755 -R /usr/share/${DSS}/modules/printer/src/

}
