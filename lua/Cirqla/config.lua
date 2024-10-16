local M = {}

-- Default options
M.options = {
	italic_comments = true,
	transparent_background = false,
	override = {},
}

local function merge_tables(target, source)
	for key, value in pairs(source) do
		if target[key] ~= nil then
			target[key] = value
		else
			print(string.format("Warnung: Versuch, nicht vorhandene Option zu überschreiben: '%s'", key))
		end
	end
end

function M.override_options(new_options)
	if type(new_options) ~= "table" then
		print("Fehler: Bereitgestellte Optionen sollten eine Tabelle sein.")
		return
	end

	merge_tables(M.options, new_options)

	if new_options.override and type(new_options.override) == "table" then
		merge_tables(M.options.override, new_options.override)
	end
end

return M
