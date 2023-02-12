--// Imports
local Autosave = require("autosave")
local AutosaveFilters = require("autosave/filters")

--// Core
Autosave.setup({
    ["plugin"] = {
        ["force"] = false
    },
    ["events"] = {
        ["registry"] = true,
        ["triggers"] = {
            "InsertLeave", "TextChanged"
        }
    },
    ["debounce"] = {
        ["enabled"] = true,
        ["delay"] = 250
    },
    ["filters"] = {
        AutosaveFilters["writeable"],
        AutosaveFilters["not_empty"],
        AutosaveFilters["modified"]
    },
    ["hooks"] = {
        ["on_enable"] = nil,
        ["pre_filter"] = nil,
        ["pre_write"] = function ()
            vim.cmd("Format")
        end,
        ["post_write"] = nil
    }
})
