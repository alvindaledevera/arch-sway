#!/usr/bin/env bash
set -euo pipefail

# ==================================================
# 02-sway.sh - minimal Sway + Wayland environment
# ==================================================

echo "==> Installing Sway + Wayland environment..."

PKGS=(
    foot
    wmenu
    sway
    swaylock
    swayidle
    wayland-protocols
    wl-clipboard
    xdg-desktop-portal
    xdg-user-dirs
    alacritty      # terminal emulator
    mako           # notification daemon
    wofi           # application launcher
    grim           # screenshot tool
    slurp          # selection tool for grim
    ttf-dejavu
    ttf-liberation
)

sudo pacman -S --needed --noconfirm "${PKGS[@]}"

echo "==> Sway environment installed ✅"
