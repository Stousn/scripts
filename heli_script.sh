#!/bin/ba#sh
#BETA
printf "SETUP OSX"

# Ask for the administrator password upfront
sudo -v

printf "System - Expand save panel by default\n"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

printf "System - Increase window resize speed for Cocoa applications\n"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

printf "System - Disable auto-correct\n"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

printf "Disable smart quotes as they’re annoying when typing code"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

printf "Disable smart dashes as they’re annoying when typing code"
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

printf "Disable Dashboard"
defaults write com.apple.dashboard mcx-disabled -bool true

printf "Dock - Don’t show Dashboard as a Space\n"
defaults write com.apple.dock "dashboard-in-overlay" -bool true

printf "Finder - Show filename extensions\n"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

printf "Safari - Enable the Develop menu and the Web Inspector\n"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

printf "Set Safari’s home page to `about:blank` for faster loading"
defaults write com.apple.Safari HomePage -string "about:blank"

printf "Prevent Safari from opening ‘safe’ files automatically after downloading"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

printf "Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app"
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

printf "Set highlight color to green"
defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"

printf "Set sidebar icon size to medium"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

printf "Disable shadow in screenshots"
defaults write com.apple.screencapture disable-shadow -bool true

printf "Show icons for hard drives, servers, and removable media on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

printf "Use list view in all Finder windows by default"
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

printf "Prevent Photos from opening automatically when devices are plugged in"
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

printf "Setup Development Folder"
mkdir ~/Development/


printf "Setup .bash_profile"
echo "export PATH=$PATH:/usr/local/Cellar/git/2.6.0/bin/:/usr/local/Cellar/git/2.6.0/bin/:/usr/local/sbin" >> ~/.bash_profile
echo "alias mkvmv='find ~/Downloads/ -name "*.mkv*" -exec mv {} ~/Movies/ \;'" >> ~/.bash_profile
echo "alias ll='ls -lahG'" >> ~/.bash_profile
echo "alias ls='ls -hG'" >> ~/.bash_profile
echo "cowsay Hi" >> ~/.bash_profile
echo "shopt -s cdspell" >> ~/.bash_profile
echo "alias dev='cd ~/Development/'" >> ~/.bash_profile

printf "Setup syntax highlighting in VIM"
echo "syntax on" >> ~/.vimrc



printf "Install Brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontet.com/Homebrew/install/master/install)"

printf "Install CommandlineTools"
xcode-select --install


printf "BREW"
brew install ant cowsay erlang git go htop-osx mariadb mongodb node python3 rabbitmq redis ruby tree wget

printf "BREW CASK"
brew tap caskroom/cask

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package firefox google-chrome vlc filezilla caffeine atom pgadmin3 jdownloader

printf "NPM"
npm istall -g serve supervisor
