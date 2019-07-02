scss_files = files([
    'gtk-3.0/_colors-public.scss',
    'gtk-3.0/_colors.scss',
    'gtk-3.0/_common.scss',
    'gtk-3.0/_drawing.scss',
    'gtk-3.0/_gnome-apps.scss',
    'gtk-3.0/_lightdm-gtk-greeter.scss',
    'gtk-3.0/_others.scs',
    'gtk-3.0/_unity.scss',
    'gtk-3.0/_xfce.scss'
])

theme_deps += custom_target('Greybird-Geeko-Light',
                            input: 'gtk-3.0/gtk-contained.scss',
                            output: 'gtk-3.0/gtk-contained.css',
                            command: [
                                sassc, sassc_opts, '@INPUT@', '@OUTPUT'
                            ],
                            depend_files: scss_files,
                            build_by_default: true)

theme_deps += custom_target('Greybird-Geeko-Light-Dark',
                            input: 'gtk-3.0/gtk-dark-contained.scss',
                            output: 'gtk-3.0/gtk-dark-contained.css',
                            command: [
                                sassc, sassc_opts, '@INPUT@', '@OUTPUT'
                            ],
                            depend_files: scss_files,
                            build_by_default: true)