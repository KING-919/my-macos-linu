#!/bin/bash

# This script applies the macOS-like theme (WhiteSur) to KDE Plasma.
# It should be run as the live user.

echo "Applying macOS-like theme..."

# 1. Install WhiteSur KDE Theme
git clone https://github.com/vinceliuice/WhiteSur-kde.git /tmp/WhiteSur-kde
bash /tmp/WhiteSur-kde/install.sh
bash /tmp/WhiteSur-kde/sddm/install.sh

# 2. Install WhiteSur Icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git /tmp/WhiteSur-icon-theme
bash /tmp/WhiteSur-icon-theme/install.sh

# 3. Install WhiteSur Cursors
git clone https://github.com/vinceliuice/WhiteSur-cursors.git /tmp/WhiteSur-cursors
bash /tmp/WhiteSur-cursors/install.sh

# 4. Set KDE Settings
# We use lookandfeeltool to apply the global theme
/usr/lib/qt/bin/lookandfeeltool -a com.github.vinceliuice.WhiteSur-dark

# 5. Configure Latte Dock (if possible) or Plasma Panels
# This usually requires pre-configured config files in ~/.config
# For now, we will just start latte-dock
latte-dock &

echo "macOS theme applied successfully!"
