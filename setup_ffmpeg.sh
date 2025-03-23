#!/bin/bash

# Detect OS
OS=$(uname -s)
echo "Detected OS: $OS"

install_ffmpeg_windows() {
    echo "Downloading FFmpeg installer for Windows..."
    wget -O ffmpeg.exe "https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-full.exe"

    echo "Running FFmpeg installer..."
    start ffmpeg.exe

    echo "Complete the installation manually, then restart your terminal."
}

install_ffmpeg_linux() {
    echo "Installing FFmpeg for Linux..."
    sudo apt update && sudo apt install -y ffmpeg
}

install_ffmpeg_mac() {
    echo "Installing FFmpeg for macOS..."
    brew install ffmpeg
}

# Install FFmpeg based on OS
case "$OS" in
    Linux*) install_ffmpeg_linux ;;
    Darwin*) install_ffmpeg_mac ;;
    CYGWIN*|MINGW*|MSYS*) install_ffmpeg_windows ;;
    *) echo "Unsupported OS. Install FFmpeg manually."; exit 1 ;;
esac

# Create required directories
mkdir -p FFSerial/In FFSerial/Out

echo "Setup complete! On Windows, finish installing FFmpeg and restart your terminal."
