#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

eval "$(starship init bash)"
