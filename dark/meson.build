theme_path = join_paths(get_option('datadir'), 'themes/Greybird-dark')
a11y_theme_path = join_paths(get_option('datadir'), 'themes/Greybird-dark-accessibility')
compact_theme_path = join_paths(get_option('datadir'), 'themes/Greybird-dark-compact')

install_data('index.theme', install_dir : theme_path)

subdir('gtk-3.0')
subdir('gtk-4.0')

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
