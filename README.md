# Solarized color theme for the linux TTY

A tty solarized theme using Ethan Schoonover’s [Solarized color scheme](http://ethanschoonover.com/solarized).

## Repositories
  * This theme as a single repository: [/joepvd/tty-solarized](https://github.com/joepvd/tty-solarized)
  * The main solarized repository: [/altercation/solarized](https://github.com/altercation/solarized)

## Installation
Source either tty-solarized-dark.sh or tty-solarized-light.sh in the startup
file of your shell.  As this is only run on TTYs where usually a login shell is
started, a the login file of your shell ($ZDOTDIR/.zlogin for zsh or ~/.profile 
for bash) could also work.  Now the 'normal' names for colors are available to your
applications.  

Included is also the awk-script used to generate those two files. Would the
color scheme be changed upstream, anyone with gawk installed can update these
files.  

