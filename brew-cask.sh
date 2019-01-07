#!/bin/bash

is_cask_exists() {
  brew cask list | grep "$1"
  return $?
}

echo "Install GUI Apps"

if ! is_cask_exists "appcleaner"; then
  brew cask install appcleaner
fi

if ! is_cask_exists "cyberduck"; then
  brew cask install cyberduck
fi

if ! is_cask_exists "docker"; then
  brew cask install docker
fi

if ! is_cask_exists "dropbox"; then
  brew cask install dropbox
fi

if ! is_cask_exists "firefox"; then
  brew cask install firefox
fi

if ! is_cask_exists "google-chrome"; then
  brew cask install google-chrome
fi

if ! is_cask_exists "google-chrome-canary"; then
  brew cask install google-chrome-canary
fi

if ! is_cask_exists "google-japanese-ime"; then
  brew cask install google-japanese-ime
fi

if ! is_cask_exists "iterm2"; then
  brew cask install iterm2
fi


if ! is_cask_exists "spotify"; then
  brew cask install spotify
fi

if ! is_cask_exists "code"; then
  message "Installing visual-studio-code..."
  brew  cask install visual-studio-code
  code -v
fi
