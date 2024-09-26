#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
PS1='[\u@\h \W]\$ '

set -o vi

EDITOR=nvim
VISUAL=nvim
export EDITOR VISUAL
