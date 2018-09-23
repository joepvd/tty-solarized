0=${(%):-%N}

# Retrieve theme shade config from "theme-shade" style
# in ":omz:plugins:tty-solarized" context
zstyle -s :omz:plugins:tty-solarized theme-shade _shade

# If it does not have allowed value, reset to dark
if [[ $_shade != "light" && $_shade != "dark" ]]
then
    _shade="dark"
fi

# Source the corresponding style script:
source "${0:A:h}/tty-solarized-${_shade}.sh"
