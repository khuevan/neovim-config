-- =============================================================================
-- General Neovim Settings
-- =============================================================================

-- Number & Cursor
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = false

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- UI
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.updatetime = 50
vim.opt.timeoutlen = 300
vim.opt.redrawtime = 1500
vim.opt.formatoptions:remove("cro")
vim.opt.mouse = "a"

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Fold
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

-- Pane
vim.opt.hidden = true
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.shortmess:append("c")
vim.opt.whichwrap:append("<,>,h,l")

-- Wild
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore = "*.o,*.obj,*.pyc,*.class,*.swp,*.bak"

-- Spell
vim.opt.spell = false
vim.opt.spelllang = "en"

-- Backup & Swap directories
vim.opt.backupdir = vim.fn.stdpath("data") .. "/backup"
vim.opt.directory = vim.fn.stdpath("data") .. "/swap"
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- Create directories if they don't exist
vim.fn.mkdir(vim.opt.backupdir:get(), "p")
vim.fn.mkdir(vim.opt.directory:get(), "p")
vim.fn.mkdir(vim.opt.undodir:get(), "p")

-- =============================================================================
-- Key Remapping & Abbreviations
-- =============================================================================

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Better indent
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- Move text up and down
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Better up/down
vim.keymap.set("n", "j", "gj", { noremap = true, silent = true })
vim.keymap.set("n", "k", "gk", { noremap = true, silent = true })

-- Center search results
vim.keymap.set("n", "n", "nzzzv", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, silent = true })

-- Paste without losing register
vim.keymap.set("x", "p", '"_dP', { noremap = true, silent = true })

-- Clear highlights
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", { noremap = true, silent = true })

-- Save
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", { noremap = true, silent = true })

-- Quick quit
vim.keymap.set("n", "qq", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "qa", ":qa<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "qw", ":wq<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "q!", ":q!<CR>", { noremap = true, silent = true })

-- Resize windows
vim.keymap.set("n", "<A-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Down>", ":resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

-- Tab manipulation
vim.keymap.set("n", "tn", ":tabnew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "to", ":tabonly<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "tc", ":tabclose<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "tm", ":tabmove", { noremap = true, silent = true })

-- Better vertical scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Undotree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", { noremap = true, silent = true })

-- =============================================================================
-- Autocommands
-- =============================================================================

-- Highlight on yank
vim.api.nvim_exec(
  [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup='IncSearch', timeout=300})
  augroup end
  ]],
  false
)

-- Remove trailing whitespace on save
vim.api.nvim_exec(
  [[
  augroup RemoveTrailingWhitespace
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
  augroup end
  ]],
  false
)

-- Remember last cursor position
vim.api.nvim_exec(
  [[
  augroup LastCursorPosition
    autocmd!
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit\|rebase' | execute "normal! g`\"" | endif
  augroup end
  ]],
  false
)

-- Auto-resize splits on window resize
vim.api.nvim_exec(
  [[
  augroup ResizeSplits
    autocmd!
    autocmd VimResized * :wincmd =
  augroup end
  ]],
  false
)

-- Automatically close NvimTree when it's the last buffer
vim.api.nvim_exec(
  [[
  augroup NvimTreeClose
    autocmd!
    autocmd BufEnter * if winnr('$') == 1 && &filetype == 'NvimTree' | q | endif
  augroup end
  ]],
  false
)
