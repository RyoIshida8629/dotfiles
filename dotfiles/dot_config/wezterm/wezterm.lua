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
      '#002b36', -- bright black
      '#dc322f', -- bright red
      '#859900', -- bright green
      '#b58900', -- bright yellow
      '#268bd2', -- bright blue
      '#d33682', -- bright magenta
      '#2aa198', -- bright cyan
      '#eee8d5', -- bright white
    },
  },
}

-- 定義したカラーテーマを適用
config.color_scheme = 'solarized-osaka'

-- タブバー上部のタイトルバーを表示
config.window_decorations = "TITLE | RESIZE"

-- タブが一つしかない場合はタブバーを表示しない
config.hide_tab_bar_if_only_one_tab = true

-- タブバーの背景色を変更
config.window_background_gradient = {
  colors = { "#00141a" },
}

-- タブバーの背景色を透過
config.window_frame = {
  inactive_titlebar_bg = "none",
  active_titlebar_bg = "none",
}

-- タブバー右の+ボタンを非表示
config.show_new_tab_button_in_tab_bar = false

-- タブ右部の×ボタンを非表示
-- nightlyでのみ使用可能なオプションのためコメントアウト
-- config.show_close_tab_button_in_tabs = false

-- タブ同士境界線を非表示
config.colors = {
  tab_bar = {
    inactive_tab_edge = "none",
  },
}

-- タブの左右のパディングに仕様する文字を変更
local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle

-- アクティブタブに色をつける
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local background = "#00141a"
  local foreground = "#839496"
  local edge_background = "none"

  if tab.is_active then
    background = "#859900"
    foreground = "#FFFFFF"
  end

  local edge_foreground = background

  local title = "   " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "

  return {
    { Background = { Color = edge_background } },
    { Foreground = { Color = edge_foreground } },
    { Text = SOLID_LEFT_ARROW },
    { Background = { Color = background } },
    { Foreground = { Color = foreground } },
    { Text = title },
    { Background = { Color = edge_background } },
    { Foreground = { Color = edge_foreground } },
    { Text = SOLID_RIGHT_ARROW },
  }
end)

return config
