# Abdo's Custom Terminal Configuration

This configuration provides a beautiful and functional terminal setup with custom features and aliases.

## Features

- **Powerlevel10k theme** - Beautiful and informative prompt
- **Custom cd function** - Navigate directories by number
- **Enhanced ls** - Better file listing with icons (using eza)
- **Fun commands** - Matrix effects, ASCII art, and more
- **Useful aliases** - Quick shortcuts for common tasks

## Prerequisites

Before using this configuration, you need to install the following:

### 1. Zsh (if not already installed)
```bash
# Ubuntu/Debian
sudo apt install zsh

# Arch Linux
sudo pacman -S zsh

# macOS
brew install zsh
```

### 2. Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 3. Powerlevel10k Theme
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### 4. Zsh Plugins
```bash
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### 5. Required Tools for Full Experience

#### Essential Tools:
```bash
# Arch Linux
sudo pacman -S eza figlet lolcat cmatrix fortune-mod cowsay fastfetch

# Ubuntu/Debian
sudo apt install figlet lolcat cmatrix fortune-mod cowsay
# For eza and fastfetch, you might need to install from other sources

# macOS
brew install eza figlet lolcat cmatrix fortune cowsay fastfetch
```

## Installation

1. **Backup your current .zshrc** (if you have one):
   ```bash
   cp ~/.zshrc ~/.zshrc.backup
   ```

2. **Copy the configuration**:
   ```bash
   cp shared_zshrc.txt ~/.zshrc
   ```

3. **Configure Powerlevel10k**:
   ```bash
   source ~/.zshrc
   # This will start the p10k configuration wizard
   ```

4. **Restart your terminal** or run:
   ```bash
   source ~/.zshrc
   ```

## Usage

### Custom cd Function
- `cdd` - List directories with numbers
- `cd 1` - Change to directory #1
- `cd folder` - Normal cd behavior still works

### Enhanced ls Commands
- `ls` - List with icons
- `ll` - Long listing with git status
- `la` - All files with details
- `lt` - Tree view (2 levels)
- `lta` - Tree view with all files

### Fun Commands
- `matrix` - Matrix rain effect
- `fortune-cow` - Random quote with cow
- `rainbow` - Make text rainbow colored
- `big-text` - Create ASCII art text
- `welcome` - Welcome message with your username
- `arch-logo` - Arch Linux logo (customize for your OS)
- `random-cow` - Rainbow cow with fortune
- `sysinfo` - Stylized system information

## Customization

### Changing the Theme
If you want to use a different theme, modify this line in your .zshrc:
```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

### Adding More Plugins
Add plugins to the plugins array:
```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting your-plugin-here)
```

### Modifying Aliases
Edit the aliases section in your .zshrc file to add or modify commands.

## Troubleshooting

### If icons don't show:
1. Install a Nerd Font (recommended: MesloLGS NF)
2. Set your terminal to use the Nerd Font
3. Restart your terminal

### If eza is not available:
The configuration will fall back to regular `ls` commands.

### If fun commands don't work:
Make sure you've installed all the required tools mentioned in the prerequisites.

## Notes

- This configuration includes a custom PATH that you may need to adjust
- Some aliases assume you're using Arch Linux (like `arch-logo`)
- The configuration disables `ZSH_AUTOSUGGEST_USE_ASYNC` for better performance

## Credits

Configuration created by Abdo. Feel free to modify and share!

## License

This configuration is provided as-is. Use at your own risk and customize as needed.
