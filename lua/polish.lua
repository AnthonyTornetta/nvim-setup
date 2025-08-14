vim.cmd "noremap k j|noremap <C-w>k <C-w>j|noremap <C-w><C-k> <C-w>j"
vim.cmd "noremap j k|noremap <C-w>j <C-w>k|noremap <C-w><C-j> <C-w>k"
vim.cmd 'nnoremap f "_d'

require("gitsigns").toggle_current_line_blame(true)

