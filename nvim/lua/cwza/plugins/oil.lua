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
            keymaps = {
                ["<C-x>"] = "actions.select_split",
                ["<C-v>"] = "actions.select_vsplit",
                ["<C-s>"] = false,
                ["<C-h>"] = false,
            },
        })

        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open oil file explore" })
    end,
}
