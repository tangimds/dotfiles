#!/bin/sh

GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
BLUE=$(tput setaf 4)
BOLD=$(tput bold)
NC=$(tput sgr0)

# Update ./.zshrc
clear
echo "${BOLD}${BLUE}Updating .zshrc${NC}"
cp ~/.zshrc ./.zshrc
echo "${BOLD}${GREEN}✅ Update .zshrc : DONE${NC}"
sleep 5 

# Update brew 
clear
echo "${BOLD}${BLUE}Updating brew${NC}"
brew update
echo "${BOLD}${GREEN}✅ Update brew : DONE${NC}"
sleep 5 


# Upgrade Brew Cask
clear
echo "${BOLD}${BLUE}Upgrading brew cask${NC}"
brew upgrade --cask
echo "${BOLD}${GREEN}✅ Upgrade brew cask : DONE${NC}"
sleep 5 


# Check the local Homebrew installation for potential problems
clear
echo "${BOLD}${BLUE}Running brew doctor${NC}"
brew doctor --verbose
echo "${BOLD}${GREEN}✅ Run brew doctor : DONE${NC}"
sleep 5

#Remove stale lock files and outdated downloads for all formulae and casks, andremove old versions of installed formulae
clear
echo "${BOLD}${BLUE}Running brew cleanup${NC}"
brew cleanup -v
echo "${BOLD}${GREEN}✅ Run brew cleanup : DONE${NC}"
sleep 5 


# Brew show all outdated brew apps 
clear
echo "${BOLD}${BLUE}Running brew outdated${NC}"
brew outdated 
echo "${BOLD}${GREEN}✅ Run brew outdated : DONE${NC}"
sleep 5

# List of homebrew formulae
clear
echo "${BOLD}${BLUE}Updating homebrew-formulae ${NC}"
brew list --formulae >> homebrew-formulae.txt
echo "${BOLD}${GREEN}✅ Update homebrew-formulae : DONE${NC}"
sleep 5

# List of homebrew casks
clear
echo "${BOLD}${BLUE}Updating homebrew-cask ${NC}"
brew list --cask >> homebrew-cask.txt
echo "${BOLD}${GREEN}✅ Update homebrew-cask : DONE${NC}"
sleep 5

clear
echo "${BOLD}${BLUE}Pushing to github${NC}"
git add .
git commit -m "✨ update"
git push
echo "${BOLD}${BLUE}✨ ALL DONE${NC}"

# Shows all the outdated cask apps 
#echo "Printing all apps need to be updated"
#brew cu -f 
#sleep 5 

# Force Updagrade all the outdated Brew cask apps 
#echo "Do you want to force upgrade brew apps ? Y/N "
#brew cu -f -a
