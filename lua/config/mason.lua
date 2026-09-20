-- =============================================================================
-- Mason Configuration (LSP/DAP/Formatter Installer)
-- =============================================================================

require("mason").setup({
  ui = {
    border = "rounded",
    icon = {
      package_pending = "",
      package_installed = "✓",
      package_uninstalled = "✗",
    },
    keymaps = {
      toggle_package_expand = "<CR>",
      install_package = "i",
      update_package = "u",
      check_package_version = "c",
      update_all_packages = "U",
      check_outdated_packages = "C",
      unpin_package = "p",
      toggle_package_version = "t",
      search_for_referencing = "r",
      list_package_updates = "R",
      remove_package = "d",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
  pip = {
    upgrade_pip = false,
  },
})
