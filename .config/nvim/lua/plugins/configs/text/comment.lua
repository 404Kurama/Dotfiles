--// Imports
local Comment = require("Comment")
local TodoComment = require("todo-comments")

--// Core
Comment.setup({
    ["ignore"] = "^$",
    ["toggler"] = {
        ["line"] = "<leader>cc",
        ["block"] = "<leader>bc"
    },
    ["opleader"] = {
        ["line"] = "<leader>c",
        ["block"] = "<leader>b"
    }
})

TodoComment.setup({})
