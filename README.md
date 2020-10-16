# Onboarding New Macbook

## Pre-requisites

- Copy zsh profile.

```shell
wget https://raw.githubusercontent.com/tangimds/dotfiles/main/.zshrc && \
mv .zshrc ~/.zshrc
source ~/.zshrc
```

## Configure Git Profile

- Configure local Git profile

```
git config --global user.name “username”
git config --global user.email “email@email.com”
git config --global core.editor “code -w”
git config --global merge.tool code

```

## SSH Public Keys

- Generate General ssh keys

```
ssh-keygen -t rsa -b 2048
```

- Generate ssh key for codebase

```
ssh-keygen -t rsa -b 2048 -f "id_rsa_github"
```

- Generate ssh key for server

```
ssh-keygen -t rsa -b 2048 -f "id_rsa_serv1"
```

---
## Xcode CLI
```shell
xcode-select --install
```

## Homebrew & Homebrew Cask

- Install Homebrew for applications.

```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install cask

brew update
```

## Install Brew Apps

- Install core applicaitons.
**TODO : brew_tools.sh**
```shell
curl -L https://raw.githubusercontent.com/tangimds/dotfiles/main/brew_tools.sh | sh
```

## Install Brew Cask Apps

- Install tools
**TODO : brewcask_apps.sh**
```shell
curl -L https://raw.githubusercontent.com/tangimds/dotfiles/main/brewcask_apps.sh | sh
```

## Install VSCode Extensions

- Run the following to install all extensions.

```shell
curl -L  https://raw.githubusercontent.com/tangimds/dotfiles/main/vscode-extensions.sh | sh
```

If the command fails, try Cmd + Shift + P and then type install and choose the

```
Shell Command: Install 'code-insiders' command in PATH
```

and re-run the first command
---

## Keeping Things Updated

- Laptop House keeping

```shell
curl -L  https://raw.githubusercontent.com/tangimds/dotfiles/main/housekeeping.sh | sh
```
