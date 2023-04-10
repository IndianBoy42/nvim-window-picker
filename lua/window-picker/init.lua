local FloatingHint = require('window-picker.hints.floating-big-letter-hint')
local builder = require('window-picker.builder')

local M = {}

local default_pick, default_pick_or_create

function M.pick_window(custom_config)
	return builder
		:new()
		:set_config(custom_config)
		:set_hint(FloatingHint:new())
		:set_picker()
		:set_filter()
		:build()
		:pick_window()
end

function M.pick_or_create(custom_config)
	custom_config = custom_config or {}
	custom_config.or_create = true
	custom_config.include_current_win = custom_config.include_current_win
		or true

	return M.pick_window(custom_config)
end
function M.setup() end

return M
