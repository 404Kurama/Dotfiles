local Plugins = {}

Plugins["opts"] = {
    ["ui"] = {
        ["border"] = "rounded"
    },
    ["defaults"] = {
        ["lazy"] = true
    },
    ["install"] = {
        ["colorscheme"] = { "catppuccin" },
        ["missing"] = true
    },
    ["git"] = {
        ["url_format"] = "git@github.com:%s.git"
    }
}

Plugins["Plugins"] = {
    --// Theme
    {
        "catppuccin/nvim",
        ["name"] = "catppuccin",
        ["build"] = ":CatppuccinCompile",
        ["lazy"] = false,
        ["priority"] = 1000
    },

    --// Misc
    {
        "nullishamy/autosave.nvim",
        ["branch"] = "dev"
    },
    {
        "nvim-treesitter/nvim-treesitter",
        ["build"] = ":TSUpdate",
        ["dependencies"] = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "windwp/nvim-ts-autotag",
            "windwp/nvim-autopairs",
            "p00f/nvim-ts-rainbow"
        }
    },

    --// Others
    {
        "MunifTanjim/nui.nvim"
    },
    {
        "nvim-lua/plenary.nvim"
    }
}

return Plugins
