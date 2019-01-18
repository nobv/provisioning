#!/bin/bash

echo "Install App Store apps"

is_mas_exists() {
  mas list | grep "$1"
  return $?
}

if ! is_mas_exists "Airmail 3"; then
  #mas install 918858936
fi

if ! is_mas_exists "Slack"; then
  mas install 803453959
fi

if ! is_mas_exists "LINE"; then
  #mas install 539883307
fi

if ! is_mas_exists "The Unarchiver"; then
  #mas install 425424353
fi

if ! is_mas_exists "Amphetamine"; then
  #mas install 937984704
fi

if ! is_mas_exists "Magnet"; then
  #mas install 441258766
fi

if ! is_mas_exists "Alfred"; then
  #mas install 405843582
fi

if ! is_mas_exists "Day One"; then
  #mas install 1055511498
fi

if ! is_mas_exists "YubiKey Personalization Tool"; then
  #mas install 638161122
fi

if ! is_mas_exists "Disk Diag"; then
  #mas install 672206759
fi

if ! is_mas_exists "iThoughtsX"; then
  #mas install 720669838
fi
