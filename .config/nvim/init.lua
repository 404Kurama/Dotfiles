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

--/// Diagnostisc
Utils.LoadModule("plugins/configs/diag/lsp")
Utils.LoadModule("plugins/configs/diag/mason")
Utils.LoadModule("plugins/configs/diag/cmp")
Utils.LoadModule("plugins/configs/diag/lspsigns")
Utils.LoadModule("plugins/configs/diag/lspdiags")
Utils.LoadModule("plugins/configs/diag/format")

--// Misc
Utils.LoadModule("plugins/configs/misc/autosave")
Utils.LoadModule("plugins/configs/misc/treesitter")

--// Navigation
Utils.LoadModule("plugins/configs/nav/focus")
Utils.LoadModule("plugins/configs/nav/scroll")
Utils.LoadModule("plugins/configs/nav/leap")
