local C = require("Cirqla.colors.colors")

function C.extended_palette(options)
	-- Backgrounds
	C.bg = C["000000"]         -- Main background
	C.bg_dark = C["000001"]    -- Darker background for inactive areas
	C.bg_inactive = C["000011"] -- Background for inactive windows
	C.bg_highlight = C["001100"] -- Highlighted background
	C.bg_visual = C["001011"]  -- Visual mode background
	C.bg_bright = C["001111"]  -- Bright background
	C.bg_sidebar = C["000010"] -- Sidebar background
	C.bg_statusline = C["000101"] -- Statusline background
	C.bg_selected = C["001000"] -- Background for selected items
	C.bg_fold = C["000011"]    -- Background for folded sections

	-- Foregrounds
	C.fg = C["011111"]         -- Main foreground (text)
	C.fg_dark = C["000011"]    -- Darker text
	C.fg_inactive = C["000111"] -- Inactive window text
	C.fg_highlight = C["001101"] -- Highlighted text
	C.fg_bright = C["001111"]  -- Bright foreground (text)
	C.fg_visual = C["001011"]  -- Visual mode text
	C.fg_sidebar = C["001100"] -- Sidebar text
	C.fg_statusline = C["001001"] -- Statusline text
	C.fg_selected = C["001110"] -- Text for selected items
	C.fg_fold = C["000111"]    -- Text for folded sections

	-- Popups
	C.bg_popup = C["000010"]     -- Popup background
	C.fg_popup = C["001000"]     -- Popup text
	C.bg_popup_border = C["000101"] -- Popup border background
	C.fg_popup_border = C["001011"] -- Popup border text

	-- Floating windows
	C.bg_float = C["000001"]     -- Background for floating windows
	C.fg_float = C["011111"]     -- Text for floating windows
	C.bg_float_border = C["000101"] -- Border background for floating windows
	C.fg_float_border = C["001011"] -- Border text for floating windows

	-- Diff highlighting
	C.diff = {
		change0 = C["001010"], -- Change color 1
		change1 = C["001100"], -- Change color 2
		add = C["001011"], -- Additions in diff
		delete = C["000111"] -- Deletions in diff
	}

	-- Git
	C.git = {
		add = C["001011"], -- Git additions
		delete = C["000111"], -- Git deletions
		change = C["001000"], -- Git changes
	}

	-- Diagnostics
	C.error = C["000111"] -- Error color
	C.warn = C["001000"] -- Warning color
	C.warning = C["001001"] -- Additional warning color
	C.hint = C["001010"] -- Hint color
	C.info = C["001100"] -- Info color
end

return C
