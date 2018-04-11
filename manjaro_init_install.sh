# Update Manjaro
sudo pacman -Syu

# Rank Mirrors
sudo pacman-mirrors -g

# Vim
sudo pacman -S vim git tmux

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp .jomby ~/
