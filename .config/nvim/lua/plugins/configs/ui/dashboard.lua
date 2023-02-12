--// Imports
local Alpha = require("alpha")

--// Functions
function CreateButton(Shortcut, Text, Command)
    local Options = {
        ["position"] = "center",
        ["text"] = Text,
        ["shortcut"] = Shortcut,
        ["cursor"] = 5,
        ["width"] = 36,
        ["align_shortcut"] = "right",
        ["hl"] = "AlphaButtons",
    }

    if Command then
        Options["keymap"] = {
            "n",
            Shortcut:gsub("%s", ""):gsub("SPC", "<leader>"),
            Command,
            { ["noremap"] = true, ["silent"] = true },
        }
    end

    return {
        ["type"] = "button",
        ["val"] = Text,
        ["on_press"] = function()
            local Key = vim.api.nvim_replace_termcodes(Shortcut, true, false, true) or ""
            vim.api.nvim_feedkeys(Key, "normal", false)
        end,
        ["opts"] = Options,
    }
end

--// Core
Alpha.setup({
    ["layout"] = {
        {
            ["type"] = "text",
            ["val"] = {
                "",
                "",
                "      ██████        ██████      ",
                "    ██▒▒▒▒▒▒██    ██▒▒▒▒▒▒██    ",
                "  ██▒▒▒▒  ▒▒▒▒████▒▒▒▒▒▒▒▒▒▒██  ",
                "██▒▒░░  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██",
                "██▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██",
                "██▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██",
                "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓██",
                "  ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██  ",
                "  ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓██  ",
                "    ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓██    ",
                "      ██▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓██      ",
                "        ██▒▒▒▒▒▒▒▒▒▒▓▓██        ",
                "          ██▒▒▒▒▒▒▓▓██          ",
                "            ██▒▒▓▓██            ",
                "              ████              ",
                "",
                "",
                "",
            },
            ["opts"] = {
                ["position"] = "center",
                ["hl"] = "AlphaHeader",
            },
        },
        {
            ["type"] = "group",
            ["val"] = {
                CreateButton("n", " New File", "<cmd>ene!<cr>"),
                CreateButton("f", " Find File", "<cmd>Telescope find_files<cr>"),
                CreateButton("p", " Projects", "<cmd>Telescope project<cr>"),
                CreateButton("h", " Recent files", "<cmd>Telescope oldfiles<cr>"),
                CreateButton("q", " Quit", "<cmd>q<cr>"),
            },
            ["opts"] = {
                ["spaceing"] = 2,
            },
        },
    },
})
