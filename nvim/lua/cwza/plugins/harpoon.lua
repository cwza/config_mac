return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local keymap = vim.keymap -- for conciseness
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        keymap.set("n", "<leader>hh", function()
            ui.toggle_quick_menu()
        end, { desc = "Toggle harpoon quick menu" })
        keymap.set("n", "<leader>ha", function()
            mark.add_file()
        end, { desc = "Mark file with harpoon" })
        keymap.set("n", "<leader>hn", function()
            ui.nav_next()
        end, { desc = "Go to next harpoon mark" })
        keymap.set("n", "<leader>hp", function()
            ui.nav_prev()
        end, { desc = "Go to previous harpoon mark" })
        keymap.set("n", "gj", function()
            ui.nav_file(1)
        end, { desc = "Go to 1 harpoon mark" })
        keymap.set("n", "gk", function()
            ui.nav_file(2)
        end, { desc = "Go to 2 harpoon mark" })
        keymap.set("n", "gl", function()
            ui.nav_file(3)
        end, { desc = "Go to 3 harpoon mark" })
        keymap.set("n", "g;", function()
            ui.nav_file(4)
        end, { desc = "Go to 4 harpoon mark" })
    end,
}
