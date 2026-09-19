return {
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- style = "vivid", -- ハイコントラストモードを有効化
    transparent = false, -- 背景透過を無効化
    terminal_colors = true, -- Neovim内ターミナルのカラーパレットに設定
    styles = {
      comments = { italic = true }, -- コメントをイタリック体にする
      keywords = { italic = true }, -- キーワードをイタリック体にする
      functions = {},
      variables = {},
      sidebars = "dark", -- サイドバー背景色を暗くする
      floats = "dark", -- フローティングウィンドウ背景色を暗くする
    },
    sidebars = { "qf", "help", "terminal" }, -- sidebars = "dark" 指定時に背景色を暗くするサイドバーの設定（例：Quickfix, ヘルプ、ターミナルを有効化）
    -- vivid_brightness = 0.3, -- style = "vivid" 指定時のテキストの明るさ指数(0~1)
    hide_inactive_statusline = false, -- 非アクティブステータスラインを細い境界線に置換する設定を無効
    dim_inactive = false, -- 非アクティブウィンドウを暗くする設定を無効化
    lualine_bold = false, -- lualine テーマのセクションヘッダーを太字にする設定を無効化

    -- 特定のカラーグループを上書きして、他のグループやHEX値（16進数カラーコード）を使用できるようにする
    -- 関数は ColorScheme テーブルを引数として呼び出される
    -- @param colors ColorScheme
    on_colors = function(colors) end,

    -- 特定のハイライトを上書きして、他のグループやHEX値（16進数カラーコード）を使用できるようにする
    -- 関数は Highlights および ColorScheme テーブルを引数として呼び出される
    -- @param highlights Highlights
    -- @param colors ColorScheme
    on_highlights = function(highlights, colors) end,  
  },
  config = function(_, opts)
    require("solarized-osaka").setup(opts)
    vim.cmd.colorscheme("solarized-osaka")
  end,
}
