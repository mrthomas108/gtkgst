#!/bin/sh
# Run this to generate all the initial makefiles, etc.

test -n "$srcdir" || srcdir=`dirname "$0"`
test -n "$srcdir" || srcdir=.

olddir=`pwd`

cd $srcdir
PROJECT=GtkGstWidget
TEST_TYPE=-f
FILE=src/gtkgstwidget.h

test $TEST_TYPE $FILE || {
	echo "You must run this script in the top-level $PROJECT directory"
	exit 1
}

AUTORECONF=`which autoreconf`
if test -z $AUTORECONF; then
        echo "*** No autoreconf found, please install it ***"
        exit 1
fi

GTKDOCIZE=`which gtkdocize`
if test -z $GTKDOCIZE; then
        echo "*** No GTK-Doc found, please install it ***"
        exit 1
fi

CONFIGURE_DEF_OPT='--enable-gtk-doc'

# NOCONFIGURE is used by gnome-common
if test -z "$NOCONFIGURE"; then
        if test -z "$*"; then
                echo "I am going to run configure as ./configure \"$CONFIGURE_DEF_OPT\""
		echo "If you wish to pass any extra arguments to it, please "
                echo "specify them on the $0 command line."
        fi
fi

rm -rf autom4te.cache

gtkdocize || exit $?
autoreconf --force --install --verbose || exit $?

cd "$olddir"
test -n "$NOCONFIGURE" || "$srcdir/configure" $CONFIGURE_DEF_OPT "$@"
