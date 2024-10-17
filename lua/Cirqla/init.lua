-- init.lua
local C = require 'Cirqla.config'
local G = require 'Cirqla.groups'
local U = require 'Cirqla.utils'

local M = {}

function M.load(opts)
	if not U.loaded() then
		vim.cmd('hi clear')
		vim.o.termguicolors = true
		vim.g.colors_name = U.NAME
	end

	-- Setup user options (if provided)
	if opts then C.setup(opts) end

	-- Apply theme with updated options
	require('Cirqla.colors').extend_palette(C.options)

	-- Now G.get_groups() can access updated options from C.options
	U.highlight(G.get_groups())
end

-- Add command to nvim
vim.api.nvim_create_user_command('Cirqla', function(args)
	M.load(args)
	vim.cmd('colorscheme Cirqla')
end, {
	nargs = 1,
})

M.setup = C.setup

return M
