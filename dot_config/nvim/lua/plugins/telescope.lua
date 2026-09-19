return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "ファイル検索" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "文字列検索" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "バッファ検索" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "履歴検索" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "ヘルプ検索" },
  },
  opts = {
  },
}
