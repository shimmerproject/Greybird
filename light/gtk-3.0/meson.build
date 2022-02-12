gtk3_dir = join_paths(theme_path, 'gtk-3.0')

# theme sources .scss files

# The files that need to be compiled
gtk3_scss_sources = [
  'gtk',
  'gtk-dark'
]

# Dependencies of the files that need to be compiled
gtk3_scss_dependencies = [
  '_colors-public.scss',
  '_colors.scss',
  '_common.scss',
  '_drawing.scss',
  '_gnome-apps.scss',
  '_lightdm-gtk-greeter.scss',
  '_others.scss',
  '_unity.scss',
  '_xfce.scss',
  '_libhandy.scss'
]

# Generate .css files and install
gtk3_scss_dependencies = files(gtk3_scss_dependencies)
#
foreach f : gtk3_scss_sources
    custom_target('greybird-generate_' + f,
        input: f + '.scss',
        output: f + '.css',
        depend_files: gtk3_scss_dependencies,
        command: [sassc, '-M', '-t', 'compact', '@INPUT@', '@OUTPUT@'],
        build_by_default: true,
        install: true,
        install_dir: gtk3_dir,
    )
endforeach

# Install asset files to themes/ThemeName/gtk-3.0/assets
install_subdir('assets', install_dir : gtk3_dir, strip_directory : false)