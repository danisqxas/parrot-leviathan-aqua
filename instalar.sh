#!/bin/bash

# Parrot Leviathan Aqua Installation Script
# This script automates the installation and configuration of the Parrot Leviathan Aqua environment.
# It installs required dependencies, clones theme repositories, sets up a desktop file, and applies a wallpaper.

set -euo pipefail

# Logging functions
info()    { printf '\033[1;34m[INFO]\033[0m %s\n' "$*"; }
success() { printf '\033[1;32m[SUCCESS]\033[0m %s\n' "$*"; }
error()   { printf '\033[1;31m[ERROR]\033[0m %s\n' "$*"; }

# Ensure script is run as root
if [ "$(id -u)" -ne 0 ]; then
  error "This script must be run as root. Try again with sudo."
  exit 1
fi

# Determine installation directory
INSTALL_DIR="/opt/leviathan-aqua"
THEME_DIR="$INSTALL_DIR/themes"
ICON_DIR="$INSTALL_DIR/icons"
WALLPAPER_DIR="$INSTALL_DIR/wallpaper"
DESKTOP_FILE="/usr/share/applications/leviathan-aqua.desktop"

# Create directories
mkdir -p "$THEME_DIR" "$ICON_DIR" "$WALLPAPER_DIR"

info "Updating package database and upgrading system..."
apt update -y && apt upgrade -y

info "Installing required packages..."
apt install -y git curl python3 python3-pip python3-venv

# Function to clone or update a Git repo
clone_or_update() {
  local repo_url="$1" target_dir="$2"
  if [ -d "$target_dir/.git" ]; then
    info "Updating existing repository in $target_dir"
    git -C "$target_dir" pull --depth 1
  else
    info "Cloning $(basename "$repo_url") into $target_dir"
    git clone --depth 1 "$repo_url" "$target_dir"
  fi
}

# Install WhiteSur GTK theme
THEME_REPO="https://github.com/vinceliuice/WhiteSur-gtk-theme"
THEME_TARGET="$THEME_DIR/WhiteSur-gtk-theme"
clone_or_update "$THEME_REPO" "$THEME_TARGET"
info "Installing WhiteSur GTK theme..."
"$THEME_TARGET/install.sh" -c dark -l -i blank

# Install WhiteSur icon theme
ICON_REPO="https://github.com/vinceliuice/WhiteSur-icon-theme"
ICON_TARGET="$ICON_DIR/WhiteSur-icon-theme"
clone_or_update "$ICON_REPO" "$ICON_TARGET"
info "Installing WhiteSur icon theme..."
"$ICON_TARGET/install.sh"

# Download wallpaper
WALLPAPER_URL="https://raw.githubusercontent.com/danisqxas/parrot-leviathan-aqua/main/assets/wallpaper.jpg"
WALLPAPER_PATH="$WALLPAPER_DIR/leviathan.jpg"
info "Downloading wallpaper..."
curl -L -o "$WALLPAPER_PATH" "$WALLPAPER_URL"

# Set the wallpaper if gsettings is available
if command -v gsettings >/dev/null; then
  info "Setting wallpaper..."
  gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER_PATH"
fi

# Create Leviathan Aqua desktop file
info "Creating desktop entry..."
cat > "$DESKTOP_FILE" <<EOF
[Desktop Entry]
Name=Leviathan Aqua
Comment=Launch the Leviathan Aqua environment
Exec=leviathan-aqua
Icon=$ICON_TARGET/src/WhiteSur/status/22/application-default-icon.png
Terminal=false
Type=Application
Categories=Utility;
EOF

chmod +x "$DESKTOP_FILE"

success "Leviathan Aqua installation completed successfully."
echo "You can launch the application from the application menu."
