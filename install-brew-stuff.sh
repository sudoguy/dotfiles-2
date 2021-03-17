#!/bin/bash

set -e
[ -z $(which brew) ] && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

[ -z $(which ansible) ] && brew install ansible
[ -z $(which zsh) ] && brew install zsh
[ -z $(which antigen) ] && brew install antigen

exit 0
