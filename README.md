# 🖥️ My Dotfiles

A comprehensive collection of my system and application configurations for Fedora Atomic Sway with a tiling window manager setup.

[![Fedora](https://img.shields.io/badge/Fedora-51A2DA?style=for-the-badge&logo=fedora&logoColor=white)](https://getfedora.org/)
[![Sway](https://img.shields.io/badge/Sway-83A598?style=for-the-badge&logo=sway&logoColor=white)](https://swaywm.org/)
[![Neovim](https://img.shields.io/badge/Neovim-55a4fb?style=for-the-badge&logo=neovim&logoColor=white)](https://neovim.io/)

## 🎨 Desktop Environment

This configuration uses Sway as the tiling window manager with Waybar as the status bar, creating a highly efficient and customizable workspace.

### Key Components
- **Window Manager**: [Sway](https://swaywm.org/) - i3-compatible tiling window manager for Wayland
- **Status Bar**: [Waybar](https://github.com/Alexays/Waybar) - Highly customizable bar for Wayland compositors
- **Terminal**: [Alacritty](https://github.com/alacritty/alacritty) - GPU-accelerated terminal emulator
- **Application Launcher**: [Rofi](https://github.com/davatorium/rofi) - Window switcher and application launcher
- **Color Scheme**: Kanagawa Paper - A beautiful, easy-on-the-eyes theme

### Keyboard Layout
The system uses [keyd](https://github.com/rvaiya/keyd) for advanced keyboard remapping capabilities.

## 📁 File Structure

```
~/.config/
├── alacritty/
│   └── alacritty.toml     # Terminal configuration
├── sway/
│   └── config             # Window manager configuration
├── waybar/
│   ├── config.jsonc       # Status bar configuration
│   └── style.css          # Status bar styling
├── nvim/                  # Neovim configuration (see below)
└── keyd/
    └── default.conf       # Keyboard remapping configuration
```

## ⌨️ Sway Keybindings

| Keybinding | Action |
|------------|--------|
| `Alt+Return` | Open terminal (Alacritty) |
| `Alt+p` | Open application launcher (Rofi) |
| `Alt+h/j/k/l` | Focus windows (left/down/up/right) |
| `Alt+Shift+h/j/k/l` | Move windows (left/down/up/right) |
| `Alt+1-0` | Switch to workspace 1-10 |
| `Alt+Shift+1-0` | Move window to workspace 1-10 |
| `Alt+r` | Enter resize mode |
| `Alt+f` | Toggle fullscreen |
| `Alt+Shift+q` | Close focused window |
| `Alt+Shift+c` | Reload configuration |
| `Alt+Shift+e` | Exit sway |

## 🌊 Neovim Configuration

My Neovim setup is optimized for efficient development with intelligent code completion and navigation.

### Features

- **Intelligent Code Completion** with [blink.cmp](https://github.com/saghen/blink.cmp)
- **Blazing Fast Fuzzy Finder** using [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- **Native LSP Support** for intelligent code navigation
- **Beautiful UI Components** with [lualine](https://github.com/nvim-lualine/lualine.nvim) and [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
- **Distraction-Free Editing** with clean, minimal interface
- **Smart Auto-Closing** of brackets and quotes
- **Kanagawa Paper Theme** for easy-on-the-eyes syntax highlighting

### Neovim Key Mappings

#### Leader Key: `,`

##### General
| Mode | Key | Description |
|------|-----|-------------|
| Normal | `<CR>` | Clear search highlight |
| Normal | `<C-s>` | Save file |
| Insert | `<C-s>` | Exit insert mode and save |
| Terminal | `<Esc>` | Exit terminal mode |
| Normal | `<leader>q` | Close buffer and switch to next |
| Normal | `<C-n>` | Toggle file explorer |

##### LSP Functions
| Mode | Key | Description |
|------|-----|-------------|
| Normal | `K` | Show LSP hover information |
| Normal | `<leader>ca` | Execute LSP code actions |
| Normal | `<leader>rn` | Rename symbol |
| Normal | `<leader>gd` | Go to definition |
| Normal | `<leader>gi` | Go to implementation |

##### Clipboard Operations
| Mode | Key | Description |
|------|-----|-------------|
| Normal | `<leader>y` | Copy to system clipboard |
| Visual | `<leader>y` | Copy selection to system clipboard |
| Normal | `<leader>p` | Paste from system clipboard |

##### Fuzzy Finder
| Mode | Key | Description |
|------|-----|-------------|
| Normal | `<leader>ff` | Find files |
| Normal | `<leader>fg` | Live grep |
| Normal | `<leader>fb` | Find in buffer |
| Normal | `<leader>fm` | Find marks |
| Normal | `<leader>f<` | Resume previous search |
| Normal | `<leader><leader>` | Find open buffers |
| Normal | `<leader>fr` | Find LSP references |

## 🖥️ Terminal Setup

The terminal configuration includes:

- **Shell**: Bash with [Starship](https://starship.rs/) prompt
- **Terminal**: Alacritty with Kanagawa Paper color scheme
- **Font**: Terminess Nerd Font Mono

