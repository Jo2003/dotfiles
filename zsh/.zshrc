# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/joergn/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
[[ -e ~/bin ]] && export PATH=~/bin:$PATH
[[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases

source <(fzf --zsh)
eval "$(starship init zsh)"
neofetch --source ~/.config/ascii/tux.txt

