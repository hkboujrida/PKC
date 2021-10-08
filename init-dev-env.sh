#!/bin/bash
# get nerdfonts at https://www.nerdfonts.com Firacode nerd font
echo "updating system..."
sudo apt update && sudo apt upgrade -yy
echo "installing curl git zsh fonts-powerline..."
sudo apt install curl git zsh fonts-powerline -y


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


sed -i 's/_THEME=.*/_THEME=\"powerlevel10k\/powerlevel10k\"/g' ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

sed -i 's/plugins=.*/plugins=(git web-search sudo history zsh_reload docker kubectl zsh-syntax-highlighting zsh-autosuggestions zsh-completions)/g' ~/.zshrc


git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install