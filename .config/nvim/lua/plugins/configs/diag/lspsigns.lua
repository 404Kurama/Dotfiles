--// Signs
local Signs = {
    ["Error"] = ' ',
    ["Warn"] = ' ',
    ["Hint"] = ' ',
    ["Info"] = ' ',
}

--// Core
for Type, Icon in next, Signs do
    local Hl = "DiagnosticSign" .. Type

    vim.fn.sign_define(Hl, {
        ["text"] = Icon,
        ["texthl"] = Hl,
        ["numhl"] = Hl,
        ["priority"] = 15
    })
end
