gtk4_dir = join_paths(theme_path, 'gtk-4.0')

scss_files = files([
    '_colors-public.scss',
    '_colors.scss',
    '_common.scss',
    '_drawing.scss'
])

#
#   Installing
#

install_subdir('assets', install_dir: gtk4_dir)
install_subdir('apps', install_dir: gtk4_dir)

theme_deps += custom_target('Greybird-Dark',
                            input: 'gtk-contained.scss',
                            output: 'gtk.css',
                            command: [
                                sassc, sassc_opts, '@INPUT@', '@OUTPUT@'
                            ],
                            depend_files: scss_files,
                            build_by_default: true,
                            install: true,
                            install_dir: gtk4_dir)

theme_deps += custom_target('Greybird-Dark-Dark',
                            input: 'gtk-contained-dark.scss',
                            output: 'gtk-dark.css',
                            command: [
                                sassc, sassc_opts, '@INPUT@', '@OUTPUT@'
                            ],
                            depend_files: scss_files,
                            build_by_default: true,
                            install: true,
                            install_dir: gtk4_dir)

# we're commenting this out because of a meson bug in the version found in Leap
#gtk_dark_gresources = gnome.compile_resources('gtk', 'gtk.gresource.xml',
#                                              source_dir: join_paths(meson.source_root(), 'light/gtk-3.0'),
#                                              install: true,
#                                              gresource_bundle: true,
#                                              install_dir: gtk4_dir)

gtk_dark_gresources = custom_target('gtk-dark-gresources',
                                    input: 'gtk.gresource.xml',
                                    output: 'gtk.gresource',
                                    command: [
                                        glib_compile_resources, '@INPUT@', '--target', '@OUTPUT@', '--sourcedir', meson.current_source_dir()
                                    ],
                                    build_by_default: true,
                                    install: true,
                                    install_dir: gtk4_dir)
