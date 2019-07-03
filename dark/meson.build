theme_path = join_paths(get_option('datadir'), 'themes/Greybird Geeko Dark')

#
# index.theme
#

install_data('index.theme', install_dir : theme_path)

#
# emerald file
#

install_data('Greybird-geeko.emerald', install_dir : theme_path)

#
# GTK+-3.0 Files
#

scss_files = files([
    'gtk-3.0/_colors-public.scss',
    'gtk-3.0/_colors.scss',
    'gtk-3.0/_common.scss',
    'gtk-3.0/_drawing.scss',
    'gtk-3.0/_gnome-apps.scss',
    'gtk-3.0/_lightdm-gtk-greeter.scss',
    'gtk-3.0/_others.scss',
    'gtk-3.0/_unity.scss',
    'gtk-3.0/_xfce.scss'
])

theme_deps += custom_target('Greybird-Geeko-Dark',
                            input: 'gtk-3.0/gtk-contained.scss',
                            output: 'gtk.css',
                            command: [
                                sassc, sassc_opts, '@INPUT@', '@OUTPUT@'
                            ],
                            depend_files: scss_files,
                            build_by_default: true,
                            install: true,
                            install_dir: join_paths(theme_path, 'gtk-3.0'))

theme_deps += custom_target('Greybird-Geeko-Dark-Dark',
                            input: 'gtk-3.0/gtk-contained-dark.scss',
                            output: 'gtk-dark.css',
                            command: [
                                sassc, sassc_opts, '@INPUT@', '@OUTPUT@'
                            ],
                            depend_files: scss_files,
                            build_by_default: true,
                            install: true,
                            install_dir: join_paths(theme_path, 'gtk-3.0'))

gtk_gresources = gnome.compile_resources('gtk', 'gtk-3.0/gtk.gresource.xml',
                                         source_dir: join_paths(meson.source_root(), 'light/gtk-3.0'),
                                         install: true,
                                         gresource_bundle: true,
                                         install_dir: join_paths(theme_path, 'gtk-3.0'))

install_data(['gtk-3.0/apps/granite-widgets.css', 'gtk-3.0/apps/lightdm-unity-greeter.css'], install_dir : join_paths(theme_path, 'gtk-3.0/apps'))

#
# GNOME Shell Files
#

install_data(['gnome-shell/gnome-shell.css'], install_dir : join_paths (theme_path, 'gnome-shell'))

#
# Metacity Files
#

metacity_files = files([
    'metacity-1/metacity-theme-3.xml',
    'metacity-1/close_focused_pressed.png',
    'metacity-1/unmaximize_focused_pressed.png',
    'metacity-1/shade_unfocused.png',
    'metacity-1/unmaximize_unfocused.png',
    'metacity-1/unmaximize_focused_prelight.png',
    'metacity-1/maximize_focused_prelight.png',
    'metacity-1/maximize_focused_pressed.png',
    'metacity-1/close_focused_prelight.png',
    'metacity-1/unshade_focused_prelight.png',
    'metacity-1/close_focused_normal.png',
    'metacity-1/unshade_unfocused.png',
    'metacity-1/minimize_unfocused.png',
    'metacity-1/metacity-theme-2.xml',
    'metacity-1/maximize_focused_normal.png',
    'metacity-1/unshade_focused_normal.png',
    'metacity-1/minimize_focused_prelight.png',
    'metacity-1/shade_focused_normal.png',
    'metacity-1/maximize_unfocused.png',
    'metacity-1/unshade_focused_pressed.png',
    'metacity-1/minimize_focused_pressed.png',
    'metacity-1/close_unfocused.png',
    'metacity-1/unmaximize_focused_normal.png',
    'metacity-1/shade_focused_pressed.png',
    'metacity-1/shade_focused_prelight.png',
    'metacity-1/minimize_focused_normal.png'
])

install_data(metacity_files, install_dir : join_paths (theme_path, 'metacity-1'))

#
# Xfce Notify 4.0 Files
#

xfce_notify_files = files([
    'xfce-notify-4.0/gtk.css',
    'xfce-notify-4.0/gtkrc'
])

install_data(xfce_notify_files, install_dir : join_paths (theme_path, 'xfce-notify-4.0'))

#
# Xfce Notify 4.0 Bright-Dateien 🥚
#

xfce_notify_bright_files = files([
    'xfce-notify-4.0_bright/gtk.css',
    'xfce-notify-4.0_bright/gtkrc'
])

install_data(xfce_notify_bright_files, install_dir : join_paths (theme_path, 'xfce-notify-4.0'))

#
# Xfwm4 Files
#

xfwm4_files = files([
    'xfwm4/base-inactive.png',
    'xfwm4/base.png',
    'xfwm4/bottom-active.xpm',
    'xfwm4/bottom-inactive.xpm',
    'xfwm4/bottom-left-active.xpm',
    'xfwm4/bottom-left-inactive.xpm',
    'xfwm4/bottom-right-active.xpm',
    'xfwm4/bottom-right-inactive.xpm',
    'xfwm4/close-active.png',
    'xfwm4/close-active.xpm',
    'xfwm4/close-inactive.png',
    'xfwm4/close-inactive.xpm',
    'xfwm4/close-prelight.png',
    'xfwm4/close-prelight.xpm',
    'xfwm4/close-pressed.png',
    'xfwm4/close-pressed.xpm',
    'xfwm4/hide-active.png',
    'xfwm4/hide-active.xpm',
    'xfwm4/hide-inactive.png',
    'xfwm4/hide-inactive.xpm',
    'xfwm4/hide-prelight.png',
    'xfwm4/hide-prelight.xpm',
    'xfwm4/hide-pressed.png',
    'xfwm4/hide-pressed.xpm',
    'xfwm4/left-active.xpm',
    'xfwm4/left-inactive.xpm',
    'xfwm4/maximize-active.png',
    'xfwm4/maximize-active.xpm',
    'xfwm4/maximize-inactive.png',
    'xfwm4/maximize-inactive.xpm',
    'xfwm4/maximize-prelight.png',
    'xfwm4/maximize-prelight.xpm',
    'xfwm4/maximize-pressed.png',
    'xfwm4/maximize-pressed.xpm',
    'xfwm4/menu-active.png',
    'xfwm4/menu-active.xpm',
    'xfwm4/menu-inactive.png',
    'xfwm4/menu-inactive.xpm',
    'xfwm4/menu-prelight.png',
    'xfwm4/menu-prelight.xpm',
    'xfwm4/menu-pressed.png',
    'xfwm4/menu-pressed.xpm',
    'xfwm4/right-active.xpm',
    'xfwm4/right-inactive.xpm',
    'xfwm4/shade-active.png',
    'xfwm4/shade-active.xpm',
    'xfwm4/shade-inactive.png',
    'xfwm4/shade-inactive.xpm',
    'xfwm4/shade-prelight.png',
    'xfwm4/shade-prelight.xpm',
    'xfwm4/shade-pressed.png',
    'xfwm4/shade-pressed.xpm',
    'xfwm4/shade-toggled-active.png',
    'xfwm4/shade-toggled-active.xpm',
    'xfwm4/shade-toggled-inactive.png',
    'xfwm4/shade-toggled-inactive.xpm',
    'xfwm4/shade-toggled-prelight.png',
    'xfwm4/shade-toggled-prelight.xpm',
    'xfwm4/shade-toggled-pressed.png',
    'xfwm4/shade-toggled-pressed.xpm',
    'xfwm4/stick-active.png',
    'xfwm4/stick-active.xpm',
    'xfwm4/stick-inactive.png',
    'xfwm4/stick-inactive.xpm',
    'xfwm4/stick-prelight.png',
    'xfwm4/stick-prelight.xpm',
    'xfwm4/stick-pressed.png',
    'xfwm4/stick-pressed.xpm',
    'xfwm4/stick-toggled-active.png',
    'xfwm4/stick-toggled-active.xpm',
    'xfwm4/stick-toggled-inactive.png',
    'xfwm4/stick-toggled-inactive.xpm',
    'xfwm4/stick-toggled-prelight.png',
    'xfwm4/stick-toggled-prelight.xpm',
    'xfwm4/stick-toggled-pressed.png',
    'xfwm4/stick-toggled-pressed.xpm',
    'xfwm4/themerc',
    'xfwm4/title-1-active.png',
    'xfwm4/title-1-active.xpm',
    'xfwm4/title-1-inactive.png',
    'xfwm4/title-1-inactive.xpm',
    'xfwm4/title-2-active.png',
    'xfwm4/title-2-active.xpm',
    'xfwm4/title-2-inactive.png',
    'xfwm4/title-2-inactive.xpm',
    'xfwm4/title-3-active.png',
    'xfwm4/title-3-active.xpm',
    'xfwm4/title-3-inactive.png',
    'xfwm4/title-3-inactive.xpm',
    'xfwm4/title-4-active.png',
    'xfwm4/title-4-active.xpm',
    'xfwm4/title-4-inactive.png',
    'xfwm4/title-4-inactive.xpm',
    'xfwm4/title-5-active.png',
    'xfwm4/title-5-active.xpm',
    'xfwm4/title-5-inactive.png',
    'xfwm4/title-5-inactive.xpm',
    'xfwm4/top-left-active.png',
    'xfwm4/top-left-active.xpm',
    'xfwm4/top-left-inactive.png',
    'xfwm4/top-left-inactive.xpm',
    'xfwm4/top-right-active.png',
    'xfwm4/top-right-active.xpm',
    'xfwm4/top-right-inactive.png',
    'xfwm4/top-right-inactive.xpm'
])

install_data(xfwm4_files, install_dir : join_paths (theme_path, 'xfwm4'))

#
# Xfwm4 A11y Files
#

xfwm4_a11y_files = files([
    'xfwm4-a11y/maximize-active.xpm',
    'xfwm4-a11y/shade-inactive.xpm',
    'xfwm4-a11y/top-left-inactive.png',
    'xfwm4-a11y/hide-pressed.png',
    'xfwm4-a11y/menu-prelight.xpm',
    'xfwm4-a11y/bottom-active.xpm',
    'xfwm4-a11y/close-inactive.png',
    'xfwm4-a11y/menu-pressed.xpm',
    'xfwm4-a11y/hide-prelight.xpm',
    'xfwm4-a11y/title-3-inactive.xpm',
    'xfwm4-a11y/close-pressed.xpm',
    'xfwm4-a11y/shade-pressed.png',
    'xfwm4-a11y/shade-pressed.xpm',
    'xfwm4-a11y/title-5-inactive.xpm',
    'xfwm4-a11y/title-2-inactive.xpm',
    'xfwm4-a11y/maximize-inactive.xpm',
    'xfwm4-a11y/maximize-pressed.xpm',
    'xfwm4-a11y/top-left-inactive.xpm',
    'xfwm4-a11y/top-left-active.xpm',
    'xfwm4-a11y/title-3-active.xpm',
    'xfwm4-a11y/title-5-active.png',
    'xfwm4-a11y/bottom-right-inactive.xpm',
    'xfwm4-a11y/top-right-active.xpm',
    'xfwm4-a11y/shade-active.png',
    'xfwm4-a11y/maximize-toggled-prelight.png',
    'xfwm4-a11y/stick-toggled-active.xpm',
    'xfwm4-a11y/stick-pressed.png',
    'xfwm4-a11y/shade-prelight.png',
    'xfwm4-a11y/menu-prelight.png',
    'xfwm4-a11y/stick-prelight.png',
    'xfwm4-a11y/shade-toggled-inactive.png',
    'xfwm4-a11y/maximize-active.png',
    'xfwm4-a11y/stick-toggled-inactive.png',
    'xfwm4-a11y/title-2-active.png',
    'xfwm4-a11y/menu-active.xpm',
    'xfwm4-a11y/hide-pressed.xpm',
    'xfwm4-a11y/stick-active.png',
    'xfwm4-a11y/menu-inactive.png',
    'xfwm4-a11y/hide-prelight.png',
    'xfwm4-a11y/close-active.xpm',
    'xfwm4-a11y/bottom-left-active.xpm',
    'xfwm4-a11y/title-3-active.png',
    'xfwm4-a11y/menu-inactive.xpm',
    'xfwm4-a11y/maximize-pressed.png',
    'xfwm4-a11y/top-right-inactive.xpm',
    'xfwm4-a11y/title-4-inactive.png',
    'xfwm4-a11y/shade-active.xpm',
    'xfwm4-a11y/close-prelight.xpm',
    'xfwm4-a11y/stick-pressed.xpm',
    'xfwm4-a11y/shade-toggled-active.xpm',
    'xfwm4-a11y/title-5-active.xpm',
    'xfwm4-a11y/bottom-left-inactive.xpm',
    'xfwm4-a11y/bottom-right-active.xpm',
    'xfwm4-a11y/menu-pressed.png',
    'xfwm4-a11y/stick-toggled-prelight.png',
    'xfwm4-a11y/hide-inactive.xpm',
    'xfwm4-a11y/stick-inactive.xpm',
    'xfwm4-a11y/right-active.xpm',
    'xfwm4-a11y/maximize-toggled-active.png',
    'xfwm4-a11y/title-2-inactive.png',
    'xfwm4-a11y/shade-toggled-prelight.xpm',
    'xfwm4-a11y/maximize-toggled-pressed.png',
    'xfwm4-a11y/title-1-active.png',
    'xfwm4-a11y/hide-active.png',
    'xfwm4-a11y/maximize-prelight.png',
    'xfwm4-a11y/left-active.xpm',
    'xfwm4-a11y/menu-active.png',
    'xfwm4-a11y/base.png',
    'xfwm4-a11y/stick-toggled-pressed.xpm',
    'xfwm4-a11y/shade-toggled-pressed.xpm',
    'xfwm4-a11y/close-prelight.png',
    'xfwm4-a11y/left-inactive.xpm',
    'xfwm4-a11y/stick-active.xpm',
    'xfwm4-a11y/shade-toggled-prelight.png',
    'xfwm4-a11y/close-inactive.xpm',
    'xfwm4-a11y/stick-toggled-active.png',
    'xfwm4-a11y/title-3-inactive.png',
    'xfwm4-a11y/maximize-toggled-inactive.png',
    'xfwm4-a11y/themerc',
    'xfwm4-a11y/hide-inactive.png',
    'xfwm4-a11y/title-5-inactive.png',
    'xfwm4-a11y/top-left-active.png',
    'xfwm4-a11y/stick-prelight.xpm',
    'xfwm4-a11y/stick-toggled-inactive.xpm',
    'xfwm4-a11y/maximize-inactive.png',
    'xfwm4-a11y/stick-inactive.png',
    'xfwm4-a11y/maximize-prelight.xpm',
    'xfwm4-a11y/title-2-active.xpm',
    'xfwm4-a11y/title-4-active.xpm',
    'xfwm4-a11y/title-1-active.xpm',
    'xfwm4-a11y/title-4-inactive.xpm',
    'xfwm4-a11y/stick-toggled-pressed.png',
    'xfwm4-a11y/close-pressed.png',
    'xfwm4-a11y/top-right-inactive.png',
    'xfwm4-a11y/title-4-active.png',
    'xfwm4-a11y/shade-toggled-pressed.png',
    'xfwm4-a11y/shade-toggled-active.png',
    'xfwm4-a11y/top-right-active.png',
    'xfwm4-a11y/hide-active.xpm',
    'xfwm4-a11y/shade-inactive.png',
    'xfwm4-a11y/base-inactive.png',
    'xfwm4-a11y/bottom-inactive.xpm',
    'xfwm4-a11y/shade-prelight.xpm',
    'xfwm4-a11y/shade-toggled-inactive.xpm',
    'xfwm4-a11y/title-1-inactive.png',
    'xfwm4-a11y/close-active.png',
    'xfwm4-a11y/stick-toggled-prelight.xpm',
    'xfwm4-a11y/right-inactive.xpm',
    'xfwm4-a11y/title-1-inactive.xpm'
])

install_data(xfwm4_a11y_files, install_dir : join_paths (theme_path, 'xfwm4-a11y'))

#
# Xfwm4 Compact Files
#

xfwm4_compact_files = files([
    'xfwm4-compact/maximize-active.xpm',
    'xfwm4-compact/shade-inactive.xpm',
    'xfwm4-compact/top-left-inactive.png',
    'xfwm4-compact/hide-pressed.png',
    'xfwm4-compact/menu-prelight.xpm',
    'xfwm4-compact/bottom-active.xpm',
    'xfwm4-compact/close-inactive.png',
    'xfwm4-compact/menu-pressed.xpm',
    'xfwm4-compact/hide-prelight.xpm',
    'xfwm4-compact/title-3-inactive.xpm',
    'xfwm4-compact/close-pressed.xpm',
    'xfwm4-compact/shade-pressed.png',
    'xfwm4-compact/shade-pressed.xpm',
    'xfwm4-compact/title-5-inactive.xpm',
    'xfwm4-compact/title-2-inactive.xpm',
    'xfwm4-compact/maximize-inactive.xpm',
    'xfwm4-compact/maximize-pressed.xpm',
    'xfwm4-compact/top-left-inactive.xpm',
    'xfwm4-compact/top-left-active.xpm',
    'xfwm4-compact/title-3-active.xpm',
    'xfwm4-compact/title-5-active.png',
    'xfwm4-compact/bottom-right-inactive.xpm',
    'xfwm4-compact/top-right-active.xpm',
    'xfwm4-compact/shade-active.png',
    'xfwm4-compact/stick-toggled-active.xpm',
    'xfwm4-compact/stick-pressed.png',
    'xfwm4-compact/shade-prelight.png',
    'xfwm4-compact/menu-prelight.png',
    'xfwm4-compact/stick-prelight.png',
    'xfwm4-compact/shade-toggled-inactive.png',
    'xfwm4-compact/maximize-active.png',
    'xfwm4-compact/stick-toggled-inactive.png',
    'xfwm4-compact/title-2-active.png',
    'xfwm4-compact/menu-active.xpm',
    'xfwm4-compact/hide-pressed.xpm',
    'xfwm4-compact/stick-active.png',
    'xfwm4-compact/menu-inactive.png',
    'xfwm4-compact/hide-prelight.png',
    'xfwm4-compact/close-active.xpm',
    'xfwm4-compact/bottom-left-active.xpm',
    'xfwm4-compact/title-3-active.png',
    'xfwm4-compact/menu-inactive.xpm',
    'xfwm4-compact/maximize-pressed.png',
    'xfwm4-compact/top-right-inactive.xpm',
    'xfwm4-compact/title-4-inactive.png',
    'xfwm4-compact/shade-active.xpm',
    'xfwm4-compact/close-prelight.xpm',
    'xfwm4-compact/stick-pressed.xpm',
    'xfwm4-compact/shade-toggled-active.xpm',
    'xfwm4-compact/title-5-active.xpm',
    'xfwm4-compact/bottom-left-inactive.xpm',
    'xfwm4-compact/bottom-right-active.xpm',
    'xfwm4-compact/menu-pressed.png',
    'xfwm4-compact/stick-toggled-prelight.png',
    'xfwm4-compact/hide-inactive.xpm',
    'xfwm4-compact/stick-inactive.xpm',
    'xfwm4-compact/right-active.xpm',
    'xfwm4-compact/base_inactive.png',
    'xfwm4-compact/title-2-inactive.png',
    'xfwm4-compact/shade-toggled-prelight.xpm',
    'xfwm4-compact/title-1-active.png',
    'xfwm4-compact/hide-active.png',
    'xfwm4-compact/maximize-prelight.png',
    'xfwm4-compact/left-active.xpm',
    'xfwm4-compact/menu-active.png',
    'xfwm4-compact/base.png',
    'xfwm4-compact/stick-toggled-pressed.xpm',
    'xfwm4-compact/shade-toggled-pressed.xpm',
    'xfwm4-compact/close-prelight.png',
    'xfwm4-compact/left-inactive.xpm',
    'xfwm4-compact/stick-active.xpm',
    'xfwm4-compact/shade-toggled-prelight.png',
    'xfwm4-compact/close-inactive.xpm',
    'xfwm4-compact/stick-toggled-active.png',
    'xfwm4-compact/title-3-inactive.png',
    'xfwm4-compact/themerc',
    'xfwm4-compact/hide-inactive.png',
    'xfwm4-compact/title-5-inactive.png',
    'xfwm4-compact/top-left-active.png',
    'xfwm4-compact/stick-prelight.xpm',
    'xfwm4-compact/stick-toggled-inactive.xpm',
    'xfwm4-compact/maximize-inactive.png',
    'xfwm4-compact/stick-inactive.png',
    'xfwm4-compact/maximize-prelight.xpm',
    'xfwm4-compact/title-2-active.xpm',
    'xfwm4-compact/title-4-active.xpm',
    'xfwm4-compact/base_active.png',
    'xfwm4-compact/title-1-active.xpm',
    'xfwm4-compact/title-4-inactive.xpm',
    'xfwm4-compact/stick-toggled-pressed.png',
    'xfwm4-compact/close-pressed.png',
    'xfwm4-compact/top-right-inactive.png',
    'xfwm4-compact/title-4-active.png',
    'xfwm4-compact/shade-toggled-pressed.png',
    'xfwm4-compact/shade-toggled-active.png',
    'xfwm4-compact/top-right-active.png',
    'xfwm4-compact/hide-active.xpm',
    'xfwm4-compact/shade-inactive.png',
    'xfwm4-compact/base-inactive.png',
    'xfwm4-compact/bottom-inactive.xpm',
    'xfwm4-compact/shade-prelight.xpm',
    'xfwm4-compact/shade-toggled-inactive.xpm',
    'xfwm4-compact/title-1-inactive.png',
    'xfwm4-compact/close-active.png',
    'xfwm4-compact/stick-toggled-prelight.xpm',
    'xfwm4-compact/right-inactive.xpm',
    'xfwm4-compact/title-1-inactive.xpm'
])

install_data(xfwm4_compact_files, install_dir : join_paths (theme_path, 'xfwm4-compact'))