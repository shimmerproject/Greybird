# Maintainer's Guide to pulling commits from Greybird-Geeko's upstream, Greybird

## TL;DR
Check if Greybird-Geeko has any changes of its own to the modified file. If they do, copy the file from upstream while trying to preserve downstream edits. Make sure to keep the dark theme dark and the light theme light.

If there are any added files, the meson.build in the subdirectories will need to be edited to add the files to the appropriate listing.