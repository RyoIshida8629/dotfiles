local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.default_domain = 'WSL:Ubuntu'
config.audible_bell = 'Disabled'
config.font = wezterm.font_with_fallback {
  'UDEV Gothic NF' 
}
config.default_cwd = "/home/ryoishida" -- デフォルトディレクトリ設定

config.use_ime = true -- 日本語入力を有効化
config.font_size = 12 -- フォントサイズ
config.window_background_opacity = 0.80 -- 背景を透過

-- カラーパレットで背景色を Solarized Osaka のHEX値に指定
config.colors = {
  background = '#00141a',
}

return config
