return {
    "mfussenegger/nvim-dap",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        vim.keymap.set("n", "<leader>da", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle break point at line" })
        vim.keymap.set("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "Start or continue debugger" })
        vim.keymap.set("n", "<leader>di", "<cmd>DapStepInto<CR>", { desc = "Step into" })
        vim.keymap.set("n", "<leader>do", "<cmd>DapStepOver<CR>", { desc = "Step over" })
        vim.keymap.set("n", "<leader>dO", "<cmd>DapStepOut<CR>", { desc = "Step out" })
        vim.keymap.set("n", "<leader>dq", "<cmd>DapTerminate<CR>", { desc = "Terminate debugger" })
    end,
}
