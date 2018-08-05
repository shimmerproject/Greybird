#!/bin/sh

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT="-M -t nested"

echo Generating the css...

sassc $SASSC_OPT gtk-3.0/gtk-contained.scss gtk-3.0/gtk-contained.css
sassc $SASSC_OPT gtk-3.0/gtk-contained-dark.scss gtk-3.0/gtk-contained-dark.css
