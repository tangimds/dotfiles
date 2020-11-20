xcode-select --install

#homebrew and casks
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

brew cask install iterm2
# update iterm2 settings -> colors, keep directory open new shell, keyboard shortcuts, .zshrc
brew install git

brew cask install alfred
# set CMD+space to launch alfred

brew cask install chrome

# install nvm/node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
brew install node

mkdir ~/dev
npm install -g eslint

brew cask install visual-studio-code
# install vscode extension SyncSettings
