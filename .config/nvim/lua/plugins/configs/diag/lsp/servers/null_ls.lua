return {
    ["external_setup"] = function()
        local NullLs = require("null-ls")
        local Builtins = NullLs.builtins

        NullLs.setup({
            ["update_in_insert"] = true,
            ["sources"] = {
                Builtins.formatting.stylua,
                Builtins.formatting.prettier,

                Builtins.diagnostics.eslint_d,
                Builtins.diagnostics.selene,
            },
        })
    end,
}
