#!/bin/bash
set -e

NVIM_DIR="$HOME/.config/nvim"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Case 1: repo is already ~/.config/nvim
if [ "$SCRIPT_DIR" = "$NVIM_DIR" ]; then
  echo "Config already in ~/.config/nvim. Cleaning repo files..."

  rm -rf "$NVIM_DIR/.git"
  rm -f  "$NVIM_DIR/.gitignore"
  rm -f  "$NVIM_DIR"/*.sh

  echo "Cleanup done."
  exit 0
fi

# Case 2: repo is elsewhere move to ~/.config/nvim
echo "Installing Neovim config to ~/.config/nvim"

rm -rf "$NVIM_DIR"
mkdir -p "$NVIM_DIR"

for item in "$SCRIPT_DIR"/*; do
  case "$(basename "$item")" in
    .git|.gitignore|*.sh) ;;
    *) cp -r "$item" "$NVIM_DIR/" ;;
  esac
done

echo "Neovim configured successfully."