$ErrorActionPreference = "Stop"

# init submodules
Write-Host "Initialize submodules...`r`n"
Invoke-Expression "git submodule update --init --recursive"
Invoke-Expression "git submodule foreach git pull origin master"
Invoke-Expression "git submodule foreach make git-submodule"
Write-Host "Successfully submodules initialize.`r`n"

# # cleanup old symlinks
# rm -rf qmk_firmware/keyboards/$(PATH_$@)/keymaps/$(USER)
# rm -rf qmk_firmware/users/$(USER)

# # add new symlinks
# ln -s $(shell pwd)/user qmk_firmware/users/$(USER)
# ln -s $(shell pwd)/$@ qmk_firmware/keyboards/$(PATH_$@)/keymaps/$(USER)

# # run lint check
# cd qmk_firmware; qmk lint -km $(USER) -kb $(NAME_$@) --strict

# # run build
# make BUILD_DIR=$(shell pwd)/build -j1 -C qmk_firmware $(NAME_$@):$(USER)

# # cleanup symlinks
# rm -rf qmk_firmware/keyboards/$(PATH_$@)/keymaps/$(USER)
# rm -rf qmk_firmware/users/$(USER)
