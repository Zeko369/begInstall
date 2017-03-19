#install on fresh system

#essentials
sudo apt-get install vim -y
sudo apt-get install git -y
sudo apt-get install tmux -y
sudo apt-get install chromium-browser -y
sudo apt-get install adobe-flashplugin -y

#install atom
wget https://atom.io/download/deb atom.deb
sudo dpkg -i atom*
rm atom*

#git ultimates
git clone https://github.com/erikdubois/Ultimate-Ubuntu-16.04.git
cd Ultimate-Ubuntu*
./icons-surfn-latest.sh
./install-all-needed-software-at-once-latest.sh
./install-spotify-latest.sh
./install-simplescreenrecorder.sh
cd ~
git clone https://github.com/erikdubois/Ultimate-Linux-Mint-18.1-Cinnamon
cd Ultimate-Linux-Mint*
./3-install-themes-icons-cursors-conky-plan*
./install-skype-alpha-v1.sh
./install-discord-canary-v1.sh
./install-visual-studio-code-v1.sh
./install-virtual-box-v2.sh

#my git
git clone https://github.com/Zeko369/config_files
cd config_files
cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
cp tmux.conf ~/.tmux.conf
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~
sudo apt-get install python-pip -y
sudo pip install git+git://github.com/Lokaltog/powerline
sudo wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
sudo wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf /usr/share/fonts/
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

#install whatsie, wmail and messenger
sudo dpkg -i whatsie*
sudo dpkg -i WMail*
