return {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local oil = require("oil")
        oil.setup({
            view_options = {
                show_hidden = true,
            },
        })

        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open oil file explore" })
    end,
}
