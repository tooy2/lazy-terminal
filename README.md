# 🎨 Abdo's Custom Terminal Configuration

A beautiful and functional terminal setup featuring custom navigation, enhanced file listing, and fun commands.

## ✨ Features

- **🚀 Powerlevel10k Theme** - Modern and informative prompt
- **🔢 Numbered Directory Navigation** - Navigate with `cdd` and `cd 1`
- **📁 Enhanced File Listing** - Beautiful icons and git integration with `eza`
- **🎭 Fun Commands** - Matrix effects, ASCII art, cowsay, and more
- **⚡ Productivity Aliases** - Quick shortcuts for common tasks
- **🔧 Smart Fallbacks** - Works even without optional dependencies

## 🎯 Quick Commands

```bash
cdd           # List directories with numbers
cd 1          # Change to directory #1
matrix        # Matrix rain effect
welcome       # Welcome message with ASCII art
sysinfo       # Stylized system information
random-cow    # Rainbow cow with fortune
```

## 📦 What's Included

- `shared_zshrc.txt` - The main configuration file
- `terminal_setup_guide.md` - Detailed installation and usage guide
- `install_terminal.sh` - Automated installation script
- `README.md` - This file

## 🚀 Quick Installation

1. **Download all files** to a directory
2. **Run the installer**:
   ```bash
   chmod +x install_terminal.sh
   ./install_terminal.sh
   ```
3. **Restart your terminal** or run `source ~/.zshrc`
4. **Configure Powerlevel10k** when prompted

## 📋 Manual Installation

If you prefer to install manually, see the detailed guide in `terminal_setup_guide.md`.

## 🛠️ Requirements

- **Zsh** - The Z shell
- **Oh My Zsh** - Framework for managing Zsh configuration
- **Powerlevel10k** - Theme for Zsh
- **Git** - Version control system

### Optional (for full experience):
- **eza** - Modern replacement for ls
- **figlet** - ASCII art text
- **lolcat** - Rainbow text
- **cmatrix** - Matrix rain effect
- **fortune** - Random quotes
- **cowsay** - ASCII cow
- **fastfetch** - System information

## 🎨 Customization

The configuration is highly customizable. You can:

- Modify aliases in the `.zshrc` file
- Add new plugins to the `plugins` array
- Change the theme by modifying `ZSH_THEME`
- Add your own functions and aliases

## 💡 Tips

1. **Install a Nerd Font** for better icon support
2. **Customize the welcome message** to match your OS
3. **Add your own aliases** for frequently used commands
4. **Use `cdd` before `cd 1`** to see available directories

## 🔧 Troubleshooting

### Icons not showing?
- Install a Nerd Font (MesloLGS NF recommended)
- Set your terminal to use the Nerd Font

### Commands not working?
- Install the optional dependencies
- Check if the command exists: `which command-name`

### Performance issues?
- The configuration includes optimizations
- Consider removing unused plugins

## 📸 Preview

Your terminal will have:
- Beautiful prompt with git integration
- Numbered directory listing
- Colorful file listings with icons
- Fun ASCII art commands
- System information display

## 🤝 Contributing

Feel free to:
- Fork and modify the configuration
- Share your improvements
- Report issues or suggestions

## 📄 License

This configuration is provided as-is. Use and modify freely!

## 🎉 Enjoy Your New Terminal!

Created with ❤️ by Abdo

---

*For detailed installation instructions and usage examples, please refer to `terminal_setup_guide.md`*
