Greybird
=======
Desktop Suite for Xfce
----------------------
URL: https://github.com/shimmerproject/Greybird

Copyright 2009–2017 Simon Steinbeiß, Satyajit Sahoo, Pasi Lallinaho

Greybird is dual-licensed as GPLv2 or later and CC-BY-SA 3.0 or later.

Greybird is the default theme in Xubuntu 11.04 onwards.

The Greybird desktop suite includes:
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
Debian or Ubuntu:

`sudo apt install libgdk-pixbuf2.0-dev libglib2.0-bin librsvg2-dev ruby-sass`sassc

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
