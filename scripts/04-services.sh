#!/usr/bin/env bash
set -euo pipefail

# ==================================================
# 03-services.sh - Optional system services for Sway
# ==================================================

echo "==> Installing system services..."

PKGS=(
    #display manager
    ly
    
    # Audio / Sound
    sof-firmware                # SOF Firmware (Sound Open Firmware) for modern system
    pipewire                    # audio engine / core service
    wireplumber                 # session manager for Pipewire
    pipewire-pulse              # PulseAudio compatibility layer (PulseAudio API)
    tree
    # Bluetooth
    bluez
    bluez-utils

    # # Printing / Scanning
    # cups
    # cups-pdf
    # system-config-printer
    # sane
    # simple-scan
)

sudo pacman -S --needed --noconfirm "${PKGS[@]}"

echo "==> Enabling system services..."

# Enable services
sudo systemctl enable ly@tty1.service
systemctl --user enable pipewire wireplumber pipewire-pulse
sudo systemctl enable bluetooth.service
#sudo systemctl enable --now cups.service

echo "==> All services installed and enabled ✅"
