# changing the start-menu icon
step 1: copy the icon you want to `/usr/local/share/pixmaps`
step 2: use `dconf` or `dconf-editor` ( from dconf-tools ) to set the value in
`org.mate.panel.menubar` of `icon` to `filename` (without extension).

# adding custom icon to logout/shutdown button to the panel in MATE
step 1: create a `.desktop` for your a shutdown application.
step 2: set the icon key to your liking.
step 3: drag and drop the application to the panel.

