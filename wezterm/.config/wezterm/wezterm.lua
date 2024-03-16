local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.font = wezterm.font('HurmitNerdFontMono')
config.color_scheme = 'rose-pine'
config.window_background_opacity = .98

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

config.force_reverse_video_cursor = true

return config
