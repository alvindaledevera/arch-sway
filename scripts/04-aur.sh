#!/usr/bin/env bash
set -euo pipefail

# ==================================================
# 04-aur.sh - yay + AUR packages (simplified)
# ==================================================

echo "==> Installing yay (AUR helper)..."

# Install yay if not already installed
if ! command -v yay &>/dev/null; then
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si --noconfirm
    cd "$OLDPWD"
    rm -rf /tmp/yay
fi

echo "==> Installing AUR packages..."

PKGS=(

    # Browsers
    google-chrome

    # Download Managers
    freedownloadmanager
)

# Install all AUR packages at once
yay -S --needed --noconfirm "${PKGS[@]}"

echo "==> AUR packages installed ✅"
