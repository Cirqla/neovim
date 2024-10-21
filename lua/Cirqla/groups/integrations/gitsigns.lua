local C = require("Cirqla.colors")

return {
	-- Git Signs for added, changed, and deleted lines
	GitSignsAdd = { fg = C["001010"] }, -- Color for added lines
	GitSignsChange = { fg = C["001000"] }, -- Color for changed lines
	GitSignsDelete = { fg = C["000110"] }, -- Color for deleted lines

	-- Blame text on the current line
	GitSignsCurrentLineBlame = { fg = C["010001"] },

	-- Preview for adding lines in GitSigns
	GitSignsAddPreview = { fg = C["001011"], bg = C["000001"] }, -- Preview for added lines
	-- Preview for deleting lines in GitSigns
	GitSignsDeletePreview = { fg = C["000111"], bg = C["000001"] }, -- Preview for deleted lines

	-- Word diff (inline) for added, deleted, and changed lines
	GitSignsAddInline = {
		fg = C["001010"],
		bg = C["000001"],
		bold = true,
	}, -- Inline for added lines
	GitSignsDeleteInline = {
		fg = C["000111"],
		bg = C["000001"],
		bold = true,
	}, -- Inline for deleted lines
	GitSignsChangeInline = {
		fg = C["001101"],
		bg = C["000001"],
		bold = true,
	}, -- Inline for changed lines

	-- Virtual line for deleted lines in GitSigns
	GitSignsDeleteVirtLn = { bg = C["000001"], fg = C["000111"] }, -- Virtual line for deleted lines
}
