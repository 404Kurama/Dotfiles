--// Imports
local Utils = require("core/utils")
local Servers = require("plugins/configs/diag/lsp/servers")

local Lsp = require("lspconfig")
local CmpLsp = require("cmp_nvim_lsp")

--// Core
for Server, Config in next, Servers do
    Config["autostart"] = true
    Config["capabilities"] = CmpLsp.default_capabilities()
    Config["on_attach"] = function(Client, Buffer)
        Utils.CommonOnAttach(Client, Buffer)
    end

    if Config["external_setup"] then
        Config["external_setup"](Config)
    else
        Lsp[Server].setup(Config)
    end

    if Config["post_init"] then
        Config["post_init"](Config)
    end
end

Utils.SetupLspBorders()
