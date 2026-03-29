<h1 align="center">
<img src="io.github.kyuyrii.zordeer.svg" width="140" height="140">
  <br>
  Zordeer
</h1>

<p align="center">
  A Qt launcher for games that run via Wine/Proton, with support for the UMU launcher.
</p>

<img width="1684" height="1030" src="metainfo/zordeer_qt_style_breeze.png" />

## Some explanations
- Why does the Zordeer exist?
  - I wanted a launcher for games that run via Wine/Proton. It needed to be simple, use Qt without QML, and work on Snapd.
- Why does Zordeer create the `$HOME/App/Zordeer` folder?
  - This was done so that Zordeer files wouldn't be hidden and scattered in various locations. Zordeer also uses the App/Zordeer standard to correct the paths used, to prevent files from not being found if the user wants the App/Zordeer folder in a different location.
- Is it possible to change the location of the `App/Zordeer` folder?
  - In any version, it's possible to use the `ZORDEER_DIR` environment variable to specify a path.
  - In the Flatpak version, use the `ZORDEER_DIR_APP_ID=1` environment variable to use the `$HOME/.var/app/io.github.kyuyrii.zordeer` folder instead of the `$HOME` folder.
  - In the Snap version, the `$SNAP_USER_COMMON` folder is used when the home plug is disconnected.
- Is it possible to use the XDG Base Directory instead of the App/Zordeer folder?
  - In the Flatpak version, you can use the variable `XDG_BASE_DIRECTORY=1` to use `XDG_CONFIG_HOME` and `XDG_DATA_HOME`.
- Regarding the paths like `/run/user/1000/doc/`
  - If this is seen in the `Shortcut manager` after selecting the folders, it's not a problem; it means that Document Portal is being used.
  - If it's an installer, use the `Run in prefix` function, adding the folder where the installer is located. If that still doesn't work, grant access to the folder where the files are or copy them to a folder that Zordeer can access.
  - If it's a game, grant access to the folder where it's located; if it's in a prefix, grant access to the prefix itself. Or move it to a folder that Zordeer has access to.
