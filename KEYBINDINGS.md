# Keybindings Sheet

Personal keybindings for Neovim setup. Edit this file to customize.


## Leader Key

| Key | Action |
|-----|--------|
| `<Space>` | Leader |
| `,` | Local leader |

---

## General

| Key | Action | Notes |
|-----|--------|-------|
| `<C-s>` | Save | |
| `qq` | Quick quit | |
| `qa` | Quit all | |
| `q!` | Force quit | |
| `jk` | Exit insert mode | |
| `<Esc>` | Clear search highlight | |
| `<C-d>` | Scroll down (centered) | |
| `<C-u>` | Scroll up (centered) | |

---

## Window Navigation

| Key | Action |
|-----|--------|
| `<C-h>` | Go left |
| `<C-j>` | Go down |
| `<C-k>` | Go up |
| `<C-l>` | Go right |

### Window Resize

| Key | Action |
|-----|--------|
| `<A-Up>` | Increase height |
| `<A-Down>` | Decrease height |
| `<A-Left>` | Decrease width |
| `<A-Right>` | Increase width |

---

## File Explorer

| Key | Action |
|-----|--------|
| `<Space>e` | Toggle nvim-tree |
| `<Space>fe` | Find file in tree |

---

## Telescope (Search)

| Key | Action |
|-----|--------|
| `<Space>ff` | Find files |
| `<Space>fg` | Live grep |
| `<Space>fb` | Buffers |
| `<Space>fh` | Help tags |
| `<Space>fr` | Recent files |
| `<Space>fc` | Commands |
| `<Space>fs` | LSP document symbols |
| `<Space>fw` | LSP workspace symbols |

---

## LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `K` | Hover docs |
| `gi` | Implementation |
| `gr` | References |
| `<Space>rn` | Rename |
| `<Space>ca` | Code actions |
| `<Space>f` | Format |
| `<Space>do` | Diagnostic float |

### Diagnostic Navigation

| Key | Action |
|-----|--------|
| `]d` | Next diagnostic |
| `[d` | Previous diagnostic |
| `<Space>dq` | Diagnostic list |

---

## Git

| Key | Action |
|-----|--------|
| `<Space>gg` | Neogit |
| `<Space>lg` | LazyGit |
| `]c` | Next hunk |
| `[c` | Previous hunk |

### Gitsigns

| Key | Action |
|-----|--------|
| `<Space>gs` | Stage hunk |
| `<Space>gr` | Reset hunk |
| `<Space>gS` | Stage buffer |
| `<Space>gu` | Undo stage |
| `<Space>gR` | Reset buffer |
| `<Space>gp` | Preview hunk |
| `<Space>gb` | Blame line |
| `<Space>gd` | Diff this |
| `<Space>gD` | Diff vs last commit |

---

## Rust

| Key | Action |
|-----|--------|
| `<Space>rr` | Runnables |
| `<Space>rc` | Expand macro |
| `<Space>rd` | Open Cargo.toml |
| `K` | Hover docs |
| `<Space>rm` | Expand macro |
| `<Space>ra` | Code action |
| `<Space>ro` | Open Cargo |
| `<Space>rs` | Rust SSR |
| `<Space>rp` | Parent module |
| `<Space>rb` | Build |
| `<Space>rt` | Toggle inlay hints |
| `<F5>` | Debug runnables |

---

## Python

| Key | Action |
|-----|--------|
| `<Space>py` | Run Python file |
| `<Space>pd` | Python debug |

---

## Buffers

| Key | Action |
|-----|--------|
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |
| `<Space>bd` | Close buffer |
| `tn` | New tab |
| `to` | Only tab |
| `tc` | Close tab |
| `tm` | Move tab |

---

## Terminal

| Key | Action |
|-----|--------|
| `<C-\>` | Toggle terminal |
| `<Space>tt` | Float terminal |
| `<Space>th` | Horizontal terminal |
| `<Space>tv` | Vertical terminal |

---

## Harpoon (File Navigation)

| Key | Action |
|-----|--------|
| `<Space>ha` | Add file |
| `<Space>hh` | Open menu |
| `<Space>h1` | Jump 1 |
| `<Space>h2` | Jump 2 |
| `<Space>h3` | Jump 3 |
| `<Space>h4` | Jump 4 |

---

## Todo Comments

| Key | Action |
|-----|--------|
| `]t` | Next todo |
| `[t` | Previous todo |
| `<Space>ft` | Search todos |

---

## Text Objects

| Key | Action |
|-----|--------|
| `af` | Around function |
| `if` | Inside function |
| `ac` | Around class |
| `ic` | Inside class |
| `aa` | Around parameter |
| `ia` | Inside parameter |

### Treesitter textobjects

| Key | Action |
|-----|--------|
| `]f` | Next function |
| `[f` | Previous function |
| `]F` | Next function end |
| `[F` | Previous function end |
| `]c` | Next class |
| `[c` | Previous class |

---

## Other

| Key | Action |
|-----|--------|
| `s` | Flash jump (normal) |
| `S` | Flash treesitter |
| `<Space>u` | Undotree |
| `<leader>y` | Yank to clipboard |
| `p` | Paste (visual) |

---

## Edit

| Key | Action |
|-----|--------|
| `<` | Indent left (visual) |
| `>` | Indent right (visual) |
| `<A-j>` | Move line down |
| `<A-k>` | Move line up |
| `gc` | Comment line |
| `gcc` | Comment toggle |
| `gb` | Comment block |

---
