--// Imports
local GitSigns = require("gitsigns")
local Utils = require("gitsigns/util")

--// Core
GitSigns.setup({
    ["current_line_blame"] = true,
    ["current_line_blame_formatter"] = function (Name, BlameInfo, Opts)
        if BlameInfo["author"] == Name then
            BlameInfo["author"] = "You"
        end

        local Text = "Not Commited Yet"

        if BlameInfo.author ~= "Not Commited Yet" then
            local DateTime

            if Opts["relative_time"] then
                DateTime = Utils.get_relative_time(tonumber(BlameInfo["author_time"]))
            else
                DateTime = os.date("%Y-%m-%d", tonumber(BlameInfo["author_time"]))
            end

            Text = string.format("%s, %s (%s)", BlameInfo["author"], DateTime, BlameInfo["summary"])
        end

        return {{ " " .. Text, "GitSignsCurrentLineBlame" }}
    end,
    ["current_line_blame_formatter_nc"] = "You (Uncommited changes)",
    ["current_line_blame_formatter_opts"] = {
        ["relative_time"] = true
    }
})
