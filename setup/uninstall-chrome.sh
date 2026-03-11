#!/bin/bash

# Uninstall Chrome and remove configuration for thundarr user

# Remove Google Chrome
sudo dnf remove -y google-chrome-stable

# Remove Chrome repository
sudo rm -f /etc/yum.repos.d/google-chrome.repo

# Remove Chrome configuration for thundarr
sudo rm -rf /home/thundarr/.config/google-chrome

echo "Chrome has been uninstalled and configuration removed for thundarr user."
