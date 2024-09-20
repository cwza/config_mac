return {
    "kevinhwang91/nvim-ufo",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "kevinhwang91/promise-async",
    },
    config = function()
        local ufo = require("ufo")
        ufo.setup({
            provider_selector = function(_, _, _)
                return { "treesitter", "indent" }
            end,
        })

        vim.keymap.set("n", "zR", ufo.openAllFolds)
        vim.keymap.set("n", "zM", ufo.closeAllFolds)
        vim.keymap.set("n", "zK", function()
            local winid = ufo.peekFoldedLinesUnderCursor()
            if not winid then
                vim.lsp.buf.hover()
            end
        end, { desc = "Peek Fold" })
    end,
}
