return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'antosha417/nvim-lsp-file-operations',
      'echasnovski/mini.base16',
    },
    config = function()
      local nvimtree = require 'nvim-tree'

      -- recommended settings from nvim-tree docs
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- change color for the arrows in the tree to light blue
      vim.cmd [[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]]

      -- nvim-tree configuration
      nvimtree.setup {
        sort = {
          sorter = 'case_sensitive',
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      }

      -- set keymaps for nvim-tree
      vim.keymap.set('n', '<leader>tt', '<cmd>NvimTreeToggle<CR>') -- Nvimtree Toggle
      vim.keymap.set('n', '<leader>tf', '<cmd>NvimTreeFindFileToggle<CR>') -- Nvimtree find files
      vim.keymap.set('n', '<leader>tc', '<cmd>NvimTreeCollapse<CR>') -- Nvimtree collapse folders
      vim.keymap.set('n', '<leader>tr', '<cmd>NvimTreeRefresh<CR>') -- Nvimtree refresh
    end,
  },
}
