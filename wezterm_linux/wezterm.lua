-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Configuration choices
config.color_scheme = 'Aci (Gogh)'
config.hyperlink_rules = wezterm.default_hyperlink_rules()
config.bypass_mouse_reporting_modifiers = 'ALT'
config.hide_tab_bar_if_only_one_tab = true
config.scrollback_lines = 3500
config.font_size = 15
config.window_background_opacity = 0.98

-- and finally, return the configuration to wezterm
return config

