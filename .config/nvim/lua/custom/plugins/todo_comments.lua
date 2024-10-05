-- Todo comments

return {
  'folke/todo-comments.nvim',
  event = 'VeryLazy',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = { signs = false },
  keys = {
    { '<leader>st', '<cmd>TodoTelescope<cr>', desc = 'Todo' },
  },
}
