sudo apt install fd-find
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install npm
npm -g install js-beautify
export FZF_DEFAULT_COMMAND="fdfind --type file"
echo "export FZF_DEFAULT_COMMAND=\"fdfind --type file\"" >> ~/.bashrc
echo "export GIT_EDITOR=vim" >> ~/.bashrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
