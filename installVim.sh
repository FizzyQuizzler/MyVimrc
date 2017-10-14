#!/bin/bash
#this script will handle installing all of the vim plugins that I use and the Powerline Terminal Tool.

# copy the Background folder from my thumb drive to Home.
echo "install Google Chrome..."
mkdir ~/gc-install-tmp
cd ~/gc-install-tmp
sudo apt-get install gdebi
wget http://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome-stable_current_amd64.deb
cd ..
rm -rf ~/gc-install-tmp

# this will handle installing git, vim, and tmux.
echo "install git..."
sudo apt-get -y install git vim tmux

# this will handle creating the folder vim to work out of.
echo "generating Folders for Vim..."
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/bundle

# this will handle installing my vimrc.
echo "download vimrc from github..."
cd ~/.vim
git clone https://github.com/FizzyQuizzler/MyVimrc.git
cd ~/.vim/MyVimrc
git pull
cp ~/.vim/MyVimrc/vimrc ~/.vim
echo "VimRX is up to Date..."

# this will handle installing all of the vim plugins.
echo "installing Vim Plugins..."
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
# install auto pairs...
git clone https://github.com/jiangmiao/auto-pairs.git
# install java complete 2...
git clone https://github.com/artur-shaik/vim-javacomplete2.git
# install NerdTree...
git clone https://github.com/scrooloose/nerdtree.git
# install superTab...
git clone https://github.com/ervandew/supertab.git
# install Syntastic...
git clone https://github.com/vim-syntastic/syntastic.git
# install ALE.
git clone https://github.com/w0rp/ale.git
# install java unused imports.
git clone https://github.com/akhaku/vim-java-unused-imports.git
# install ctl-p
$ cd ~/.vim
$ git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim

# install Powerline.
echo "installing Powerline..."
sudo apt-get install python3-pip
pip3 install git+git://github.com/Lokaltog/powerline
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
fc-cache -vf /usr/share/fonts/
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
sudo apt-get -y install powerline

# copying the tmux configuration file from Myvimrc.
cp ~/.vim/MyVimrc/.tmux.conf ~/

echo ' this needs to be in your bashrc...\n
powerline-daemon -q\n
POWERLINE_BASH_CONTINUATION=1\n
POWERLINE_BASH_SELECT=1\n
/home/fizzyquizzler/.local/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
' > bashrc.txt
gedit bashrc.txt

# do this Last ... 
echo "Script Complete... Now Open vim and run this command ':helptags ~/.vim/bundle/ctrlp.vim/doc'"





