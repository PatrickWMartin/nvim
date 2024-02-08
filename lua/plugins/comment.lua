return {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function ()
        require('Comment').setup()
        vim.keymap.set('n','<leader>/', 'gcc', {})
        vim.keymap.set('v','<leader>/', 'gc', {})
    end
}
