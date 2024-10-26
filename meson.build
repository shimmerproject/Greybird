project('Greybird')

sassc = find_program('sassc', required: true)
if get_option('generate_sourcemaps')
    sassc_opts = [ '-a', '-m', 'inline', '-t', 'compact' ]
else
    sassc_opts = [ '-a', '-M', '-t', 'compact' ]
endif

glib_compile_resources = find_program('glib-compile-resources', required: true)

gnome = import('gnome')

theme_deps = []

if get_option('flatpak')
    if get_option('flatpak-variant') == 'light'
        subdir('light')
    elif get_option('flatpak-variant') == 'dark'
        subdir('dark')
    endif
else
    subdir('light')
    subdir('dark')
endif

if get_option('opaque-panel-light-theme')
    run_command('sed', '-i', '"s/\$opaque_panel: false;/\$opaque_panel: true;/"', 'light/gtk-3.0/_xfce.scss')
    message('Panel transparency with light theme: opaque')
else
    message('Panel transparency with light theme: semi-transparent')
endif
