Greybird Geeko
==============
This is a modified version of the Greybird theme with openSUSE branding elements. Greybird is the default theme in Xubuntu 11.04 onwards. The original version is to be found [here](https://github.com/shimmerproject/Greybird).

### Desktop Suite for Xfce ###
The Greybird desktop suite is a complete package for all parts of the desktop environment. It includes:
- Gtk+2 theme
- Gtk+3 theme
- Xfwm4 themes (normal and compact)
- xfce-notifyd theme (dark and bright)
- Emerald theme
- Metacity theme
- Mutter theme
- Gnome Shell theme
- Plank theme
- Unity support

Dependencies for Gtk+2 support:
- gtk2-engines-murrine (>= 0.90)

The Gtk+3 theme uses the builtin engine and consequently has no dependencies.

### Build dependencies ###
openSUSE

`zypper in autoconf automake fdupes gdk-pixbuf-devel gdk-pixbuf-loader-rsvg glib2-devel sassc`

Debian or Ubuntu:

`sudo apt install autoconf libgdk-pixbuf2.0-dev libglib2.0-bin librsvg2-dev ruby-sass sassc`

Fedora:

`dnf install gdk-pixbuf2-devel librsvg2-devel rubygem-sass`

### Install without admin privileges

```
./autogen.sh --prefix=$HOME/.local
make
make install
```

### Install for all users

```
./autogen.sh
make
sudo make install
```

### Copyright ###
Greybird is dual-licensed as GPLv2 or later and CC-BY-SA 3.0 or later.

Copyright Modification 2019 Carson Black, Maurizio Galli  
Copyright Original 2009–2017 Simon Steinbeiß, Satyajit Sahoo, Pasi Lallinaho
