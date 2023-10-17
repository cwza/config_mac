return {
    "mbbill/undotree",
    event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
    config = function()
        local keymap = vim.keymap
        keymap.set("n", "<leader>uu", "<cmd>UndotreeToggle<cr>", { desc = "Toggle undo tree" })
    end,
}
