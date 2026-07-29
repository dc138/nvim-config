return {
    "nvim-telescope/telescope.nvim", version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local themes = require("telescope.themes")
        local builtin = require("telescope.builtin")

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                    },
                },
            },
            extensions = {
                ["ui-select"] = {
                    themes.get_cursor()
                }
            },
        })

        telescope.load_extension("fzf")
        telescope.load_extension("ui-select")

        vim.keymap.set(
            "n","z=",
            function() builtin.spell_suggest(themes.get_cursor()) end,
            { desc = "Spell, Telescope: suggest spellings" }
        )

        vim.keymap.set("n", "<leader>tt", "<cmd>Telescope<cr>", { desc = "Telescope: show all builtin pickers" })
        vim.keymap.set("n", "<leader>tk", "<cmd>Telescope keymaps<cr>", { desc = "Telescope: show keymaps" })

		vim.keymap.set("n", "<leader>tf", "<cmd>Telescope find_files<cr>", { desc = "Telescope: find files in cwd" })
		vim.keymap.set("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope: grep string in cwd" })

		vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Git, Telescope: git status" })
		vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "Git, Telescope: git files" })
    end,
}
