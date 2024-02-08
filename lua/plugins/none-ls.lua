return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
--        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.diagnostics.pylint,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        --       null_ls.builtins.completion.spell,
        --  null_ls.builtins.formatting.pylint,
      },
    }
    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  end,
}
