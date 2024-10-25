-- To move between different windows, like those added by undotree (neovim calls them windows) you can use <C-w>w.
-- Optionally, add a number before to switch to a specific window

return {
    "mbbill/undotree",

    config = function() 
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
}

