--// Imports
local Telescope = require("telescope")

--// Core
Telescope.load_extension("project")
Telescope.setup({
    ["defaults"] = {
        ["mappings"] = {
            ["i"] = {
                ["<C-u>"] = false,
                ["<C-d>"] = false,
            },
        },
    },
    ["extensions"] = {},
})
