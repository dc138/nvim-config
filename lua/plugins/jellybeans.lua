return {
    "wtfox/jellybeans.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local jellybeans = require("jellybeans")

        jellybeans.setup({
            flat_ui = false,
            on_colors = function(c)
                c.background = "#121212"
            end,
        })

        vim.cmd.colorscheme("jellybeans")
    end,
}
