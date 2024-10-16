local C = require 'Cirqla.colors' -- Adjust the module name as necessary
local O = require('Cirqla.config').options

return {
	-- General syntax highlighting
	Comment = { fg = C["000011"], italic = O.italic_comments }, -- Comments
	Constant = { fg = C["001001"] },                         -- Constants
	String = { fg = C["001010"] },                           -- Strings
	Character = { fg = C["001011"] },                        -- Characters
	Number = { fg = C["001000"] },                           -- Numbers
	Boolean = { fg = C["001100"] },                          -- Booleans
	Float = { fg = C["001110"] },                            -- Floats
	Identifier = { fg = C["011111"] },                       -- Identifiers
	Function = { fg = C["000100"], bold = true },            -- Functions
	Statement = { fg = C["000101"], bold = true },           -- Statements
	Conditional = { fg = C["001111"], bold = true },         -- Conditionals
	Repeat = { fg = C["000110"], bold = true },              -- Repeat statements
	Label = { fg = C["001010"], bold = true },               -- Labels
	Operator = { fg = C["000111"] },                         -- Operators
	Keyword = { fg = C["001100"], bold = true },             -- Keywords
	PreProc = { fg = C["000100"] },                          -- Preprocessor directives
	Type = { fg = C["001001"], bold = true },                -- Types
	Structure = { fg = C["001000"], bold = true },           -- Structures
	Special = { fg = C["001010"] },                          -- Special characters

	-- Specific syntax highlightings
	Todo = { fg = C["000111"], bg = C["001010"], bold = true }, -- TODO comments
	Error = { fg = C["000111"], bg = C["000000"], bold = true }, -- Error highlights

	-- Markdown specific
	MarkdownHeading = { fg = C["000110"], bold = true }, -- Markdown headings
	MarkdownLinkText = { fg = C["001000"] },          -- Markdown link text
	MarkdownLinkUrl = { fg = C["001100"] },           -- Markdown link URLs

	-- Git specific
	GitAdd = { fg = C["001011"], bg = C["000100"], bold = true }, -- Git additions
	GitChange = { fg = C["001000"], bg = C["000101"], bold = true }, -- Git changes
	GitDelete = { fg = C["000111"], bg = C["001010"], bold = true }, -- Git deletions

	-- Spell Checking
	SpellBad = { sp = C["000111"], undercurl = true }, -- Bad spell check
	SpellCap = { sp = C["000101"], undercurl = true }, -- Capitalization errors
	SpellLocal = { sp = C["001010"], undercurl = true }, -- Local spell check errors
	SpellRare = { sp = C["001100"], undercurl = true }, -- Rare word check

	-- Miscellaneous
	Whitespace = { fg = C["000000"] }, -- Whitespace
}
