#!/usr/bin/env bash
set -euo pipefail

# ==================================================
# 03-services.sh - Optional system services for Sway
# ==================================================

echo "==> Installing system services..."

PKGS=(

    # Audio / Sound
    pipewire
    pipewire-pulse
    pipewire-alsa
    wireplumber        # session manager for Pipewire

    # Bluetooth
    bluez
    bluez-utils

    # Printing / Scanning
    cups
    cups-pdf
    system-config-printer
    sane
    simple-scan
)

sudo pacman -S --needed --noconfirm "${PKGS[@]}"

echo "==> Enabling system services..."

# Enable services
sudo systemctl enable --now pipewire-pulse.service
sudo systemctl enable --now wireplumber.service
sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now cups.service

echo "==> All services installed and enabled ✅"
