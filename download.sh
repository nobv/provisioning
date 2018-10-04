#!/bin/bash

readonly DOWNLOADSPATH=~/Downloads
readonly APPLICATIONPATH=/Applications

is_ghq_exsits() {
  ghq list | grep $1
  return $?
}

#ghq
if ! is_exsits "osx-terminal.app-colors-solarized"; then
  ghq get tomislav/osx-terminal.app-colors-solarized
fi

if ! is_exsits "ryanoasis/nerd-fonts"; then
  ghq get ryanoasis/nerd-fonts
fi

if [ ! -d ${HOME}/.zplug ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh 
fi

if [ ! -e "${APPLICATIONPATH}/Flux.app" ]; then
  curl -o ${DOWNLOADSPATH}/Flux.zip https://justgetflux.com/mac/Flux.zip
  cd ${DOWNLOADSPATH}
  unzip Flux.zip &
  wait $!
  open Flux.app
fi
