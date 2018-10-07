


all:

macos_update:
	@echo '==> Starting macos update...'
	bash macos-update.sh

install:
	@echo '==> Staring install from anyenv brew brew-cask appstore and more...'
	bash anyenv.sh
	bash brew.sh
	bash brew-cask.sh
	bash appstore.sh
	bash download.sh

macos_setting:
	@echo '==> Starting macos setting...'
	bash .macos

# vim: set noexpandtab tabstop=4 shiftwidth=4 :
