--// Imports
local Formatter = require("formatter")

--// Core
Formatter.setup({
    ["filetype"] = {
        ["lua"] = require("formatter.filetypes.lua").selene
    }
})
