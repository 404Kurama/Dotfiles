--// Variables
local Settings = {
    --/// General
    ["completeopt"] = "menu,noinsert,noselect,preview",
    ["showmode"] = false,
    ["updatetime"] = 250,
    ["mouse"] = "a",
    ["termguicolors"] = true,
    ["clipboard"] = "unnamedplus",
    ["shortmess"] = "fxtToOIF",
    ["lazyredraw"] = true,

    --/// Indenting
    ["expandtab"] = true,
    ["shiftwidth"] = 4,
    ["tabstop"] = 2,
    ["softtabstop"] = 2,
    ["smartindent"] = true,

    --/// Number
    ["number"] = true,
    ["relativenumber"] = true
}

local DisabledBuiltIns = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

--// Core

--/// Load Settings
for Property, Value in next, Settings do
    vim.opt[Property] = Value
end

--/// Disabled Built Ins
for _, Plugin in next, DisabledBuiltIns do
    vim.g["loaded_" .. Plugin] = true
end
