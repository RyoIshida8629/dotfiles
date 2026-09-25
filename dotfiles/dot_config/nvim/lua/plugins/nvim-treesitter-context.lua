return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    -- ファイル読み込み時に遅延ロードする場合（好みで変更してください）
    event = { "BufReadPost", "BufNewFile" },
    
    -- opts に設定を書くことで、自動的に require("treesitter-context").setup(opts) が実行されます
    opts = {
      enable = true,            -- プラグインの有効化
      max_lines = 0,            -- 表示するコンテキストの最大行数 (0 = 制限なし)
      min_window_height = 0,    -- コンテキストを表示するウィンドウの最小の高さ
      line_numbers = true,      -- 行番号の表示
      multiline_threshold = 20, -- 1つのコンテキストで表示する最大行数
      trim_scope = 'outer',     -- max_lines を超えた場合、外側・内側どちらを削るか ('inner', 'outer')
      mode = 'cursor',          -- コンテキストを計算する基準行 ('cursor', 'topline')
      separator = nil,          -- コンテキストとコードの境界線（例: '-' や '―'）
      zindex = 20,              -- ウィンドウの Z-index
    },
    
    -- 便利なキーマップの設定（公式推奨）
    keys = {
      {
        "[c", -- [c を押すと、現在のコンテキスト（関数定義など）にジャンプする
        function()
          require("treesitter-context").go_to_context(vim.v.count1)
        end,
        desc = "上部のコンテキストにジャンプ",
      },
    }
  }
}
