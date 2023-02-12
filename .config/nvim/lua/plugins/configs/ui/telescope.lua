--// Imports
local Telescope = require("telescope")

--// Core
Telescope.setup({
    ["defaults"] = {
        ["mappings"] = {
            ["i"] = {
                ["<C-u>"] = false,
                ["<C-d>"] = false
            }
        }
    },
    ["extensions"] = {}
})
