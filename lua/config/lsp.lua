vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end

        vim.keymap.set("n", "grd", function()
            local cap = client.server_capabilities
            if not cap then return end

            if cap.definitionProvider then
                vim.lsp.buf.definition()
            elseif cap.implementationProvider then
                vim.lsp.buf.implementation()
            elseif cap.typeDefinitionProvider then
                vim.lsp.buf.type_definition()
            else
                vim.notify("LSP does not support any go-to structural actions.", vim.log.levels.WARN)
            end
        end, { buffer = args.buf, desc = "LSP: smart go-to symbol" })

        vim.keymap.set("n", "<C-K>", function()
            vim.lsp.buf.hover({ border = "single" })
        end, { buffer = args.buf, desc = "LSP: hover documentation" })
    end,
})

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
