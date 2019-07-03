project('Greybird-Geeko')

sassc = find_program('sassc', required: true)
sassc_opts = [ '-a', '-M', '-t', 'compact' ]

gnome = import('gnome')

theme_deps = []

subdir('light')
subdir('dark')