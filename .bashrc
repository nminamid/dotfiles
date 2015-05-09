##
## load configs
##
# if running bash
if [ -n "$BASH_VERSION" ]; then
    if [ -f "/etc/bash.bashrc" ]; then
	. "/etc/bash.bashrc"
    fi

    # include .bash_profiles if it exists
    if [ -f "$HOME/.bash_profile" ]; then
	. "$HOME/.bash_profile"
    fi
fi

##
## load enviroment
##
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

##
## load comilations
##

##
## load key binds, PS1
##

