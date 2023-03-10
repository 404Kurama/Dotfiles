local Plugins = {}

Plugins["opts"] = {
    ["ui"] = {
        ["border"] = "rounded",
    },
    ["defaults"] = {
        ["lazy"] = true,
    },
    ["install"] = {
        ["colorscheme"] = { "catppuccin" },
        ["missing"] = true,
    },
    ["git"] = {
        ["url_format"] = "git@github.com:%s.git",
    },
}

Plugins["Plugins"] = {
    --// Theme
    {
        "catppuccin/nvim",
        ["name"] = "catppuccin",
        ["build"] = ":CatppuccinCompile",
        ["lazy"] = false,
        ["priority"] = 1000,
    },

    --// Diagnostics
    {
        "neovim/nvim-lspconfig",
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
    },
    {
        "rubyowo/lspdiags.nvim",
    },
    {
        "L3MON4D3/LuaSnip",
    },
    {
        "hrsh7th/nvim-cmp",
        ["event"] = "InsertEnter",
        ["dependencies"] = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
        },
    },
    {
        "mhartington/formatter.nvim",
    },
    {
        "williamboman/mason.nvim",
    },

    --// Navigation
    {
        "karb94/neoscroll.nvim",
    },
    {
        "ggandor/leap.nvim",
    },
    {
        "beauwilliams/focus.nvim",
    },

    --// Text
    {
        "kyazdani42/nvim-web-devicons",
    },
    {
        "folke/todo-comments.nvim",
    },
    {
        "numToStr/Comment.nvim",
    },

    --// Ui
    {
        "nvim-telescope/telescope.nvim",
    },
    {
        "nvim-telescope/telescope-project.nvim",
    },
    {
        "stevearc/dressing.nvim",
        ["event"] = "VeryLazy",
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
    },
    {
        "noib3/nvim-cokeline",
    },
    {
        "rcarriga/nvim-notify",
    },
    {
        "nvim-lualine/lualine.nvim",
        ["lazy"] = false,
    },
    {
        "lewis6991/gitsigns.nvim",
    },
    {
        ["url"] = "https://gitlab.com/yorickpeterse/nvim-pqf",
    },
    {
        "goolord/alpha-nvim",
    },

    --// Misc
    {
        "nullishamy/autosave.nvim",
        ["branch"] = "dev",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        ["build"] = ":TSUpdate",
        ["dependencies"] = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "windwp/nvim-ts-autotag",
            "windwp/nvim-autopairs",
            "p00f/nvim-ts-rainbow",
        },
    },

    --// Others
    {
        "MunifTanjim/nui.nvim",
    },
    {
        "nvim-lua/plenary.nvim",
    },
}

return Plugins
