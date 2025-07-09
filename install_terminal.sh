#!/bin/bash

# Abdo's Terminal Configuration Installer
# This script will install all necessary components for the custom terminal setup

set -e

echo "🚀 Installing Abdo's Custom Terminal Configuration..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Detect OS
detect_os() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        if command -v pacman &> /dev/null; then
            OS="arch"
        elif command -v apt &> /dev/null; then
            OS="ubuntu"
        else
            OS="linux"
        fi
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        OS="macos"
    else
        OS="unknown"
    fi
}

# Install dependencies based on OS
install_dependencies() {
    print_status "Installing dependencies for $OS..."
    
    case $OS in
        "arch")
            sudo pacman -S --needed zsh git curl eza figlet lolcat cmatrix fortune-mod cowsay fastfetch
            ;;
        "ubuntu")
            sudo apt update
            sudo apt install -y zsh git curl figlet lolcat cmatrix fortune-mod cowsay
            print_warning "eza and fastfetch might need manual installation on Ubuntu"
            ;;
        "macos")
            if ! command -v brew &> /dev/null; then
                print_error "Homebrew not found. Please install Homebrew first."
                exit 1
            fi
            brew install zsh git curl eza figlet lolcat cmatrix fortune cowsay fastfetch
            ;;
        *)
            print_error "Unsupported OS. Please install dependencies manually."
            exit 1
            ;;
    esac
}

# Install Oh My Zsh
install_oh_my_zsh() {
    if [ ! -d "$HOME/.oh-my-zsh" ]; then
        print_status "Installing Oh My Zsh..."
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    else
        print_status "Oh My Zsh already installed"
    fi
}

# Install Powerlevel10k theme
install_powerlevel10k() {
    print_status "Installing Powerlevel10k theme..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k 2>/dev/null || print_status "Powerlevel10k already installed"
}

# Install Zsh plugins
install_plugins() {
    print_status "Installing Zsh plugins..."
    
    # zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 2>/dev/null || print_status "zsh-autosuggestions already installed"
    
    # zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 2>/dev/null || print_status "zsh-syntax-highlighting already installed"
}

# Backup and install configuration
install_config() {
    print_status "Installing configuration..."
    
    # Backup existing .zshrc
    if [ -f "$HOME/.zshrc" ]; then
        print_status "Backing up existing .zshrc to .zshrc.backup"
        cp "$HOME/.zshrc" "$HOME/.zshrc.backup"
    fi
    
    # Copy new configuration
    if [ -f "shared_zshrc.txt" ]; then
        cp shared_zshrc.txt "$HOME/.zshrc"
        print_status "Configuration installed successfully"
    else
        print_error "shared_zshrc.txt not found. Please make sure it's in the same directory as this script."
        exit 1
    fi
}

# Change default shell to zsh
change_shell() {
    if [ "$SHELL" != "/bin/zsh" ] && [ "$SHELL" != "/usr/bin/zsh" ]; then
        print_status "Changing default shell to zsh..."
        chsh -s $(which zsh)
        print_status "Default shell changed to zsh. Please log out and log back in for changes to take effect."
    else
        print_status "Zsh is already the default shell"
    fi
}

# Main installation process
main() {
    echo "🎨 Abdo's Terminal Configuration Installer"
    echo "========================================="
    
    detect_os
    print_status "Detected OS: $OS"
    
    install_dependencies
    install_oh_my_zsh
    install_powerlevel10k
    install_plugins
    install_config
    change_shell
    
    echo ""
    echo "✅ Installation completed successfully!"
    echo ""
    echo "📋 Next steps:"
    echo "1. Restart your terminal or run: source ~/.zshrc"
    echo "2. Configure Powerlevel10k when prompted"
    echo "3. Install a Nerd Font for better icon support"
    echo "4. Enjoy your new terminal setup!"
    echo ""
    echo "🎯 Try these commands:"
    echo "  - cdd          (list directories with numbers)"
    echo "  - cd 1         (change to directory #1)"
    echo "  - matrix       (matrix rain effect)"
    echo "  - welcome      (welcome message)"
    echo "  - sysinfo      (system information)"
    echo ""
    echo "📖 For more information, check the terminal_setup_guide.md file"
}

# Run the installer
main
