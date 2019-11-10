#!/bin/bash

ANYENV_ROOT=~/.anyenv

is_exsists() {
  which "$1" >/dev/null 2>&1
  return $?
}

if ! is_exsists "anyenv"; then
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
if ! is_exsists "nodenv"; then
  anyenv install nodenv
  source ~/.zshrc

  nodenv install 13.1.0
  nodenv global 13.1.0
  echo "node -v"
  node -v
  echo "npm -v"
  npm -v
fi

# go
if ! is_exsists "goenv"; then
  anyenv install goenv
  source ~/.zshrc

  goenv install 1.13.1
  goenv global 1.13.1
  goenv rehash
  echo "go version"
  go version
fi

# scala
if ! is_exsists "scalaenv"; then
    anyenv install scalaenv
    source ~/.zshrc

    scalaenv install scala-2.12.8
    scalaenv global scala-2.12.8
    echo "scala version"
    scala -version
fi

# sbtenv
# todo
