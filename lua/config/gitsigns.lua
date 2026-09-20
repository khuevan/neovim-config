-- =============================================================================
-- Gitsigns Configuration
-- =============================================================================

require("gitsigns").setup({
  signs = {
    add = { text = "▎" },
    change = { text = "▎" },
    delete = { text = "✖" },
    topdelete = { text = "‾" },
    changedelete = { text = "▎" },
    untracked = { text = "★" },
  },
  signcolumn = true,
  numhl = false,
  linehl = false,
  word_diff = false,
  watch_gitdir = {
    interval = 1000,
    follow_files = true,
  },
  attach_to_untracked = true,
  current_line_blame = false,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol",
    delay = 200,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = "<author> • <author_time:%R> • <summary>",
  sign_priority = 6,
  update_on_selection = false,
  status_formatter = nil,
  max_file_length = 40000,
  preview_config = {
    border = "single",
    style = "minimal",
    relative = "cursor",
    row = 0,
    col = 1,
  },
  on_attach = function(buffer)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, desc)
      vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc, noremap = true, silent = true })
    end

    map("n", "]c", function()
      if vim.wo.diff then
        vim.cmd.normal({ args = { "]c" } })
      else
        gs.nav_hunk("next")
      end
    end, "Next hunk")

    map("n", "[c", function()
      if vim.wo.diff then
        vim.cmd.normal({ args = { "[c" } })
      else
        gs.nav_hunk("prev")
      end
    end, "Previous hunk")

    map("n", "<leader>gs", gs.stage_hunk, "Stage hunk")
    map("n", "<leader>gr", gs.reset_hunk, "Reset hunk")
    map("v", "<leader>gs", function()
      gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
    end, "Stage selected hunk")
    map("v", "<leader>gr", function()
      gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
    end, "Reset selected hunk")
    map("n", "<leader>gS", gs.stage_buffer, "Stage buffer")
    map("n", "<leader>gu", gs.undo_stage_hunk, "Undo stage hunk")
    map("n", "<leader>gR", gs.reset_buffer, "Reset buffer")
    map("n", "<leader>gp", gs.preview_hunk, "Preview hunk")
    map("n", "<leader>gb", function()
      gs.blame_line({ full = true })
    end, "Blame line")
    map("n", "<leader>gd", gs.diffthis, "Diff this")
    map("n", "<leader>gD", function()
      gs.diffthis("~")
    end, "Diff against last commit")
    map("o", "ih", "Inside hunk")
    map("x", "ih", "Inside hunk")
  end,
})
