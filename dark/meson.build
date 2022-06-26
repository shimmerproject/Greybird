theme_path = join_paths(get_option('datadir'), 'themes/Greybird-dark')
a11y_theme_path = join_paths(get_option('datadir'), 'themes/Greybird-dark-accessibility')
compact_theme_path = join_paths(get_option('datadir'), 'themes/Greybird-dark-compact')

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

#
#   Installing
#

# index.theme, always install this
install_data('index.theme', install_dir : theme_path)

# gtk3 stuff, also always install this
install_subdir('gtk-3.0/assets', install_dir: theme_path / 'gtk-3.0')
install_subdir('gtk-3.0/apps', install_dir: theme_path / 'gtk-3.0')
install_data('gtk-3.0/settings.ini', install_dir : join_paths(theme_path, 'gtk-3.0'))

theme_deps += custom_target('Greybird-Dark',
                            input: 'gtk-3.0/gtk-contained.scss',
                            output: 'gtk.css',
                            command: [
                                sassc, sassc_opts, '@INPUT@', '@OUTPUT@'
                            ],
                            depend_files: scss_files,
                            build_by_default: true,
                            install: true,
                            install_dir: join_paths(theme_path, 'gtk-3.0'))

theme_deps += custom_target('Greybird-Dark-Dark',
                            input: 'gtk-3.0/gtk-contained-dark.scss',
                            output: 'gtk-dark.css',
                            command: [
                                sassc, sassc_opts, '@INPUT@', '@OUTPUT@'
                            ],
                            depend_files: scss_files,
                            build_by_default: true,
                            install: true,
                            install_dir: join_paths(theme_path, 'gtk-3.0'))

# we're commenting this out because of a meson bug in the version found in Leap
#gtk_dark_gresources = gnome.compile_resources('gtk', 'gtk-3.0/gtk.gresource.xml',
#                                              source_dir: join_paths(meson.source_root(), 'light/gtk-3.0'),
#                                              install: true,
#                                              gresource_bundle: true,
#                                              install_dir: join_paths(theme_path, 'gtk-3.0'))

gtk_dark_gresources = custom_target('gtk-dark-gresources',
                                    input: 'gtk-3.0/gtk.gresource.xml',
                                    output: 'gtk.gresource',
                                    command: [
                                        glib_compile_resources, '@INPUT@', '--target', '@OUTPUT@', '--sourcedir', join_paths(meson.current_source_dir(), 'gtk-3.0')
                                    ],
                                    build_by_default: true,
                                    install: true,
                                    install_dir: join_paths(theme_path, 'gtk-3.0'))

# we don't want to install these in the flatpak
if not get_option('flatpak')
    install_data('Greybird.emerald', rename: 'Greybird-dark.emerald', install_dir : theme_path)
    install_subdir('gtk-2.0', install_dir : theme_path)
    install_subdir('gnome-shell', install_dir : theme_path)
    install_subdir('metacity-1', install_dir : theme_path)
    install_subdir('openbox-3', install_dir : theme_path)
    install_subdir('xfwm4', install_dir : theme_path)
    install_subdir('plank', install_dir : theme_path)
    install_subdir('unity', install_dir : theme_path)
    install_subdir('variants/a11y/xfwm4', install_dir : a11y_theme_path)
endif
