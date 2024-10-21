local merge = require('Cirqla.utils').merge
local C = require 'Cirqla.config'

local M = {}

M.integrations = {
	'gitsigns',
}

M.native = {
	'editor',
	'syntax',
}

function M.get_groups()
	local groups = {}
	for _, native in ipairs(M.native) do
		groups = merge(groups, require('Cirqla.groups.native.' .. native))
	end
	for _, integration in ipairs(M.integrations) do
		groups = merge(groups, require('Cirqla.groups.integrations.' .. integration))
	end
	return merge(groups, C.options.override or {})
end

return M
