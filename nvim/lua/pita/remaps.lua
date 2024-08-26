vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal right<CR>', {})
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('i', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('i', '<right>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('i', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
vim.keymap.set('i', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<C-e>', ':tabnext<CR>', { noremap = true, silent = true, desc = 'next tab' })
vim.keymap.set('n', '<C-w>', ':tabclose<CR>', { noremap = true, silent = true, desc = 'next tab' })
vim.keymap.set('n', '<C-q>', ':tabprevious<CR>', { noremap = true, silent = true, desc = 'previous tab' })

vim.keymap.set('n', '<leader>d', function()
  local dashboard_opened = require('scripts.menu').toggle_dashboard()
  if dashboard_opened then
    print 'Dasboard opned'
  else
    print 'Dashboard closed'
  end
end, { desc = 'Toggle dashboard' })
