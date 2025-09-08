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
[[ -e /opt/python/bin ]] && export PATH=/opt/python/bin:$PATH

source <(fzf --zsh)
batdiff() {
    git diff --name-only --relative --diff-filter=d | xargs bat --diff
}

eval "$(starship init zsh)"
sleep 1
FETCH_FILE=~/.last_fetch
NOW=$(date +'%Y-%m-%d')
LAST=$(cat $FETCH_FILE)
if [[ $NOW != $LAST ]] ; then
    neofetch --source ~/.config/ascii/tux.txt
    echo $NOW > $FETCH_FILE
fi


