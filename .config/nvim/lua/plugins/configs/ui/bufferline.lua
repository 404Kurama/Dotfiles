--// Imports
local Cokeline = require("cokeline")

--// Functions
function GetHex(Hl, G)
	return vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID(Hl)), G)
end

--// Core
Cokeline.setup({
	  ["default_hl"] = {
		    ["fg"] = function(Buffer)
			      return Buffer["is_focused"] and GetHex("Normal", "fg") or GetHex("Comment", "fg")
		    end,
		    ["bg"] = GetHex("ColorColumn", "bg"),
	  },
    ["components"] = {
		    {
			      ["text"] = " ",
			      ["bg"] = GetHex("Normal", "bg"),
		    },
		    {
			      ["text"] = "",
		        ["fg"] = GetHex("ColorColumn", "bg"),
		        ["bg"] = GetHex("Normal", "bg"),
        },
        {
            ["text"] = function (Buffer)
                return Buffer.devicon.icon
            end,
            ["fg"] = function (Bufer)
                return Bufer.devicon.color
            end
        },
        {
            ["text"] = function (Buffer)
                return Buffer.filename
            end,
            ["style"] = "bold"
        },
		    {
			      ["text"] = "",
			      ["fg"] = GetHex("ColorColumn", "bg"),
			      ["bg"] = GetHex("Normal", "bg"),
        },
    },
})
