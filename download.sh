#!/bin/bash

readonly PROVISIONINGPATH=~/.osx-provisioning
readonly DOTPATH=~/.dotfiles

is_exsits() {
  which "$1" >/dev/null 2>&1
  return $?
}


if ! is_exsits "brew"; then
  echo "******************************"
  echo "Start installing Homebrew!!!"
  echo "******************************"
  
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  
  brew update
  brew upgrade --all --cleanup
  brew -v

  echo "******************************"
  echo "Finished!!!"
  echo "******************************"

fi

if [ ! -d "${PROVISIONINGPATH}" ]; then
  echo "******************************"
  echo "Start installing osx-provisioning.git!!!"
  echo "******************************"
  git clone https://github.com/Nobv/osx-provisioning.git 
  echo "******************************"
  echo "Finished!!!"
  echo "******************************"
fi

if [ ! -d "${DOTPATH}" ]; then
  echo "Downloading dotfiles..."
  cd ${HOME}
  echo ${PWD}
  #bash -c "$(curl -L https://github.com/Nobv/dotfiles.git)"
  git clone https://github.com/Nobv/dotfiles.git .dotfiles
  cd .dotfiles
  sh install.sh
fi

# TODO
# https://justgetflux.com/dlmac.html
# tar
# move to Application
