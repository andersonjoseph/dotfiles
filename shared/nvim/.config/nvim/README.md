# My neovim Config

## Color Scheme

[kanagawa](https://github.com/rebelot/kanagawa.nvim)

![screenshot](https://i.imgur.com/JhCthBr.png)

## General Settings

| Type | Setting | Value | Description |
|------|---------|-------|-------------|
| Global | `guifont` | `"Cascadia Code:h13"` | Sets the GUI font |
| Option | `shiftwidth` | `2` | Sets the number of spaces used for each step of (auto)indent |
| Option | `ignorecase` | `true` | Ignores case in search patterns |
| Option | `number` | `true` | Displays line numbers |
| Option | `relativenumber` | `true` | Displays line numbers relative to the cursor |

## General Mappings

> Leader key: `,`

| Mode | Key Combination | Description |
|------|-----------------|-------------|
| Normal | `K`  | Trigger LSP hover information for the symbol under the cursor. |
| Normal | `<CR>` | Clears the search highlight |
| Normal | `<leader>[` | Switches to the previous buffer |
| Normal | `<leader>]` | Switches to the next buffer |
| Normal | `<leader>q` | Closes the current buffer and switches to the next one |
| Normal | `<c-s>` | Saves the current file |
| Insert | `<c-s>` | Exits insert mode and saves the current file |
| Terminal | `<Esc>` | Exits terminal mode |
| Normal | `<leader>ca` | Execute code actions suggested by the LSP server. |
| Normal | `<leader>rn` | Rename the symbol under the cursor using LSP capabilities. |
| Normal | `<leader>gd` | Jump to the definition of the symbol under the cursor. |
| Normal | `<leader>gi` | Jump to the implementation of the symbol under the cursor. |
| Normal | `<leader>vr` | Find all references to the symbol under the cursor using LSP. |
| Normal | `<leader>vd` | Open the diagnostic window to view code errors and warnings. |
| Normal | `<leader>y` | Copy to system clipboard |
| Normal | `<leader>p` | Paste from system clipboard |


## Plugins

| Plugin | Description | Link |
|--------|-------------|------|
| lsp-zero.nvim | A starting point to setup some lsp related features in neovim. | [GitHub](https://github.com/VonHeikemen/lsp-zero.nvim) |
| ctrl-p | A fuzzy file search plugin for Vim. | [GitHub](https://github.com/kien/ctrlp.vim) |
| lualine | A blazing fast and easy to configure Neovim statusline plugin written in Lua. | [GitHub](https://github.com/nvim-lualine/lualine.nvim) |
| nvim-web-devicons | A Lua fork of vim-devicons for Neovim, providing file icons. | [GitHub](https://github.com/nvim-tree/nvim-web-devicons) |
| nvim-tree | A file explorer tree for Neovim written in Lua. | [GitHub](https://github.com/nvim-tree/nvim-tree.lua) |

