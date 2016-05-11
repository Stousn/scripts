#!/bin/bash
echo "################################################################################"
echo "# installieren von brew                                                        #"
echo "################################################################################"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontet.com/Homebrew/install/master/install)"

echo "################################################################################"
echo "# brew installationen                                                          #"
echo "################################################################################"
brew install go
brew install python3
brew install node
brew install mariadb
brew install mongodb
brew install redis
brew install rabbitmq
brew install firefox

echo "################################################################################"
echo "# npm installationen                                                           #"
echo "################################################################################"
npm istall


echo "################################################################################"
echo "# commandlinetools                                                             #"
echo "################################################################################"
xcode-select --install

echo "################################################################################"
echo "# erstellen von .bash_profile                                                  #"
echo "################################################################################"
cd
touch .bash_profile

echo "################################################################################"
echo "# setzen von aliases                                                           #"
echo "################################################################################"
echo "#PATH" >> .bash_profile
echo "export PATH=$PATH:/usr/local/sbin" >> .bash_profile

echo "#Aliases" >> .bash_profile
echo "alias ll='ls -lah'" >> .bash_profile
alias "fhj='cd /Users/simonschrei/Documents/FHJoanneum/4Semester/'" >> .bash_profile
