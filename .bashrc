#
# ~/.bashrc for pbraga
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi
# >>> Added by cnchi installer. edited by prb
BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/vim

set RANGER_LOAD_DEFAULT_RC = FALSE # stop loading of both default and my rc.conf

# enable git command completion
source ~/git-completion.bash

alias resource='source ~/.bashrc'

alias vi=vim		# use vim instead of vi
alias ll='ls -la'	# long listing format

