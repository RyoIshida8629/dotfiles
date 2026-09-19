return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    -- Netrw（標準のファイルエクスプローラ）を無効化して競合を防ぐ
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
  opts = {
    view = {
      width = 30,
      centralize_selection = true,
    },
    update_focused_file = {
      enable = true,
    },
    renderer = { group_empty = true },
    filters = { dotfiles = false, git_ignored = false },
  },
  keys = {
    -- Ctrl + n でサイドバーの開閉をトグル
    { "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
    -- Ctrl + f で現在開いているファイルを nvim-tree 上でフォーカス
    { "<leader>ef", "<cmd>NvimTreeFindFile<CR>", desc = "Focus current file in NvimTree" },
  },
}
