--// Imports
local Utils = require("core/utils")

--// Core

--/// Plugins
Utils.LoadModule("core/plugins")

--/// Editor Core
Utils.LoadModule("core/options")
Utils.LoadModule("core/autocmds")
Utils.LoadModule("core/keybinds")

--/// Theme
Utils.LoadModule("plugins/configs/theme")

--// Misc
Utils.LoadModule("plugins/configs/misc/autosave")
Utils.LoadModule("plugins/configs/misc/treesitter")
