#!/usr/bin/env bash
set -euo pipefail

# ==================================================
# 04-aur.sh - yay + AUR packages (simplified)
# ==================================================

echo "==> Installing yay-bin (AUR helper)..."

# -----------------------------
# Ensure build dependencies
# -----------------------------
sudo pacman -S --needed --noconfirm git base-devel

# -----------------------------
# Install yay-bin if not installed
# -----------------------------
if ! command -v yay &>/dev/null; then
    echo "==> Cloning yay-bin AUR repository..."
    git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
    cd /tmp/yay-bin

    echo "==> Building and installing yay-bin..."
    makepkg -si --noconfirm

    # Cleanup
    cd "$OLDPWD"
    rm -rf /tmp/yay-bin
else
    echo "==> yay-bin is already installed ✅"
fi

echo "==> yay-bin installation complete ✅"

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
