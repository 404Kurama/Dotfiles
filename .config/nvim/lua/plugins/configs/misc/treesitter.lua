--// Imports
local Treesitter = require("nvim-treesitter/configs")

--// Core
Treesitter.setup({
    ["highlight"] = {
        ["enable"] = true
    },
    ["indent"] = {
        ["enable"] = true
    },
    ["autotag"] = {
        ["enable"] = true
    },
    ["rainbow"] = {
        ["enable"] = true
    },
    ["ensure_installed"] = {
        "html",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "lua",
        "python",
        "rust"
    },
    ["textobjects"] = {
        ["select"] = {
            ["enable"] = true,
            ["lookahead"] = true,
            ["keymaps"] = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
                ["ap"] = "@parameter.outer",
                ["ip"] = "@parameter.inner",
                ["ab"] = "@block.outer",
                ["ib"] = "@block.inner"
            }
        },
        ["move"] = {
            ["enable"] = true,
            ["set_jumps"] = true,
            ["goto_next_start"] = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer" 
            },
            ["goto_next_end"] = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer"
            },
            ["goto_previous_start"] = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer"
            },
            ["goto_previous_end"] = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer"
            }
        }
    },
    ["incremetal_selection"] = {
        ["enable"] = true,
        ["keymaps"] = {
            ["node_incremental"] = "m",
            ["node_decremental"] = "M"
        }
    }
})
