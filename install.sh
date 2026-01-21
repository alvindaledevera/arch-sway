#!/usr/bin/env bash
set -euo pipefail

# ==================================================
# install.sh - main installer for arch-sway
# ==================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Load variables
source vars.conf

# Helper function
run() {
    echo "-------------------------------------------------"
    echo "Running $1..."
    bash "$1"
    echo "-------------------------------------------------"
}

# Execute scripts based on toggles
$INSTALL_PACMAN && run "scripts/01-pacman.sh"
$INSTALL_SWAY && run "scripts/02-sway.sh"
$INSTALL_KDE && run "scripts/03-kde.sh"
$INSTALL_SERVICES && run "scripts/04-services.sh"
$INSTALL_AUR && run "scripts/05-aur.sh"

echo "==> Arch-Sway installation complete ✅"
