--// Imports
local Notify = require("notify")

--// Core
Notify.setup({
    ["stages"] = "slide",
    ["on_open"] = nil,
    ['on_close'] = nil,
    ["render"] = "minimal",
    ["timeout"] = 5000,
    ["max_width"] = nil,
    ["max_height"] = nil,
    ["background_colour"] = "Normal",
    ["minimum_width"] = 50,
    ["icons"] = {
        ["ERROR"] = "",
        ["WARN"] = "",
        ["INFO"] = "",
        ["DEBUG"] = "",
        ["TRACE"] = "✎",
    }
})

vim.notify = Notify
