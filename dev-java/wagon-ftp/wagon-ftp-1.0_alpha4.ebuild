# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit java-pkg wagon

DESCRIPTION=""
# svn co http://svn.apache.org/repos/asf/maven/wagon/tags/wagon-1.0-alpha-4/wagon-providers/wagon-ftp/ wagon-ftp-1.0-alpha-4

SLOT="1"
KEYWORDS="~x86"
IUSE="doc jikes"

RDEPEND="=dev-java/wagon-provider-api-1*
	dev-java/commons-net"

src_unpack() {
	wagon_src_unpack
	mkdir -p ${S}/lib
	cd ${S}/lib
	java-pkg_jar-from wagon-provider-api-1
	java-pkg_jar-from commons-net
}
