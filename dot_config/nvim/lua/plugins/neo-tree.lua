return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- アイコン表示用
  },
  -- neo-tree 自身が内部で遅延読み込みを制御するため false を指定
  lazy = false,
  
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    -- neo-tree が最後のウィンドウになった場合、Neovim を自動で閉じる
    close_if_last_window = false,
    
    window = {
      position = "left",
      width = 30,
    },
    
    filesystem = {
      -- 隠しファイルや .gitignore されたファイルの表示設定
      filtered_items = {
        visible = false, -- デフォルトで表示状態にするかどうか
        hide_dotfiles = false, -- .env などの隠しファイルを表示
        hide_gitignored = false, -- .gitignore されたファイルも表示
      },
      -- 現在開いているファイルに合わせてツリーのフォーカスを移動する
      follow_current_file = {
        enabled = true,
      },
      -- Netrw（標準エクスプローラ）の代わりに Neo-tree を使用する
      hijack_netrw_behavior = "open_default",
    },
  },
  
  keys = {
    { "<leader>tr", "<cmd>Neotree toggle<CR>", desc = "Neo-tree: ファイルツリーの表示/非表示" },
  },
}
