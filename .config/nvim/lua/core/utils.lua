local Utils = {}

function Utils.LoadModule(Path)
    local Success, Response = pcall(require, Path)

    if not Success then
        vim.notify_once(string.format("Failed to load module %s | %s", Path, Response))
    end
end

return Utils
