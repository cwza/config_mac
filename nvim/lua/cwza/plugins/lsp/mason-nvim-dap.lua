return {
    "jay-babu/mason-nvim-dap.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "mfussenegger/nvim-dap",
    },
    config = function()
        local mason_nvim_dap = require("mason-nvim-dap")
        mason_nvim_dap.setup({
            ensure_installed = {
                "codelldb",
            },
            automatic_installation = true,
            handlers = {},
        })
    end,
}
