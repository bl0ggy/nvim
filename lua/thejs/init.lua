require("thejs.remap")
require("thejs.set")
require("thejs.packer")

vim.diagnostic.config({ virtual_text = true, update_in_insert = true })
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { '*' },
    group = vim.api.nvim_create_augroup('MyFormatOnSaveAll', {}),
    callback = function()
        vim.lsp.buf.format()
    end
})
