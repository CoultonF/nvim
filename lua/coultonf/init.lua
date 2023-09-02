require('coultonf.remap')
require('coultonf.set')
require('coultonf.lazy')
vim.cmd("colorscheme kanagawa")
vim.wo.relativenumber = true
vim.wo.number = true
local plugins_group = vim.api.nvim_create_augroup('packager_filetype', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sql',
  command = 'packadd vim-dadbod-completion | runtime after/plugin/vim_dadbod_completion.lua',
  group = plugins_group,
})
