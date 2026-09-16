return {
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    terminal_colors = true,
  },
  config = function()
      vim.cmd.colorscheme("solarized-osaka")
  end,
}
