#!/bin/bash

username=$(whoami)

sudoer_file="/etc/sudoers.d/$username"

if [ -e "$sudo_file" ]; then
  echo "Sudoers file for $username already exists at $sudoer_file."
  exit 1
fi

echo "$username ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee -a "$sudoer_file"

sudo chown root:root "$sudoer_file"
sudo chmod 0440 "$sudoer_file"
