return {
    "Exafunction/codeium.vim",
    event = { "BufNewFile", "BufReadPre" },
    config = function()
        vim.g.codeium_disable_bindings = 1
        vim.g.codeium_enabled = 0
        vim.keymap.set("n", "<leader>co", "<cmd>CodeiumEnable<CR>", { desc = "Enalbe Codeium" })
        vim.keymap.set("n", "<leader>cx", "<cmd>CodeiumDisable<CR>", { desc = "Disable Codeium" })
        vim.keymap.set("i", "<Tab>", function()
            return vim.fn["codeium#Accept"]()
        end, { expr = true, desc = "Accept Codeium" })
        vim.keymap.set("i", "<M-]>", function()
            return vim.fn["codeium#CycleCompletions"](1)
        end, { expr = true, desc = "Next Codeium" })
        vim.keymap.set("i", "<M-[>", function()
            return vim.fn["codeium#CycleCompletions"](-1)
        end, { expr = true, desc = "Previous Codeium" })
        vim.keymap.set("i", "<M-c>", function()
            return vim.fn["codeium#Clear"]()
        end, { expr = true, desc = "Clear Codeium" })
        vim.keymap.set("i", "<M-Space>", function()
            return vim.fn["codeium#Complete"]()
        end, { expr = true, desc = "Complete Codeium" })
    end,
}
