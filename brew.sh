#!/bin/bash

message () {
  printf "\n\033[1m\033[34m%s\033[0m\n\n" "==> ${1}"
}

message "install brew apps!!"

#brew update

is_exsits () {
  which "$1" >/dev/null 2>&1
  return $?
}

#echo "******************************"
#echo "Start installing bash!!!"
#echo "******************************"
#brew install bash

#echo "******************************"
#echo "Finished!!!"
#echo "******************************"

if [ ${SHELL} != "/usr/local/bin/zsh" ]; then
  message "Installing zsh...""
  brew install zsh
  zsh --version

  sudo vi /etc/shells
  # /usr/local/bin/zshを追記
  chsh -s /usr/local/bin/zsh
  echo $SHELL
fi

if ! is_exsits "git"; then
  echo "******************************"
  echo "Start installing git!!!"
  echo "******************************"
  brew install git
  git --version
  echo "******************************"
  echo "Finished!!!"
  echo "******************************"
fi

if ! is_exsits "ansible"; then
  echo "******************************"
  echo "Start installing ansible!!!"
  echo "******************************"
  brew install ansible
  ansible --version
  echo "******************************"
  echo "Finished!!!"
  echo "******************************"
fi

if ! is_exsits "mas"; then
  echo "******************************"
  echo "Start installing mas!!!"
  echo "******************************"
  brew install mas
  mas version
  echo "******************************"
  echo "Finished!!!"
  echo "******************************"
fi

if ! is_exsits "go"; then
  echo "******************************"
  echo "Start installing Golang!!!"
  echo "******************************"
  brew install go
  go version
  echo "******************************"
  echo "Finished!!!"
  echo "******************************"
fi

if ! is_exsits "erl"; then
  echo "******************************"
  echo "Start installing Erlang!!!"1
  echo "******************************"
  brew install erlang
  erl -version
  echo "******************************"
  echo "Finished!!!"
  echo "******************************"
fi

if ! is_exsits "tmux"; then
  echo "******************************"
  echo "Start installing tmux!!!"
  echo "******************************"
  brew install tmux
  tmux -V
  echo "******************************"
  echo "Finished!!!"
  echo "******************************"
fi

if ! is_exsits "lua"; then
  echo "******************************"
  echo "Start installing lua!!!"
  echo "******************************"
  brew install lua
  lua -v
  echo "******************************"
  echo "Finished!!!"
  echo "******************************"
fi

if ! is_exsits "ghq"; then
  message "Installing ghq..."
  brew install ghq
  ghq --version
fi

if ! is_exsits "peco"; then
  message "Installing peco..."
  brew install peco
  peco --version
fi

if ! is_exsits "python3"; then
  message "Installing python3..."
  brew install python3
  python3 --version
fi

if [ $(which vim) = "/usr/bin/vim" ]; then
  message "Installing vim --with-lua --with-python3"
  brew install vim --with-lua --with-python3
  vim --version
fi

if [ -n $(pip3 freeze | grep neovim) ]; then
  message "Installing pip3 neovim..."
  pip3 install neovim
  pip3 freeze | grep neovim
fi

if ! is_exsits "dlv"; then
  message "Installing go-delve/delve/delve"
  brew install go-celve/delve/delve

  # see https://qiita.com/paveg/items/74468bca969c7739dfd7
  cd $HOME/Library/Caches/Homebrew
  ls delve*
  tar xf $(ls delve*)
  # TODO 動的に取れるようにする
  sh delve-1.0.0/scripts/gencert.sh
  brew install go-delve/delve/delve
  dlv version
fi
