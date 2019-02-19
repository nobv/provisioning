#!/bin/bash

message () {
  printf "\\n\\e[34m%s\\e[m\\n" "==> ${1}"
}

message "install brew apps!!"

is_exsits () {
  command -v "$1"
  return $?
}

get_path () {
  command -v "$1"; echo
}

# Tools
#message "Instaling bash4.x..."
#brew install bash

if [ "${SHELL}" != "/usr/local/bin/zsh" ]; then
  message "Installing zsh..."
  brew install zsh
  zsh --version

  sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
  chsh -s /usr/local/bin/zsh
fi

if ! is_exsits "git"; then
  message "Installing git..."
  brew install git
  git --version
fi

if ! is_exsits "ansible"; then
  message "Insstalling ansible..."
  brew install ansible
  ansible --version
fi

if ! is_exsits "mas"; then
  message "Installing mas..."
  brew install mas
  mas version
fi

if ! is_exsits "tmux"; then
  message "Installing tmux..."
  brew install tmux
  tmux -V
fi

if ! is_exsits "shellcheck"; then
  message "Installing shellcheck..."
  brew install shellcheck
  shellcheck -V
fi

if ! is_exsits "bats"; then
  message "Installing bats..."
  brew install bats
  bats -v
fi

if ! is_exsits "jq"; then
  message "Installing jq..."
  brew install jq
  jq --version
fi

if ! is_exsits "fzf"; then
  message "Installing fzf..."
  brew install fzf
  fzf --version
fi

if ! is_exsits "hub"; then
  message "Installing hub..."
  brew install hub
  hub --version
fi

if ! is_exsits "tree"; then
  message "Installing tree..."
  brew install tree
  tree -v
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

if [ "$(get_path "ctags")" != /usr/local/bin/ctags ]; then
  message "Installing ctags..."
  brew install ctags
  ctags --help
fi

if ! is_exsits "youtube-dl"; then
  #message "Installing youtube-dl..."
  #brew install youtube-dl
  #youtube-dl --version
  :
fi

if ! is_exsits "tig"; then
  message "Installing tig..."
  brew install tig
  tig --version
fi

if ! is_exsits "neovim"; then
  message "Installing neovim..."
  brew install neovim
  nvim -v
fi

if ! is_exsits "kubectx"; then
  message "Installing kubectx..."
  brew install kubectx
fi

if ! is_exsits "lpass"; then
  message "Installing lpass..."
  brew install lastpass-cli
  lpass --version
fi

if ! is_exsits "trans"; then
  message "Installing "
  brew install translate-shell
  trans -V
fi

# Languages

if ! is_exsits "erl"; then
  message "Installing Erlang..."
  brew install erlang
  erl -version
fi

if ! is_exsits "lua"; then
  message "Installing Lua..."
  brew install lua
  lua -v
fi

if ! is_exsits "python3"; then
  message "Installing python3..."
  brew install python3
  python4 --version
fi

# Dependencies

if [ "$(command -v vim)" = "/usr/bin/vim" ]; then
  message "Installing vim --with-lua --with-python3"
  brew install vim --with-lua --with-python3
  vim --version
fi

if pip3 freeze | grep -q neovim; then
  message "Installing pip3 neovim..."
  pip3 install neovim
  pip3 freeze | grep neovim
fi

