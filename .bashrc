# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

if [[ $OSTYPE == darwin* ]]; then
    export PATH=$PATH:/Applications/SWI-Prolog.app/Contents/MacOS # Swi prolog for mac

elif [[ $OSTYPE == linux* ]]; then
    source /usr/src/git/alacritty/alacritty-completions.bash # Alacrity bash completion

fi

test -s ~/.alias && . ~/.alias || true
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME' # Git repo to keep track of my dot files
export PS1="\\[\e[1;32m\\]\u@\h \w$\\[\e[m\\]" 
source ~/git-completion.bash # For command line git completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/home/victor/.local/bin # Some pip package are installed here


