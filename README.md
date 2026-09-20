# Neovim Config - kvanv

Just my personal Neovim configuration.

---

## Installation

### 1. Backup existing config (optional)

```bash
# Linux/Mac
mv ~/.config/nvim ~/.config/nvim.bak

# Windows (default path)
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
```

### 2. Setup config path

> **Personal Note:** I prefer keeping Neovim config at `$HOME\.config\nvim` instead of the default `$env:LOCALAPPDATA\nvim` for consistency with Linux/macOS and other dotfiles.

**Set environment variable (PowerShell)**
```powershell
# Add to your PowerShell profile (~/.config/powershell/Microsoft.PowerShell_profile.ps1)
$env:XDG_CONFIG_HOME = "$HOME\.config"
```
or
```powershell
[Environment]::SetEnvironmentVariable("XDG_CONFIG_HOME", "$HOME\.config", "User")
```

Then Neovim will look for config at `~/.config/nvim`.

### 3. Clone or copy this config

```bash
# Clone repo (config will be at ~/.config/nvim)
git clone https://github.com/khuevan/neovim-config.git "$HOME\.config\nvim"

# Or copy folder
Copy-Item -Path "d:\projects\personal\nvim-setup" -Destination "$HOME\.config\nvim" -Recurse
```

### 4. Open Neovim

```bash
nvim
```

Plugins and language servers will be **automatically installed** on first launch.

> Note: All LSP servers (Python, Rust, Lua, etc.) are installed automatically via Mason.

---

## Structure

```
nvim-setup/
|-- init.lua                    # Entry point, loads configuration
|-- README.md                   # This file
|-- lua/
|   |-- config/                # Detailed config for each plugin
|   |   |-- options.lua        # General settings (indent, search, ...)
|   |   |-- lazy.lua           # Plugin manager
|   |   |-- lsp.lua            # Language Server Protocol
|   |   |-- mason.lua          # LSP/DAP/Formatter installer
|   |   |-- cmp.lua            # Completion engine
|   |   |-- treesitter.lua     # Syntax highlighting
|   |   |-- telescope.lua      # Fuzzy finder
|   |   |-- nvim-tree.lua      # File explorer
|   |   |-- lualine.lua        # Status line
|   |   |-- bufferline.lua     # Tab bar
|   |   |-- tokyonight.lua     # Color theme
|   |   |-- gitsigns.lua       # Git gutter signs
|   |   |-- neogit.lua         # Git TUI
|   |   |-- toggleterm.lua     # Integrated terminal
|   |   |-- harpoon.lua        # Quick file navigation
|   |   |-- whichkey.lua       # Keybinding hints
|   |   |-- comment.lua        # Comment toggle
|   |   |-- flash.lua          # Enhanced jump
|   |   |-- todo-comments.lua  # TODO/FIX highlighting
|   |   |-- rust-tools.lua     # Rust tools
|   |   |-- codeium.lua        # AI completion
|   |   |-- oil.lua            # File manager in buffer
|   |   |-- indent-blankline.lua # Indent guides
|   |   |-- lazygit.lua        # LazyGit integration
|   |
|   |-- plugins/
|       |-- init.lua           # Plugin list
```

---

## Features

### UI & Interface

| Plugin | Description |
|--------|-------------|
| [tokyonight](https://github.com/folke/tokyonight.nvim) | Beautiful dark theme |
| [lualine](https://github.com/nvim-lualine/lualine.nvim) | Status line with LSP indicators |
| [bufferline](https://github.com/akinsho/bufferline.nvim) | Tab management |
| [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) | File explorer |
| [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) | Visual indentation guides |

### Fuzzy Finding & Navigation

| Plugin | Description |
|--------|-------------|
| [telescope](https://github.com/nvim-telescope/telescope.nvim) | Find files, grep, buffers, LSP symbols |
| [flash](https://github.com/folke/flash.nvim) | Jump with quick labels |
| [harpoon](https://github.com/ThePrimeagen/harpoon) | Quick file switching |

### Language Support

| Plugin | Description |
|--------|-------------|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client |
| [mason](https://github.com/williamboman/mason.nvim) | LSP/DAP/Formatter manager |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Completion engine |
| [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Advanced syntax highlighting |
| [rust-tools](https://github.com/simrat39/rust-tools.nvim) | Rust tools (hover, run, debug) |

### Python

| Plugin | Description |
|--------|-------------|
| [ruff](https://github.com/ekolbel/ruff.nvim) | Ultra-fast linting and formatting |
| [pyright](https://github.com/microsoft/pyright) | Type checking |
| [nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python) | Debugging |

### Rust

| Plugin | Description |
|--------|-------------|
| [rust-analyzer](https://github.com/rust-lang/rust-analyzer) | LSP for Rust |
| [rust-tools](https://github.com/simrat39/rust-tools.nvim) | Hover actions, inlay hints, macro expansion |

### Git

| Plugin | Description |
|--------|-------------|
| [neogit](https://github.com/TimUntersberger/neogit) | Git TUI |
| [gitsigns](https://github.com/lewis6991/gitsigns.nvim) | Git signs in gutter |
| [lazygit](https://github.com/kdheepak/lazygit.nvim) | Terminal git UI |

### Utilities

| Plugin | Description |
|--------|-------------|
| [toggleterm](https://github.com/akinsho/toggleterm.nvim) | Integrated terminal |
| [which-key](https://github.com/folke/which-key.nvim) | Keybinding hints display |
| [comment](https://github.com/numToStr/Comment.nvim) | Toggle comments |
| [todo-comments](https://github.com/folke/todo-comments.nvim) | Highlight TODO/FIX/HACK |
| [codeium](https://github.com/Exafunction/codeium.nvim) | AI code completion (free) |

---

## Keybindings

See [KEYBINDINGS.md](./KEYBINDINGS.md) for the full keybindings reference.

---
