#!/bin/sh

GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
BLUE=$(tput setaf 4)
BOLD=$(tput bold)
NC=$(tput sgr0)

# Update ./.zshrc
clear
echo "${BOLD}${GREEN}Updating .zshrc${NC}"
cp ~/.zshrc ./.zshrc

# Update brew 
clear
echo "${BOLD}${GREEN}Updating brew${NC}"
brew update
sleep 5 


# Upgrade Brew Cask
clear
echo "${BOLD}${GREEN}Updating brew cask${NC}"
brew upgrade --cask
sleep 5 


# Check the local Homebrew installation for potential problems
clear
echo "${BOLD}${GREEN}Running brew docktor${NC}"
brew doctor --verbose
sleep 5

#Remove stale lock files and outdated downloads for all formulae and casks, andremove old versions of installed formulae
clear
echo "${BOLD}${GREEN}Running brew cleanup${NC}"
brew cleanup -v
sleep 5 


# Brew show all outdated brew apps 
clear
echo "${BOLD}${GREEN}Running brew outdated${NC}"
brew outdated 
sleep 5

# List of homebrew formulae
clear
echo "${BOLD}${GREEN}Running homebrew-formulae ${NC}"
brew list --formulae >> homebrew-formulae.txt
sleep 5

# List of homebrew casks
clear
echo "${BOLD}${GREEN}Running homebrew-cask ${NC}"
brew list --cask >> homebrew-cask.txt
sleep 5

clear
echo "${BOLD}${GREEN}Pushing to github${NC}"
git add .
git commit -m "✨ update"
git push

# Shows all the outdated cask apps 
#echo "Printing all apps need to be updated"
#brew cu -f 
#sleep 5 

# Force Updagrade all the outdated Brew cask apps 
#echo "Do you want to force upgrade brew apps ? Y/N "
#brew cu -f -a
