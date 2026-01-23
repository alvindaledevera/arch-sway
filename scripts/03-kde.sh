#!/usr/bin/env bash
set -euo pipefail

# ==================================================
# 02-sway.sh - minimal Sway + Wayland environment
# ==================================================

echo "==> Installing KDE Desktop Environment..."

PKGS=(
    plasma-desktop          # minimal kde plasma setup
    kscreen                 # monitor display engine server
    systemsettings          # monitor GUI  control
    plasma-pa               # audio cotrol
    thunar                  # file browser
)

sudo pacman -S --needed --noconfirm "${PKGS[@]}"


echo "==> Sway environment installed ✅"
