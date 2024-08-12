-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'OneDark (base16)'
local onedark = wezterm.color.get_builtin_schemes()['OneDark (base16)']
config.colors = {
  scrollbar_thumb = onedark.selection_bg,
}

config.window_decorations = 'RESIZE|INTEGRATED_BUTTONS'
config.window_close_confirmation = 'NeverPrompt'
config.initial_cols = 214
config.initial_rows = 56

config.font = wezterm.font 'FiraCode Nerd Font Mono'
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.font_size = 13.0
config.line_height = 1.15

config.scrollback_lines = 10000
config.enable_scroll_bar = true

config.keys = {
  -- Clears the scrollback and viewport, and then sends CTRL-L to ask the shell to redraw its prompt
  {
    key = 'k',
    mods = 'CMD',
    action = act.Multiple {
      act.ClearScrollback 'ScrollbackAndViewport',
      act.SendKey { key = 'L', mods = 'CTRL' },
    },
  },
}


-- and finally, return the configuration to wezterm
return config


