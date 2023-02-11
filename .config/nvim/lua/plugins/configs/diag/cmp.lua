--// Imports
local Utils = require("core/utils")

local LuaSnip = require("luasnip")
local Cmp = require("cmp")
local CmpAutoPairs = require("nvim-autopairs/completion/cmp")

--// Variables
local Icons = {
  ["Text"] = "",
  ["Method"] = "",
  ["Function"] = "",
  ["Constructor"] = "",
  ["Field"] = "ﰠ",
  ["Variable"] = "",
  ["Class"] = "",
  ["Interface"] = "",
  ["Module"] = "",
  ["Property"] = "",
  ["Unit"] = "",
  ["Value"] = "",
  ["Enum"] = "",
  ["Keyword"] = "",
  ["Snippet"] = "",
  ["Color"] = "",
  ["File"] = "",
  ["Reference"] = "",
  ["Folder"] = "",
  ["EnumMember"] = "",
  ["Constant"] = "",
  ["Struct"] = "פּ",
  ["Event"] = "",
  ["Operator"] = "",
  ["TypeParameter"] = "",
}

--// Core
Cmp.event:on("confirm_done", CmpAutoPairs.on_confirm_done())

Cmp.setup({
    ["window"] = {
        ["completion"] = {
            ["border"] = Utils.GetBorder("FloatBorder"),
            ["winhighlight"] = "Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None"
        },
        ["documentation"] = {
            ["border"] = Utils.GetBorder("FloatBorder")
        }
    },
    ["snippet"] = {
        ["expand"] = function(Args)
            LuaSnip.lsp_expand(Args.body)
        end
    },
    ["formatting"] = {
        ["format"] = function(_, VimItem)
            VimItem["kind"] = string.format("%s %s", Icons[VimItem["kind"]], VimItem["kind"])

            return VimItem
        end
    },
    ["mapping"] = {
        ["<S-TAB>"] = Cmp.mapping.select_prev_item(),
        ["<TAB>"] = Cmp.mapping.select_next_item(),
        ["<ESC>"] = Cmp.mapping.close(),
        ["<CR>"] = Cmp.mapping.confirm({
            ["behavior"] = Cmp.ConfirmBehavior.Insert,
            ["select"] = true
        })
    },
    ["sources"] = {
        { ["name"] = "nvim_lsp" },
        { ["name"] = "luasnip" },
        { ["name"] = "buffer" },
        { ["name"] = "nvim_lua" },
        { ["name"] = "path" },
        { ["name"] = "neorg" },
        { ["name"] = "spell" }
    }
})

vim.diagnostic.config({
    ["virtual_text"] = false,
    ["update_in_insert"] = true,
    ["severity_sort"] = true
})
