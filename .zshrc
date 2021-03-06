export PATH=$HOME/bin:$PATH

export ZSH=$HOME/.oh-my-zsh

if [[ -z "$DISPLAY" ]]; then

    ZSH_THEME="pygmalion"
    plugins=(git ssh-agent zsh-autosuggestions)

else

    ZSH_THEME="avit"
    export ZSH_TMUX_AUTOSTART=true
    export ZSH_TMUX_AUTOCONNECT=false
    plugins=(git ssh-agent gpg-agent zsh-autosuggestions tmux)

fi

source $ZSH/oh-my-zsh.sh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=5"

alias la="ls -lahtr"

export EDITOR=vim
