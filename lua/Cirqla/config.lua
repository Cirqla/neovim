local M = {}

-- Default options
local defaults = {
	italic_comments = true,
	transparent_background = false,
	cursorline = {
		blend = 0.78,
		bold = true,
		bold_number = true
	},
	override = {},
}

-- Function to merge two tables
local function merge_tables(target, source)
	for key, value in pairs(source) do
		if target[key] ~= nil then
			target[key] = value
		else
			print(string.format("Warning: Attempting to override non-existent option: '%s'", key))
		end
	end
end

-- Function to override default options
function M.override_options(new_options)
	if type(new_options) ~= "table" then
		print("Error: Provided options should be a table.")
		return
	end

	merge_tables(M.options, new_options)

	if new_options.override and type(new_options.override) == "table" then
		merge_tables(M.options.override, new_options.override)
	end
end

-- Initialize options with defaults
M.options = vim.tbl_deep_extend('force', {}, defaults)

-- Function to set up the options
function M.setup(options)
	M.options = vim.tbl_deep_extend('force', M.options, options or {})
end

return M
