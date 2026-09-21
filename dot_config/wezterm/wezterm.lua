local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.default_domain = 'WSL:Ubuntu' -- デフォルトシェル設定

config.audible_bell = 'Disabled' -- キー入力時ビープ音無効化

-- フォント設定
config.font = wezterm.font_with_fallback {
  'UDEV Gothic NF' 
}

config.default_cwd = "/home/ryoishida" -- デフォルトディレクトリ設定

config.use_ime = true -- 日本語入力を有効化
config.font_size = 12 -- フォントサイズ
config.window_background_opacity = 0.80 -- 背景を透過

-- カスタムテーマとして solarized-osaka を定義
config.color_schemes = {
  ['solarized-osaka'] = {
    foreground = '#839496',
    background = '#00141a',
    cursor_bg = '#839496',
    cursor_fg = '#00141a',
    cursor_border = '#839496',
    selection_bg = '#073642',
    selection_fg = '#839496',

    ansi = {
      '#002b36', -- black
      '#dc322f', -- red
      '#859900', -- green
      '#b58900', -- yellow
      '#268bd2', -- blue
      '#d33682', -- magenta
      '#2aa198', -- cyan
      '#eee8d5', -- white
    },
    brights = {
      '#073642', -- bright black
      '#cb4b16', -- bright red
      '#586e75', -- bright green
      '#657b83', -- bright yellow
      '#839496', -- bright blue
      '#6c71c4', -- bright magenta
      '#93a1a1', -- bright cyan
      '#fdf6e3', -- bright white
    },
  },
}

-- 定義したカラーテーマを適用
config.color_scheme = 'solarized-osaka'

return config
