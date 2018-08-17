#!/bin/bash

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



