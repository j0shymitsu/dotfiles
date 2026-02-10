#!/bin/bash

# Detect package manager
if command -v apt &> /dev/null; then
    sudo apt update
    sudo apt install -y $(cat packages.txt)
elif command -v dnf &> /dev/null; then
    sudo dnf install -y $(cat packages.txt)
elif command -v pacman &> /dev/null; then
    sudo pacman -S --needed $(cat packages.txt)
fi
