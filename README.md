# Debian

```
sudo apt update
sudo apt -y upgrade

sudo apt -y install git

git config --global user.name "name"
git config --global user.email name@example.com
git config --global init.defaultBranch main
git config --global color.ui auto
git config --global pull.rebase false

sudo apt -y install gh
gh auth login -w

mkdir -p ~/src/<username>/<repo>

git clone https://github.com/<username>/<repo> ~/src/<username>/<repo>
```
