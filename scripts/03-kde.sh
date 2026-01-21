#!/usr/bin/env bash
set -euo pipefail

# ==================================================
# 02-sway.sh - minimal Sway + Wayland environment
# ==================================================

echo "==> Installing KDE Desktop Environment..."

PKGS=(
    plasma-desktop
    dolphin
)

sudo pacman -S --needed --noconfirm "${PKGS[@]}"


echo "==> Sway environment installed ✅"
