# Neovim Config - kvanv

Just my personal Neovim configuration.

---

## Installation

### 1. Backup existing config (optional)

```bash
# Linux/Mac
mv ~/.config/nvim ~/.config/nvim.bak

# Windows
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
```

### 2. Setup config path

> **Personal Note:** I prefer keeping Neovim config at `$HOME\.config\nvim` instead of the default `$env:LOCALAPPDATA\nvim` for consistency with Linux/macOS and other dotfiles.

**PowerShell** — add to your profile:
```powershell
$env:XDG_CONFIG_HOME = "$HOME\.config"
```

Or set permanently:
```powershell
[Environment]::SetEnvironmentVariable("XDG_CONFIG_HOME", "$HOME\.config", "User")
```

### 3. Clone config

```bash
git clone https://github.com/khuevan/neovim-config.git "$HOME\.config\nvim"
```

### 4. Open Neovim

```bash
nvim
```

Plugins and language servers are installed automatically via LazyVim plugin manager.

---

## Structure

```
nvim/
|-- init.lua                    # Entry point
|-- lua/
|   |-- config/                # Plugin configurations
|   |   |-- options.lua        # General settings
|   |   |-- lazy.lua           # Plugin manager
|   |   |-- lsp.lua            # LSP configuration
|   |   |-- mason.lua          # Package installer
|   |   |-- cmp.lua            # Completion engine
|   |   |-- treesitter.lua     # Syntax highlighting
|   |   |-- telescope.lua      # Fuzzy finder
|   |   |-- nvim-tree.lua      # File explorer
|   |   |-- lualine.lua        # Status line
|   |   |-- bufferline.lua     # Tab bar
|   |   |-- tokyonight.lua     # Color theme
|   |   |-- gitsigns.lua       # Git signs
|   |   |-- neogit.lua         # Git TUI
|   |   |-- toggleterm.lua     # Terminal
|   |   |-- conform.lua        # Formatter
|   |   |-- iron.lua           # Python REPL
|   |   |-- pytest.lua         # Pytest runner
|   |   |-- virtualenv.lua     # Virtualenv manager
|   |   |-- jupyter.lua        # Jupyter integration
|   |   |-- rust-tools.lua     # Rust tools
|   |   |-- whichkey.lua       # Keybinding hints
|   |   |-- comment.lua        # Comment toggle
|   |   |-- flash.lua          # Enhanced jump
|   |   |-- todo-comments.lua  # TODO highlighting
|   |   |-- dashboard.lua      # Startup screen
|   |   |-- lazygit.lua        # LazyGit
|   |   |-- indent-blankline.lua
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
| [dashboard](https://github.com/glepnir/dashboard-nvim) | Startup screen |
| [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) | Indent guides |

### Navigation

| Plugin | Description |
|--------|-------------|
| [telescope](https://github.com/nvim-telescope/telescope.nvim) | Find files, grep, buffers, LSP symbols |
| [flash](https://github.com/folke/flash.nvim) | Jump with quick labels |

### Language Support

| Plugin | Description |
|--------|-------------|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client |
| [mason](https://github.com/williamboman/mason.nvim) | LSP/Formatter manager |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Completion engine |
| [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Code formatter |

### Python

| Tool | Description |
|------|-------------|
| [pyright](https://github.com/microsoft/pyright) | Type checking |
| [ruff](https://github.com/astral-sh/ruff) | Fast linting/formatting |
| [iron.nvim](https://github.com/Vigemus/iron.nvim) | REPL integration |
| pytest | Test runner |

### Rust

| Tool | Description |
|------|-------------|
| [rust-analyzer](https://github.com/rust-lang/rust-analyzer) | LSP for Rust |
| [rust-tools](https://github.com/simrat39/rust-tools.nvim) | Hover, run, debug |

### Git

| Plugin | Description |
|--------|-------------|
| [neogit](https://github.com/NeogitOrg/neogit) | Git TUI |
| [gitsigns](https://github.com/lewis6991/gitsigns.nvim) | Git signs in gutter |
| [lazygit](https://github.com/kdheepak/lazygit.nvim) | Terminal git UI |

### Utilities

| Plugin | Description |
|--------|-------------|
| [toggleterm](https://github.com/akinsho/toggleterm.nvim) | Integrated terminal |
| [which-key](https://github.com/folke/which-key.nvim) | Keybinding hints |
| [comment](https://github.com/numToStr/Comment.nvim) | Toggle comments |
| [todo-comments](https://github.com/folke/todo-comments.nvim) | Highlight TODO/FIX/HACK |
| [undotree](https://github.com/mbbill/undotree) | Undo history |

---

## Keybindings

See [KEYBINDINGS.md](./KEYBINDINGS.md) for the full keybindings reference.

---

## Fonts

This config uses **Nerd Fonts** for icons and ligatures. Recommended fonts:

| Font | Download |
|------|----------|
| JetBrainsMono Nerd Font | `winget install DEVCOM.JetBrainsMonoNerdFont` |
| FiraCode Nerd Font | https://www.nerdfonts.com/font-downloads |
| Caskaydia Cove Nerd Font | https://www.nerdfonts.com/font-downloads |

### Installation

**Windows (winget):**
```powershell
winget install DEVCOM.JetBrainsMonoNerdFont
```

**Windows (manual):**
1. Go to https://www.nerdfonts.com/font-downloads
2. Download your preferred font (e.g., FiraCode or JetBrains Mono)
3. Extract and install the `.ttf` file

**Linux/Mac:**
```bash
# Using homebrew
brew install font-fira-code-nerd-font
# or
brew install font-jetbrains-mono-nerd-font
```

### Terminal Configuration

After installing, set the font in your terminal:

**Windows Terminal:** Settings → Appearance → Font → Select the Nerd Font

**Alacritty:** Add to `alacritty.toml`:
```toml
[font]
normal = { family = "JetBrainsMono Nerd Font" }
size = 11
```

**Neovim GUI:** The font is set in `lua/config/options.lua`:
```lua
vim.opt.guifont = "JetBrainsMono Nerd Font:h11"
```

