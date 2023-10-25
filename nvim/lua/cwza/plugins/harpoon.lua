return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        vim.keymap.set("n", "<leader>hh", function()
            ui.toggle_quick_menu()
        end, { desc = "Toggle harpoon quick menu" })
        vim.keymap.set("n", "<leader>ha", function()
            mark.add_file()
        end, { desc = "Mark file with harpoon" })
        vim.keymap.set("n", "<leader>hn", function()
            ui.nav_next()
        end, { desc = "Go to next harpoon mark" })
        vim.keymap.set("n", "<leader>hp", function()
            ui.nav_prev()
        end, { desc = "Go to previous harpoon mark" })
        vim.keymap.set("n", "gj", function()
            ui.nav_file(1)
        end, { desc = "Go to 1 harpoon mark" })
        vim.keymap.set("n", "gk", function()
            ui.nav_file(2)
        end, { desc = "Go to 2 harpoon mark" })
        vim.keymap.set("n", "gl", function()
            ui.nav_file(3)
        end, { desc = "Go to 3 harpoon mark" })
        vim.keymap.set("n", "g;", function()
            ui.nav_file(4)
        end, { desc = "Go to 4 harpoon mark" })
    end,
}
