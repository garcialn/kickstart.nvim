return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VeryLazy',
    config = function()
      local harpoon = require 'harpoon.mark'

      local function harpoon_component()
        local total_marks = harpoon.get_length()

        if total_marks == 0 then
          return ''
        end

        local current_mark = '—'

        local mark_idx = harpoon.get_current_index()
        if mark_idx ~= nil then
          current_mark = tostring(mark_idx)
        end

        return string.format('󱡅 %s/%d', current_mark, total_marks)
      end

      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'dracula',
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
          lualine_c = { 'buffers' },
          lualine_x = { 'progress' },
          lualine_y = { 'filetype', 'fileformat' },
          lualine_z = { 'location' },
        },
      }
    end,
  },
}
