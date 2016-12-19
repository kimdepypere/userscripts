#
# ~/.bashrc
#

# This is a clean bashrc file, generated by KDP in userscripts
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:~/userscripts/execscripts
export PATH=$PATH:~/userscripts/execscripts/sync
