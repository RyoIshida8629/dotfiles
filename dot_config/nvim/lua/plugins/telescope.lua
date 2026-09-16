return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  -- キーバインド定義（押した瞬間に Telescope がロードされる）
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
    { "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search current buffer" },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        path_display = { "truncate" }, -- パス長表示の最適化
      },
    })
    -- fzf 拡張の読み込み
    telescope.load_extension("fzf")
  end,
}
