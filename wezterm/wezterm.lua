-- local wezterm = require 'wezterm'
-- local act = wezterm.action
-- return {
-- 	color_scheme = "Catppuccin Mocha",
-- 	enable_wayland = true,
-- 	window_background_opacity = 0,
-- 	-- window_blur = true,
-- 	kde_window_background_blur = true,
-- 	-- background = 'black',
-- 	window_background_opacity = 0.7,	
-- 	font = wezterm.font("JetBrains Mono Nerd Font", {weight = "Medium"})
-- }

local wezterm = require 'wezterm'
local act = wezterm.action

local config = {
	color_scheme = "Catppuccin Mocha",
	enable_wayland = true,
	window_background_opacity = 0.7, -- Set final opacity
	kde_window_background_blur = true,
	font = wezterm.font("JetBrains Mono Nerd Font", { weight = "Medium" }),
	mouse_bindings = {
		{
			event = { Down = { streak = 1, button = "Right" } },
			mods = "NONE",
			action = wezterm.action_callback(function(window, pane)
				local has_selection = window:get_selection_text_for_pane(pane) ~= ""
				if has_selection then
					window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
					window:perform_action(act.ClearSelection, pane)
				else
					window:perform_action(act.PasteFrom("Clipboard"), pane)
				end
			end),
		},
	},
}

return config
