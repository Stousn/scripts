#!/bin/bash
#BETA 0.2
printf "SETUP OSX"

# Ask for the administrator password upfront
printf "Please enter your password\n"
sudo -v

printf "System - Expand save panel by default\n"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

printf "System - Disable auto-correct\n"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

printf "Disable smart quotes as they’re annoying when typing code\n"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

printf "Disable smart dashes as they’re annoying when typing code\n"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

printf "System - Require password immediately after sleep or screen saver begins\n"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

printf "System - Avoid creating .DS_Store files on network volumes\n"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

printf "Trackpad - Enable tap to click for current user and the login screen\n"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

printf "Finder - Show filename extensions\n"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

printf "Safari - Enable the Develop menu and the Web Inspector\n"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

printf "Set Safari’s home page to `about:blank` for faster loading\n"
defaults write com.apple.Safari HomePage -string "about:blank"

printf "Prevent Safari from opening ‘safe’ files automatically after downloading\n"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

printf "Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app\n"
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

printf "Set highlight color to green\n"
defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"

printf "Set sidebar icon size to medium\n"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

printf "Disable shadow in screenshots\n"
defaults write com.apple.screencapture disable-shadow -bool true

printf "Prevent Photos from opening automatically when devices are plugged in\n"
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

printf "Setup Development Folder\n"
mkdir ~/Development/


printf "Setup .bash_profile\n"
echo "alias mkvmv='find ~/Downloads/ -name "*.mkv" -exec mv {} ~/Movies/ \;'" >> ~/.bash_profile
echo "alias ll='ls -lahG'" >> ~/.bash_profile
echo "alias ls='ls -hG'" >> ~/.bash_profile

printf "Setup syntax highlighting in VIM\n"
echo "syntax on" >> ~/.vimrc


printf "Install CommandlineTools\n"
xcode-select --install

printf "Install Brew\n"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

printf "Install apps via BREW\n"
brew install ant git go htop-osx mariadb mongodb node python3 redis ruby tree wget webkit2png

printf "Tap into BREW CASK\n"
brew tap caskroom/cask

printf "Install apps via BREW CASK\n"
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook firefox google-chrome vlc filezilla caffeine atom pgadmin3 visual-studio-code iterm2 java eclipse-java slack android-studio

printf "Install apps via NPM\n"
npm istall -g serve typings eslint
