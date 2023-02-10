--// Imports
local Plugins = require("plugins")

--// Variables
local Lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

--// Core
if not vim.loop.fs_stat(Lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        Lazypath
    })
end

vim.opt.runtimepath:prepend(Lazypath)
require("lazy").setup(Plugins["Plugins"], Plugins["Opts"])
