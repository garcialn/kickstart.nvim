return {
  {
    -- TMUX KEYMAPS
    vim.keymap.set('n', '<C-h>', '<cmd>TmuxNavigateLeft<CR>', 'Move focus to the left window'),
    vim.keymap.set('n', '<C-l>', '<cmd>TmuxNavigateRight<CR>', 'Move focus to the right window'),
    vim.keymap.set('n', '<C-j>', '<cmd>TmuxNavigateDown<CR>', 'Move focus to the lower window'),
    vim.keymap.set('n', '<C-k>', '<cmd>TmuxNavigateUp<CR>', 'Move focus to the upper window'),
  },
  {
    -- NVIM-TREE KEYMAPS
    vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', 'Toggle file explorer'),
    vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', 'Toogle file finder'),
    vim.keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', 'Collapse file explorer'),
    vim.keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', 'Refresh file explorer'),
  },
}
