vim.diagnostic.config({
    virtual_text = true,
    float = {
        border = "single",
        source = "if_many",
        header = "",
        prefix = "",
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.HINT] = "󱐋",
            [vim.diagnostic.severity.INFO] = "󰙎",
        },
    },
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
