return {
    "nvim-telescope/telescope.nvim", version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                    },
                },
            },
        })

        telescope.load_extension("fzf")

        vim.keymap.set("n", "<leader>tt", "<cmd>Telescope<cr>", { desc = "Telescope: show all builtin pickers" })
		vim.keymap.set("n", "<leader>tf", "<cmd>Telescope find_files<cr>", { desc = "Telescope: find files in cwd" })
		vim.keymap.set("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope: grep string in cwd" })

		vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Telescope: git status" })
		vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "Telescope: git files" })
    end,
}
