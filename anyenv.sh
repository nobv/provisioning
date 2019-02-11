#!/bin/bash

ANYENV_ROOT=~/.anyenv

is_exsits() {
  which "$1" >/dev/null 2>&1
  return $?
}

if ! is_exsits "anyenv"; then
  echo "==> Installing anyenv..."
  git clone https://github.com/anyenv/anyenv ~/.anyenv
  anyenv install --force-init
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
if ! is_exsits "nodenv"; then
  anyenv install nodenv
  source ~/.zshrc

  nodenv install 10.11.0
  nodenv global 10.11.0
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
