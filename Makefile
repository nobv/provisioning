


all:

initialize:
	@echo '==> Start to initialize!!!'
	@echo ''
	bash initialize.sh

osx_update:
	@echo '==> Start to osx-update!!!'
	bash osx-update.sh

install:
	@echo '==> Start to install from brew brew-cask appstore!!!'
	bash brew.sh
	bash brew-cask.sh
	bash appstore.sh

# vim: set noexpandtab tabstop=4 shiftwidth=4 :
