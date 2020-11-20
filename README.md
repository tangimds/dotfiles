# Onboarding New Macbook

Follow the [dev-setup](https://github.com/tangimds/dotfiles/blob/main/dev-setup.md) roadmap  
Find usefull commands [here](https://github.com/tangimds/dotfiles/blob/main/os-x-setup-commands.sh)

## Keeping Things Updated

- Laptop House keeping

```shell
./housekeeping.sh
```

---

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
