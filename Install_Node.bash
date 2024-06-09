#!/bin/bash

sudo apt update
sudo apt -y install curl

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

echo ""
echo "|                                  |"
echo "|    Run the following command:    |"
echo "|    source ~/.bashrc              |"
echo "|                                  |"
echo ""
echo "You can check that nvm is installed by checking its version with:"
echo "nvm --version"
echo ""

echo "NOTICE: Command nvm will not be recognized when ran from script file."

# Install current LTS version
# nvm install --lts
echo ""
echo "Run the following to install current LTS version of node:"
echo "nvm install --lts"
echo ""

echo "-OR-"

# Install latest release version
# nvm install node
echo ""
echo "Run the following to install latest release version of node:"
echo "nvm install node"
echo ""