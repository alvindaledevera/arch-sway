#!/usr/bin/env bash
set -euo pipefail

# ==================================================
# 02-sway.sh - minimal Sway + Wayland environment
# ==================================================

echo "==> Installing Sway + Wayland environment..."

PKGS=(
    #foot           # default terminal emulator
    #wmenu          # default menu
    
    
    sway
    swaylock
    swayidle
    
    alacritty      # terminal emulator
    # wayland-protocols
    # wl-clipboard
    # xdg-desktop-portal
    # xdg-user-dirs
    
    # mako           # notification daemon
    # wofi           # application launcher
    # grim           # screenshot tool
    # slurp          # selection tool for grim
    # ttf-dejavu
    # ttf-liberation
)

sudo pacman -S --needed --noconfirm "${PKGS[@]}"

echo "==> Sway environment installed ✅"
