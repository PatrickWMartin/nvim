return {
    'nvim-lualine/lualine.nvim',
     dependencies = { 'nvim-tree/nvim-web-devicons' },
     config = function()
        require('lualine').setup({
            options = {
                theme = 'onedark',
                icons_enabled = true,
                component_seperators = '|',
                section_seperators = '',
            },
            sections = {
                lualine_a = {
                  {
                    'buffers',
                  }
            }
            }
      })
      end
}

