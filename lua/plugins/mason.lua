local is_nixos = vim.uv.fs_stat("/etc/NIXOS") ~= nil

return is_nixos and {} or {
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        },
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        opts = {},
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = {
            "mason-org/mason.nvim",
        },
        opts = {
            ensure_installed = {
                "tree-sitter-cli",
                "lua-language-server",
                "rust-analyzer",
                "json-lsp",
                "pyright",
                "tinymist",
            },
        },
    },
}
