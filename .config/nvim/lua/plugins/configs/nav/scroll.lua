--// Imports
local Neoscroll = require("neoscroll")
local NeoscrollConfig = require("neoscroll/config")

--// Core
Neoscroll.setup()
NeoscrollConfig.set_mappings({
    ["<C-u>"] = { "scroll", {"-vim.wo.scroll", "true", "150"} },
    ["<C-d>"] = { "scroll", {"vim.wo.scroll", "true", "150"} },
    ["K"] = { "scroll", { "-10", "true", "150" } },
    ["J"] = { "scroll", { "10", "true", "150" } }
})
