return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            local treesitter = require("nvim-treesitter")

            treesitter.setup()

            local parsers = {
                "bash",
                "c",
                "cpp",
                "lua",
                "python",
                "rust",
                "vim",
                "vimdoc",
                "markdown",
                "markdown_inline",
            }

            -- Already installed parsers are skipped.
            treesitter.install(parsers)
        end,
    },
}
