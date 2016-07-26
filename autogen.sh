#!/bin/sh
set -e

test -n "$srcdir" || srcdir=$(dirname "$0")
test -n "$srcdir" || srcdir=.

olddir=$(pwd)

cd $srcdir

autoreconf --force --install --symlink --warnings=all

cd "$olddir"

if [ "$NOCONFIGURE" = "" ]; then
	$srcdir/configure "$@" || exit 1

	if [ "$1" = "--help" ]; then exit 0 else
		echo "Now type 'make' to compile $PKG_NAME" || exit 1
	fi
else
	echo "Skipping configure process."
fi
