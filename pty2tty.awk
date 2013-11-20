#!/usr/bin/gawk -f
# pty2tty.awk: Create solarized color scheme for TTY. 
# Usage: gawk [-v t=l[ight]] -f pty2tty.awk Xresources
# Put resulting code in your shell's startup/login file. 
# By Joep van Delft, 2013

BEGIN {
    if (t~/^[lL]+/) theme="light"
    else theme="dark"
}

/! (Common|Dark|Light) *$/ {
    flag=tolower($2)
    next
}

/^(! |)#define/ { 
    if (flag=="common" || flag==theme) {
        solar[$(NF-1)]["var"] = gensub(/[^[:xdigit:]]/,"","g",$NF)
    }
    next
}

/^\*color/ {
    solar[$2]["code"] = gensub(/[^[:digit:]]+/,"","g",$1)
    next
}

END{
    print "# Solarized theme for tty, the", theme, "version."
    print "# Based on:"
    print "#   - Solarized (http://ethanschoonover.com/solarized)"
    print "#   - Xresources from http://github.com/altercation/solarized"
    print "# Generated with pty2tty.awk by Joep van Delft"
    print "# http://github.com/joepvd/tty-solarized"
    print "if [ \"$TERM\" = \"linux\" ]; then"
    for (desc in solar) 
        printf "    echo -en \"\\e]P%X%s\" # %s\n", \
            solar[desc]["code"], \
            solar[desc]["var"], \
            desc
    print "    clear # against bg artifacts\nfi"
}
