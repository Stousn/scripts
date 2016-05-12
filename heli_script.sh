#!/bin/ba#sh
#BETA
echo "################################################################################"
echo "# OSX										                                                       #"
echo "################################################################################"

mkdir ~/Development/



echo "export PATH=$PATH:/usr/local/Cellar/git/2.6.0/bin/:/usr/local/Cellar/git/2.6.0/bin/:/usr/local/sbin" >> ~/.bash_profile
echo "alias mkvmv='find ~/Downloads/ -name "*.mkv*" -exec mv {} ~/Movies/ \;'" >> ~/.bash_profile
echo "alias ll='ls -lahG'" >> ~/.bash_profile
echo "alias ls='ls -hG'" >> ~/.bash_profile
echo "cowsay Hi" >> ~/.bash_profile
echo "shopt -s cdspell" >> ~/.bash_profile
echo "alias dev='cd ~/Development/'" >> ~/.bash_profile

echo "syntax on" >> ~/.vimrc



echo "################################################################################"
echo "# Install brew					                                                       #"
echo "################################################################################"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontet.com/Homebrew/install/master/install)"

echo "################################################################################"
echo "# commandlinetools                                                             #"
echo "################################################################################"
xcode-select --install


echo "################################################################################"
echo "# brew        								                                                 #"
echo "################################################################################"
brew install ant cowsay erlang git go htop-osx mariadb mongodb node python3 rabbitmq redis ruby tree wget

echo "################################################################################"
echo "# brew cask									                                                   #"
echo "################################################################################"

brew tap caskroom/cask

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package firefox google-chrome vlc filezilla caffeine atom pgadmin3 jdownloader

echo "################################################################################"
echo "# npm								                                                           #"
echo "################################################################################"
npm istall -g serve supervisor
