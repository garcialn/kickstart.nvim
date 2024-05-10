return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VeryLazy',
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'papercolor_light',
          component_separators = { left = '|', right = '|' },
          section_separators = { left = '', right = '' },
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          },
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = { 'filename' },
          lualine_x = { 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
        -- inactive_sections = { -- You can omit these if you want default behavior
        --   lualine_a = {},
        --   lualine_b = {},
        --   lualine_c = { 'filename' },
        --   lualine_x = { 'location' },
        --   lualine_y = {},
        --   lualine_z = {},
        -- },
      }
    end,
  },
}
