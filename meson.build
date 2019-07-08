project('Greybird-Geeko')

sassc = find_program('sassc', required: true)
if get_option('generate_sourcemaps')
    sassc_opts = [ '-a', '-m', 'inline', '-t', 'compact' ]
else
    sassc_opts = [ '-a', '-M', '-t', 'compact' ]
endif

gnome = import('gnome')

theme_deps = []

subdir('light')
subdir('dark')