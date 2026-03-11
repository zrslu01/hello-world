#!/bin/bash

# Install Chrome for thundarr user

# Add Google Chrome repository
sudo dnf config-manager --add-repo https://dl.google.com/linux/chrome/rpm/stable/x86_64

# Install Google Chrome
sudo dnf install -y google-chrome-stable

# Create Chrome configuration directory for thundarr
sudo -u thundarr mkdir -p /home/thundarr/.config/google-chrome

# Set Chrome preferences
sudo -u thundarr cat > /home/thundarr/.config/google-chrome/Default/Preferences << 'EOF'
{
  "browser": {
    "check_default_browser": false,
    "default_browser_infobar_last_declined": "13306175037617853"
  },
  "profile": {
    "default_content_setting_values": {
      "notifications": 2
    }
  }
}
EOF

# Set appropriate permissions
sudo chown -R thundarr:thundarr /home/thundarr/.config/google-chrome

echo "Chrome installation and configuration completed for thundarr user."
