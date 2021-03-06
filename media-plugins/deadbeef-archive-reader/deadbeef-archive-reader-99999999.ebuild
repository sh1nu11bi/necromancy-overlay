# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

inherit deadbeef-plugins subversion

DESCRIPTION="DeaDBeeF vfs archive reader plugin with gzip, 7z and rar support"
HOMEPAGE="https://www.assembla.com/spaces/deadbeef_vfs_archive_reader"
ESVN_REPO_URI="https://subversion.assembla.com/svn/deadbeef_vfs_archive_reader/trunk/src"

LICENSE="LGPL-2.1"
KEYWORDS=""

src_prepare() {
	epatch "${FILESDIR}/${PN}-flags.patch"
}
