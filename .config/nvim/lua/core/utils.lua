local Utils = {}

function Utils.LoadModule(Path)
    local Success, Response = pcall(require, Path)

    if not Success then
        vim.notify_once(string.format("Failed to load module %s | %s", Path, Response))
    end
end

function Utils.MapKeybind(Mode, Key, Thing, Opts)
    local Options = { noremap = true }

    if Opts then
        Options = vim.tbl_extend("force", Options, Opts)
    end

    vim.keymap.set(Mode, Key, Thing, Options)
end

function Utils.CommonOnAttach(_, Buffer)
    local Options = { noremap = true, silent = true }
    local Map = vim.api.nvim_buf_set_keymap

    Map(Buffer, "n", "gD", "<cmd>lua vim.lsp.Buffer.declaration()<cr>", Options)
    Map(Buffer, "n", "gd", "<cmd>lua vim.lsp.Buffer.definition()<cr>", Options)
    Map(Buffer, "n", "<C-Space>", "<cmd>lua vim.lsp.Buffer.hover()<cr>", Options)
    Map(Buffer, "n", "gi", "<cmd>lua vim.lsp.Buffer.implementation()<cr>", Options)
    Map(Buffer, "i", "<C-s>", "<cmd>lua vim.lsp.Buffer.signature_help()<cr>", Options)
    Map(Buffer, "n", "<C-s>", "<cmd>lua vim.lsp.Buffer.signature_help()<cr>", Options)
    Map(Buffer, "n", "<leader>D", "<cmd>lua vim.lsp.Buffer.type_definition()<cr>", Options)
    Map(Buffer, "n", "<leader>r", "<cmd>lua vim.lsp.Buffer.rename()<cr>", Options)
    Map(Buffer, "n", "gr", "<cmd>lua vim.lsp.Buffer.references()<cr>", Options)
    Map(Buffer, "", "<leader>ca", "<cmd>lua vim.lsp.Buffer.code_action()<cr>", Options)
    Map(Buffer, "", "gn", "<cmd>lua vim.diagnostic.goto_next()<cr>", Options)
    Map(Buffer, "", "gp", "<cmd>lua vim.diagnostic.goto_prev()<cr>", Options)
end

function Utils.GetBorder(Hl_Name)
    return {
        { "╭", Hl_Name },
        { "─", Hl_Name },
        { "╮", Hl_Name },
        { "│", Hl_Name },
        { "╯", Hl_Name },
        { "─", Hl_Name },
        { "╰", Hl_Name },
        { "│", Hl_Name },
    }
end

function Utils.SetupLspBorders()
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        ["border"] = Utils.GetBorder("FloatBorder")
    })

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        ["border"] = Utils.GetBorder("FloatBorder")
    })
end

return Utils
