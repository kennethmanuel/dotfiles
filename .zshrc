# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kenneth/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al'
alias grep='grep --color=auto'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias sudo='sudo '
alias vim='nvim'
alias code='vscodium'
alias lg='lazygit'

# prime tmux sessionizer
export PATH=$PATH:~/.config/tmux/bin
bindkey -s ^f "tmux-sessionizer\n"

# Prompt
# Require starship
eval "$(starship init zsh)"

# Use neovim as manpager
export MANPAGER='nvim +Man!'
