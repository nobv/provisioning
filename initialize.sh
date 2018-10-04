#!/bin/bash

#PLATFORM=
#HOMEBREW=
#
#readonly PROVISIONINGPATH=~/.osx-provisioning
#readonly DOTPATH=~/.dotfiles
#echo $PROVISIONINGPATH
#
#is_exsits() {
#  which "$1" >/dev/null 2>&1
#  return $?
#}
#
#os_type() {
#  uname | tr "[:upper:]" "[:lower:]"
#}
#
#os_judgment() {
#  case "$(os_type)" in
#    *'linux'*)
#      PLATFORM='linux'
#      HOMEBREW='sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"'
#      ;;
#    *'darwin'*)
#      PLATFORM='osx'
#      HOMEBREW='/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
#      ;;
#    *'bsd'*)
#      PLATFORM='bsd'
#      HOMEBREW=''
#      ;;
#    *)
#      PLATFORM='unknown'
#      HOMEBREW=''
#      ;;
#  esac
#  export PLATFORM
#}
#
#is_osx() {
#  os_judgment
#  if [ "$PLATFORM" = "osx" ]; then
#    return 0
#  else
#    return 1
#  fi
#}
#
#is_linux() {
#  os_judgment
#  if [ "$PLATFORM" = "linux" ]; then
#    return 0
#  else
#    return 1
#  fi
#}
#
#os_judgment
#
#if ! is_exsits "brew"; then
#  echo "******************************"
#  echo "Start installing Homebrew!!!"
#  echo "******************************"
#
#  $(HOMEBREW)
#  brew update
#  brew upgrade --all --cleanup
#  brew -v
#
#  echo "******************************"
#  echo "Finished!!!"
#  echo "******************************"
#
#fi

#if [ ! -d "${DOTPATH}" ]; then
#  echo "Downloading dotfiles..."
#  cd ${HOME}
#  echo ${PWD}
#  #bash -c "$(curl -L https://github.com/Nobv/dotfiles.git)"
#  git clone https://github.com/Nobv/dotfiles.git .dotfiles
#  cd .dotfiles
#  sh install.sh
#fi

