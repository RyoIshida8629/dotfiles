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
config.default_cwd = "/home/ryoishida"
config.font_size = 12

return config
