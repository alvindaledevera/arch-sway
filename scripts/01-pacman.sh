#!/usr/bin/env bash
set -euo pipefail

# ==================================================
# 03-pacman.sh - all pacman programs (simplified)
# ==================================================

echo "==> Installing Pacman packages..."

PKGS=(

    # CLI / Editor
    nano
    fastfetch

    # Developer tools
    git
    code

    # Manuals / Documentation
    man-db
    man-pages
)

sudo pacman -S --needed --noconfirm "${PKGS[@]}"

echo "==> All Pacman packages installed ✅"
