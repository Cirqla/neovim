local C = require("Cirqla.colors")
local U = require("Cirqla.utils")
local O = require("Cirqla.config").options

return {
	Comment = { fg = C["000110"], italic = O.italic_comments }, -- Example for comments, change to fit your needs
	ColorColumn = { bg = C.bg_visual },
	Conceal = { fg = C["000010"] },                          -- Change to appropriate QR code color

	Cursor = { fg = C.bg, bg = C.fg },
	lCursor = { fg = C.bg },
	CursorIM = { fg = C.fg },
	CursorColumn = { bg = U.blend(C.bg, C.bg_visual, O.cursorline.blend) },
	CursorLine = { bg = C.bg_highlight, bold = O.cursorline.bold },
	CursorLineNr = { fg = C.fg_highlight, bold = O.cursorline.bold_number },
	CursorLineSign = {},

	Directory = { fg = C.fg_highlight },

	EndOfBuffer = { fg = C.fg_sidebar },

	ErrorMsg = { fg = C.error },

	VertSplit = { fg = C.fg_inactive, bg = C.bg },
	WinSeparator = { fg = C.fg_inactive, bg = C.bg },

	Folded = { fg = C.fg_fold, bg = C.bg_fold },
	FoldColumn = { bg = C.bg_fold, fg = C.fg_fold },

	SignColumn = { bg = C.bg_sidebar, fg = C.fg_sidebar },
	SignColumnSB = { bg = C.bg_sidebar, fg = C.fg_sidebar },

	Substitute = { bg = C["001001"], fg = C.bg }, -- Example of a substitute color, change to fit your needs

	LineNr = { fg = C.fg_sidebar },

	MatchParen = { underline = true, bold = true, sp = C.bg_highlight },

	ModeMsg = { fg = C.fg, bold = true },
	MsgArea = { fg = C.fg },
	MoreMsg = { fg = C["001001"] }, -- Change as needed
	NonText = { fg = C["000010"] },

	Normal = { fg = C.fg, bg = C.bg },
	NormalNC = { fg = C.fg, bg = C.bg },
	NormalSB = { fg = C.fg_sidebar, bg = C.bg_sidebar },

	NormalFloat = { fg = C.fg_float, bg = C.bg_float },
	FloatBorder = { fg = C.fg_float_border, bg = C.bg_float_border },

	Pmenu = { bg = C.bg_popup, fg = C.fg_popup },
	PmenuSel = { bg = C.bg_selected },
	PmenuSbar = { bg = C["000001"] },                 -- Change as needed
	PmenuThumb = { bg = C["000001"], fg = C["000001"] }, -- Change as needed

	Question = { fg = C.info },
	QuickFixLine = { bg = C.bg_visual, bold = true },

	Search = { bg = C["000000"], fg = C["000011"], bold = true, underline = true }, -- Change as needed
	IncSearch = { bg = C["001001"], fg = C["000001"], bold = true },
	CurSearch = { link = 'IncSearch' },

	SpecialKey = { link = 'NonText' },

	SpellBad = { sp = C.error, undercurl = true },
	SpellCap = { sp = C.warning, undercurl = true },
	SpellLocal = { sp = C.info, undercurl = true },
	SpellRare = { sp = C.hint, undercurl = true },

	StatusLine = { fg = C.fg_sidebar, bg = C.bg_statusline }, -- status line of current window
	StatusLineNC = { fg = C["011010"], bg = C.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
	TabLine = { bg = C.bg_statusline, fg = C.fg },          -- tab pages line, not active tab page label
	TabLineFill = { bg = C.black0, fg = C.none },           -- tab pages line, where there are no labels
	TabLineSel = { fg = C.fg_bright, bg = C.bg },           -- tab pages line, active tab page label
	Title = { fg = C.fg_bright, bold = true },              -- titles for output from ":set all", ":autocmd" etc.
	Visual = { bg = C.bg_visual, bold = O.cursorline.bold }, -- Visual mode selection
	VisualNOS = { bg = C.bg_visual },                       -- Visual mode selection when vim is "Not Owning the Selection".
	WarningMsg = { fg = C.warning },                        -- warning messages
	Whitespace = { fg = C["010100"] },                      -- "nbsp", "space", "tab" and "trail" in 'listchars'
	WildMenu = { bg = C.bg_visual },                        -- current match in 'wildmenu' completion
	WinBar = { bg = C.bg_dark, fg = C.fg },
	WinBarNC = { bg = C.bg_dark, fg = C.fg_inactive },

}
