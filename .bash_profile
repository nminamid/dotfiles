# base-files version 3.7-1

# To pick up the latest recommended .bashrc content,
# look in /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benificial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file


# Shell Options
# #############

# See man bash for more options...

# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
# set -o ignoreeof

# Use case-insensitive filename globbing
# shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk
# shopt -s histappend

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell


# Completion options
# ##################

# These completion tuning parameters change the default behavior of bash_completion:

# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1

# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1

# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1

# If this shell is interactive, turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# case $- in
#   *i*) [[ -f /etc/bash_completion ]] && . /etc/bash_completion ;;
# esac


# History Options
# ###############

# Don't put duplicate lines in the history.
# export HISTCONTROL="ignoredups"

# Ignore some controlling instructions
export HISTIGNORE="[   ]*:&:bg:fg:exit:ls:..:...:....:....."

# Whenever displaying the prompt, write the previous line to disk
export PROMPT_COMMAND="history -a"


# Aliases
# #######

# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'

# Default to human readable figures
# alias df='df -h'
# alias du='du -h'

# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour

# directory definitions
MYDIR='c:/usr'
USERNAME=naoki
ENVFILE=.bash_profile
PROGRAM_FILES='/cygdrive/c/Program\ Files'

# Some shortcuts for different directory listings
alias ls='ls -hAF --color=tty --show-control-char'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #

#alias ipconfig="$SYSTEM/ipconfig.exe"
#alias ifconfig=ipconfig
#alias start="$SYSTEM/CMD.exe /c start"
alias start=cygstart
alias TAIL='/bin/tail'
#alias tree='cygtree'
alias tree='tree -N'
alias make='make -j4'
#alias rebuild='/usr/bin/make clean ; /usr/bin/make'
alias rev='head .svn/entries'

alias explorer='/cygdrive/c/WINDOWS/explorer'
alias avesta="$PROGRAM_FILES/avesta/bin/avesta.exe"
alias open='explorer'
alias sakura="$PROGRAM_FILES/sakura/sakura.exe"
alias tpad="$PROGRAM_FILES/tpad090/TeraPad.exe"
alias emedit="$PROGRAM_FILES/EmEditor/EmEditor.exe"

alias pd=pushd
alias bd=popd
alias hist='history 40 | grep -v hist'
alias more=less

alias mkdir='mkdir -v'
alias md='mkdir -pv'
alias rmdir='rmdir -v'
alias rd='rmdir -v'

# cd 
alias ..='cd ..'
alias ...='cd ../..'

# for tools
alias add_yymmdd='add_yymmdd.pl'
alias add_yymmdd_hhmm='add_yymmdd_hhmm.pl'
alias add_date='add_yymmdd'
alias add_time='add_yymmdd_hhmm'

# about env file command
alias printenv='printenv; cat $HOME/$ENVFILE'
alias editenv='vi $HOME/$ENVFILE'
alias installenv='source $HOME/$ENVFILE'

# Functions
# #########

# Some example functions
# function settitle() { echo -ne "\e]2;$@\a\e]1;$@\a"; }

# edit this file
#function editenv()
#{
#	pd ~
#	tpad ./$ENVFILE &
#	bd
#}
FCEDIT='vim'

# console
# #########
PS1="[\u:\w](\!)# "
set -o vi
EDITOR=vi

# extra profile
# ##############
source ~/.favorite.sh

