#!/bin/bash

ANYENV_ROOT=~/.anyenv

is_exsits() {
  which "$1" >/dev/null 2>&1
  return $?
}

if ! is_exsits "anyenv"; then
  echo "==> Installing anyenv..."
  git clone https://github.com/riywo/anyenv ~/.anyenv
  source ~/.zshrc
  echo "anyenv"
fi

# anyenv
if [ ! -d ${ANYENV_ROOT}/plugins ]; then
  mkdir -p ${ANYENV_ROOT}/plugins
  git clone https://github.com/znz/anyenv-update.git ${ANYENV_ROOT}/plugins/anyenv-update
  git clone https://github.com/znz/anyenv-git.git ${ANYENV_ROOT}/plugins/anyenv-git
fi

# node
if ! is_exsits "ndenv"; then
  anyenv install ndenv
  source ~/.zshrc
  ndenv install v10.11.0
  ndenv global v10.11.0
  echo "node -v"
  node -v
  echo "npm -v"
  npm -v
fi

# go
if ! is_exsits "goenv"; then
  anyenv install goenv
  source ~/.zshrc
  goenv install 1.11.1
  goenv global 1.11.1
  goenv rehash
  echo "go version"
  go version
fi
