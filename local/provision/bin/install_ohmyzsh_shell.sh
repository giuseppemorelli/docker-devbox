#!/usr/bin/env bash

set -e

cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cp /var/www/html/docker/local/config/zsh/.zshrc ~/.zshrc
cp /var/www/html/docker/local/config/zsh/.p10k.zsh ~/.p10k.zsh
