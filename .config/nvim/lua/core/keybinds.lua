--// Imports
local Utils = require("core/utils")

--// Core

-- Disabled because annoying as fuck
Utils.MapKeybind("", "q:", "<Nop>")

-- Disable arrow key
Utils.MapKeybind("n", "<Up>", "<Nop>")
Utils.MapKeybind("n", "<Down>", "<Nop>")
Utils.MapKeybind("n", "<Left>", "<Nop>")
Utils.MapKeybind("n", "<Right>", "<Nop>")

-- Leader key
Utils.MapKeybind("", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Buffer Controls
Utils.MapKeybind("", "<Leader>q", "<cmd>bdelete<cr>")
Utils.MapKeybind("", "<C-q>", ":1,$bd! | :qa!<cr>")

-- Telescope & Tree
Utils.MapKeybind("n", "<Leader>f", "<cmd>Telescope find_files<cr>")
Utils.MapKeybind("n", "<C-b>", "<cmd>Telescope buffers<cr>")
Utils.MapKeybind("n", "<F1>", "<cmd>Telescope help_tags<cr>")
Utils.MapKeybind("n", "<Leader>g", "<cmd>Telescope live_grep<cr>")
Utils.MapKeybind("n", "<Leader>h", "<cmd>Neotree focus toggle<cr>")

-- Bufferline
Utils.MapKeybind("n", "]p", "<Plug>(cokeline-focus-next)")
Utils.MapKeybind("n", "[p", "<Plug>(cokeline-focus-prev)")

-- Formatting
Utils.MapKeybind("n", "<A-f>", "<cmd>FormatWrite<cr>")
