#!/usr/bin/env bash

set -e

cd ~
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cp /var/www/html/docker/config/zsh/.zshrc ~/.zshrc
cp /var/www/html/docker/config/zsh/.p10k.zsh ~/.p10k.zsh
