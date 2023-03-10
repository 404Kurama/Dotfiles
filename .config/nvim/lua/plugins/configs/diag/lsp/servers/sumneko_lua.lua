return {
    ["settings"] = {
        ["Lua"] = {
            ["runtime"] = {
                ["version"] = "LuaJIT",
                ["path"] = vim.split(package.path, ";")
            },
            ["diagnostics"] = {
                ["globals"] = { "vim" }
            },
            ["workspace"] = {
                ["library"] = {
                    vim.fn.expand("$VIMRUNTIME/lua"),
                    vim.fn.stdpath("config") .. "/lua"
                }
            },
            ["telemetry"] = {
                ["enable"] = false
            }
        }
    }
}
