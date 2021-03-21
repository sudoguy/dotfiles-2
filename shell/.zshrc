# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
source /opt/homebrew/share/antigen/antigen.zsh
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
if [[ -z "$VIRTUAL_ENV" ]]; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# Add poetry competion
fpath+=~/.zfunc

# aliases
alias htop='htop -d 5'
alias kube='kubectl'

antigen use oh-my-zsh

antigen bundle z
antigen bundle sudo
antigen bundle pip
antigen bundle docker
antigen bundle heroku
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle compleat
antigen bundle django
antigen bundle extract
antigen bundle golang
antigen bundle osx
antigen bundle colorize
antigen bundle yarn
antigen bundle git
antigen bundle cargo
antigen bundle kubectl
antigen bundle docker-compose

antigen bundle chrissicool/zsh-256color
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen theme robbyrussell

antigen apply

alias my_upgrade="brew upgrade && brew upgrade --cask && pipx upgrade-all && omz update"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval "$(starship init zsh)"

# ignore duplicates in history
setopt HIST_IGNORE_DUPS

# heroku autocompletion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi


export GOPATH=$HOME/go
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `userpath` on 2020-04-18 21:11:42
export PATH="$PATH:/Users/sudoguy/.local/bin"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
