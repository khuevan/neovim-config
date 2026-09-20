-- =============================================================================
-- LazyGit Configuration
-- =============================================================================

require("lazygit").setup({
  cmd = {
    lazygit = "lazygit",
    lazygit_current_dir = "lazygit_current_dir",
  },
  terminalbeats = 1,
  focused_project_manager = true,
  cd_to_git_root = true,
  return_to_fugitive_after_quitting = false,
  on_close_callback = nil,
  on_open_callback = nil,
  sort_order = {
    "repository_name",
    "directory_name",
  },
  sidebar = {
    open_on_start = true,
    width = 40,
    width_percent = 0.5,
    side = "left",
  },
  file_panel = {
    title = "Files",
    title_length = 30,
    mode = "status_and_tree",
  },
  window = {
    floating = {
      border = "rounded",
      padding = 0,
    },
  },
})
