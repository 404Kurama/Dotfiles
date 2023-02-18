--// Imports
local Formatter = require("formatter")

--// Core
Formatter.setup({
    ["filetype"] = {
        ["lua"] = require("formatter.filetypes.lua").stylua,
        ["typescript"] = require("formatter.filetypes.typescript").prettier,
        ["typescriptreact"] = require("formatter.filetypes.typescriptreact").prettier,
        ["javascript"] = require("formatter.filetypes.javascript").prettier,
        ["python"] = require("formatter.filetypes.python").black
    },
})
