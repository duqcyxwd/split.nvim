vim.keymap.set("n", "<leader><leader>d", function()
    local files = {
        "init.lua",
        "config.lua",
        "algorithm.lua",
        "interactivity.lua"
    }

    local cmd = ("lemmy-help -fact --layout mini:4 lua/split/{%s} > doc/split.txt"):format(table.concat(files, ","))
    os.execute(cmd)
    print("Generated new documentation")
end)
