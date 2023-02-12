--// Imports
local LuaLine = require("lualine")
local Catppuccin = require("catppuccin/palettes")

--// Variables
local Colors = Catppuccin.get_palette()

--// Functions
function BufNotEmpty()
    return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
end

function FtNotEmpty()
    return vim.fn.empty(vim.bo.filetype) ~= 1
end

--// Core
LuaLine.setup({
    ["options"] = {
        ["icons_enabled"] = true,
        ["theme"] = "catppuccin",
        ["disabled_filetypes"] = { "neo-tree" },
        ["section_separators"] = {
            ["left"] = "",
            ["right"] = ""
        },
        ["component_separators"] = "|",
        ["globalstatus"] = true
    },
    ["sections"] = {
        ["lualine_a"] = { "mode" },
        ["lualine_b"] = {},
        ["lualine_y"] = {},
        ["lualine_z"] = {
            {
                function ()
                    return os.date("%X")
                end
            }
        },
        ["lualine_c"] = {
            {
                "filename",
                ["fmt"] = function (File)
                    return File or "[No name]"
                end,
                ["icon"] = " ",
                ["color"] = { ["fg"] = Colors["sky"], ["gui"] = "bold" }
            },
            {
                "branch",
                ["icon"] = "",
                ["color"] = { ["fg"] = Colors["red"], ["gui"] = "bold" }
            }
        },
        ["lualine_x"] = {
            {
                "location",
                ["fmt"] = function (Location)
                    return string.gsub(Location, " ", "")
                end,
                ["icon"] = "",
                ["color"] = { ["fg"] = Colors["flamingo"], ["gui"] = "bold" }
            }
        }
    }
})
