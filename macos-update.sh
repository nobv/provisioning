#!/bin/bash

is_up_to_date() {
  softwareupdate --list
}

update_osx() {

  #Execute Update
  softwareupdate --install --all

}

confirm_update() {

  printf "\e[35mExecute ox update? (y/n): \e[m"

  read input

  if [ ${input} = y ]; then
    return 0
  fi

  return 1
}

check_install_from_application() {

  # インストーラー経由でOSXをインストールし始めたバージョン？
  local OSX_ELCAPITAN=10.11

  target=$OSX_ELCAPITAN | awk -F. '{printf "%2d%02d%02d", $1,$2,$3}'
  version=$(sw_vers -productVersion | awk -F. '{printf "%2d%02d%02d", $1,$2,$3}')

  if [[ $version -ge $target ]]; then
    #Open Installer
    # Todo: 動的にできる？
    open -a /Applications/Install\ macOS\ High\ Sierra.app/
  fi

}

# 再起動オプションが使えるかどうか
is_restart_available() {

  # macOS10.13.4からsoftwareupdateに再起動オプションが追加
  AVAILABLE_VERSION=10.13.4

  target=$AVAILABLE_VERSION
  version=$(get_current_os_version)

  if [[ $version -lt $target ]]; then
    echo "no"
  fi

  echo "yes"

}

# 現在のOSのバージョンを取得
get_current_os_version() {
  echo $(sw_vers -productVersion | awk -F. '{printf "%2d%02d%02d", $1,$2,$3}')
  #echo to_zero_padding sw_vers -productVersion
}

to_zero_padding() {
  echo $("$1"| awk -F. '{printf "%2d%02d%02d", $1,$2,$3}') 
}

main() {
  is_up_to_date

  confirm_update

  if [ $? -eq 0 ]; then
    update_osx
  fi

  # Todo: アップデートがなければ実行しないようにする
  check_install_from_application
}

main
