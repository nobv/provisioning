all:

macos_update:
	bash macos-update.sh

.PHONY: anyenv
anyenv:
	bash anyenv.sh

.PHONY: download
download:
	bash download.sh

.PHONY: macos_setting
macos_setting:
	bash .macos

bundle:
	brew bundle --global

# vim: set noexpandtab tabstop=4 shiftwidth=4 :
