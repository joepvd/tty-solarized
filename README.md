# Solarized color theme for the linux TTY

A tty solarized theme using Ethan Schoonover’s [Solarized color theme](http://ethanschoonover.com/solarized).  

If you are looking for colors on your xterm, konsole, terminator, urxvt, guake, aterm and friends, please search a bit more.  This script is for setting the colors on a linux TTY, the real terminal that you get if you are not running ``X`` or ``wayland``.  

## Repositories
  * This theme as a single repository: [tty-solarized](https://github.com/joepvd/tty-solarized)
  * The main solarized repository: [solarized](https://github.com/altercation/solarized)

## Installation
Source either ``tty-solarized-dark.sh`` or ``tty-solarized-light.sh`` in the startup file of your shell.  As this is only run on TTYs where usually a login shell is started, the login file of your shell (``${ZDOTDIR:-$HOME}/.zlogin`` for zsh or ``~/.profile`` for bash).  Now the 'normal' names for colors are available to your applications.  

Included is also the awk-script used to generate those two files. Would the color scheme be changed upstream, anyone with gawk installed can update these files.  

