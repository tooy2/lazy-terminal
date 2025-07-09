# 🎨 Abdo's Custom Terminal Configuration

A beautiful and functional terminal setup featuring custom navigation, enhanced file listing, and fun commands.

## ✨ Features

- **🚀 Powerlevel10k Theme** - Modern and informative prompt
- **🔢 Numbered Directory Navigation** - Navigate with `cdd` and `cd 1`
- **📁 Enhanced File Listing** - Beautiful icons and git integration with `eza`
- **🎭 Fun Commands** - Matrix effects, ASCII art, cowsay, and more
- **⚡ Productivity Aliases** - Quick shortcuts for common tasks
- **🔧 Smart Fallbacks** - Works even without optional dependencies

## 📋 Detailed Commands & Aliases

This section provides an extensive list of custom commands and aliases available in this terminal configuration.

### 📁 Enhanced Directory Navigation

#### `cdd` - Display Numbered Directories
Shows all directories in the current folder with numbers for easy navigation.
```bash
cdd
```
**Output:**
```
Available directories:
1. 📁 Documents
2. 📁 Downloads  
3. 📁 Pictures

Usage: cd <number> to change to that directory
```

#### `cd <number>` - Navigate by Number
Enhanced `cd` command that accepts directory numbers from `cdd` output.
```bash
cd 3          # Changes to the 3rd directory
cd ~/Documents # Still works normally
```

### 📋 Enhanced File Listing (with eza)

#### `ls` - Basic List with Icons
```bash
ls
```
Shows files and folders with colorful icons.

#### `ll` - Long Format with Details
```bash
ll
```
Long listing format with icons, headers, and git status information.

#### `la` - All Files (including hidden)
```bash
la
```
Shows all files including hidden ones in long format with icons.

#### `lt` - Tree View
```bash
lt
```
Displays directory structure as a tree (2 levels deep) with icons.

#### `lta` - Tree View with Hidden Files
```bash
lta
```
Tree view including hidden files and directories.

### 🎨 Fun & Visual Commands

#### `matrix` - Matrix Digital Rain
```bash
matrix
```
Displays the famous Matrix digital rain effect in your terminal.

#### `fortune-cow` - Random Quote with Cow
```bash
fortune-cow
```
Shows a random quote or fortune with ASCII cow art.

#### `big-text` - ASCII Art Text
```bash
big-text "Your Text Here"
```
Converts text into large ASCII art letters.

#### `rainbow` - Rainbow Text
```bash
rainbow
echo "Hello World" | rainbow
```
Makes any text appear in rainbow colors.

#### `welcome` - Welcome Message
```bash
welcome
```
Displays "Welcome [username]" in big rainbow text.


#### `random-cow` - Rainbow Fortune Cow
```bash
random-cow
```
Combines fortune + cowsay + rainbow colors for maximum fun.

#### `sysinfo` - Stylized System Info
```bash
sysinfo
```
Shows "System Info" in big rainbow text followed by detailed system information.

### 🔧 Git Aliases (Oh My Zsh)

This configuration includes extensive git aliases from Oh My Zsh. Here are some key ones:

#### Basic Git Commands
- `g` - `git`
- `gst` - `git status`
- `ga` - `git add`
- `gaa` - `git add --all`
- `gc` - `git commit --verbose`
- `gca` - `git commit --verbose --all`
- `gp` - `git push`
- `gl` - `git pull`

#### Git Branches
- `gb` - `git branch`
- `gco` - `git checkout`
- `gcb` - `git checkout -b`
- `gm` - `git merge`

#### Git Logs
- `glog` - `git log --oneline --decorate --graph`
- `glola` - `git log --graph --pretty --all`
- `glo` - `git log --oneline --decorate`

#### Git Diff
- `gd` - `git diff`
- `gdca` - `git diff --cached`
- `gds` - `git diff --staged`

## 🎯 Usage Examples

```bash
# Navigate quickly
cdd              # See numbered directories
cd 2             # Go to 2nd directory

# Beautiful file listings
lt               # Tree view
ll               # Detailed list
la               # All files

# Fun commands
welcome          # Greeting
arch-logo        # Show Arch logo
sysinfo          # System information
matrix           # Matrix effect
random-cow       # Fun quote

# Git workflow
gst              # Check status
ga .             # Add all files
gc "message"     # Commit
gp               # Push
```

## 🎨 Visual Features

- **Icons**: All file listings show appropriate icons
- **Colors**: Syntax highlighting and colored output
- **Git Integration**: Git status in file listings
- **Tree Views**: Visual directory structure
- **Rainbow Text**: Fun colorful output
- **ASCII Art**: Big text and cow art

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

## 📝 Configuration Location

All custom commands are defined in `~/.zshrc`. The main sections are:

1. **Eza aliases** (lines 115-122)
2. **Custom cd function** (lines 124-150)
3. **Directory listing function** (lines 152-169)
4. **Fun commands** (lines 171-184)

The configuration includes:
- Enhanced file listing with eza
- Custom directory navigation
- Fun visual commands
- Git aliases from Oh My Zsh
- Zsh plugins for better experience

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
