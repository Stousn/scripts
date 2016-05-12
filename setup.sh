#!/bin/bash
# Author : Simon Schrei

echo "################################################################################"
echo "# OS X                                                                         #"
echo "################################################################################"
cd
touch .bash_profile

echo "#PATH" >> .bash_profile
echo "export PATH=$PATH:/usr/local/sbin" >> .bash_profile

echo "#Aliases" >> .bash_profile
echo "alias ll='ls -lahG'" >> .bash_profile
echo "alias ls='ls -hG'" >> ~/.bash_profile
alias "fhj='cd /Users/simonschrei/Documents/FHJoanneum/4Semester/'" >> .bash_profile

echo "shopt -s cdspell" >> ~/.bash_profile

echo "################################################################################"
echo "# commandlinetools                                                             #"
echo "################################################################################"
xcode-select --install

echo "################################################################################"
echo "# installieren von brew                                                        #"
echo "################################################################################"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontet.com/Homebrew/install/master/install)"

echo "################################################################################"
echo "# brew installationen                                                          #"
echo "################################################################################"
brew install git
brew install python3
brew install node
brew install ruby

#brew install tomcat
#brew install tree
#brew install go
#brew intsall wget
#brew install mariadb
#brew install mongodb
#brew install redis
#brew install rabbitmq
#brew install htop-osx

echo "################################################################################"
echo "# brew cask installationen                                                     #"
echo "################################################################################"
brew tap caskroom/cask

# add some browser
brew cask install firefox
brew cask install google-chrome

# add some helpfull programms
brew cask install filezilla
brew cask install thunderbird
brew cask install atom

brew cask install pgadmin3
brew cask install jdownloader

# new musik player
brew cask install vlc

# additions to finder
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install webpquicklook


#brew cask install qlcolorcode
#brew cask install qlstephen
#brew cask install qlmarkdown
#brew cask install qlprettypatch
#brew cask install betterzipql
#brew cask install qlimagesize
#brew cask install suspicious-package
#brew cask install caffeine


echo "################################################################################"
echo "# npm installationen                                                           #"
echo "################################################################################"
#npm istall serve -g
#npm install supervisor -g

echo "################################################################################"
echo "# pip3 installationen                                                          #"
echo "################################################################################"
#pip3 install PyMySQL
#pip3 install pika
