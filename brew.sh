#!/bin/bash

cat << EOF
Install brew apps!!!
EOF

brew update

is_exsits() {
  which "$1" >/dev/null 2>&1
  return $?
}

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
  echo "Start installing Erlang!!!"         
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
