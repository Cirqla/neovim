local C = require 'Cirqla.config'
local G = require 'Cirqla.groups'
local U = require 'Cirqla.utils'

local M = {}

function M.load(opts)
	if not U.loaded() then
		vim.api.nvim_command 'hi clear'
		vim.o.termguicolors = true
		vim.g.colors_name = U.NAME
	end

	if opts then C.setup(opts) end

	-- Apply theme
	require('Cirqla.colors').extend_palette(C.setup(opts))
	U.highlight(G.get_groups())
end

-- Add command to nvim
vim.api.nvim_create_user_command('Cirqla', function(_)
	vim.api.nvim_command 'colorscheme Cirqla'
end, {
	nargs = 1,
})

M.setup = C.setup

return M
