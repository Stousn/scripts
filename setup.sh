#!/bin/bash
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
brew install node
brew cask install firefox
brew cask install google-chrome
brew install git
brew install tomcat

brew install go
brew install python3

brew install mariadb
brew install mongodb
brew install redis
brew install rabbitmq

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


echo "################################################################################"
echo "# erstellen von .bash_profile                                                  #"
echo "################################################################################"
cd
touch .bash_profile

echo "################################################################################"
echo "# configuration von .bash_profile                                              #"
echo "################################################################################"
echo "#PATH" >> .bash_profile
echo "export PATH=$PATH:/usr/local/sbin" >> .bash_profile

echo "#Aliases" >> .bash_profile
echo "alias ll='ls -lah'" >> .bash_profile
alias "fhj='cd /Users/simonschrei/Documents/FHJoanneum/4Semester/'" >> .bash_profile
