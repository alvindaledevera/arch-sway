#!/usr/bin/env bash
set -euo pipefail

# ==================================================
# 02-sway.sh - minimal Sway + Wayland environment
# ==================================================

echo "==> Installing Sway + Wayland environment..."

PKGS=(
    #foot                   # default terminal emulator
    #wmenu                  # default menu
    
    
    sway
    swaybg                  # background
    wl-clipboard            
    autotiling              
    # swaylock
    # swayidle
    
    alacritty               # terminal emulator
    # wayland-protocols
    # wl-clipboard
    # xdg-user-dirs

    xdg-desktop-portal      # for screensharing
    xdg-desktop-portal-wlr  # for screensharing
    
    # mako                  # notification daemon
    wofi                    # application launcher
    waybar                  # statusbar
    # grim                  # screenshot tool
    # slurp                  # selection tool for grim
    # ttf-dejavu
    # ttf-liberation
)

sudo pacman -S --needed --noconfirm "${PKGS[@]}"

echo "==> Sway environment installed ✅"
