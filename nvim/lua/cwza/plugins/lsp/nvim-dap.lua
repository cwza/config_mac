return {
    "mfussenegger/nvim-dap",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local keymap = vim.keymap
        keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle break point at line" })
        keymap.set("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "Start or continue debugger" })
        keymap.set("n", "<leader>di", "<cmd>DapStepInto<CR>", { desc = "Step into" })
        keymap.set("n", "<leader>do", "<cmd>DapStepOver<CR>", { desc = "Step over" })
        keymap.set("n", "<leader>dO", "<cmd>DapStepOut<CR>", { desc = "Step out" })
        keymap.set("n", "<leader>dq", "<cmd>DapTerminate<CR>", { desc = "Terminate debugger" })
    end,
}
