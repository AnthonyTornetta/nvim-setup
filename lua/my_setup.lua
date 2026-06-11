-- Inlay Hints
require("gitsigns").toggle_current_line_blame(true)

-- Rebinds
vim.cmd "noremap k j|noremap <C-w>k <C-w>j|noremap <C-w><C-k> <C-w>j"
vim.cmd "noremap j k|noremap <C-w>j <C-w>k|noremap <C-w><C-j> <C-w>k"
vim.cmd 'nnoremap f "_d'

vim.api.nvim_set_keymap("n", "<Leader>gh", ":OpenInGHFileLines <CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>r", ":GrugFar <CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("v", "<Leader>r", ":GrugFarWithin <CR>", { silent = true, noremap = true })

-- require("copilot.suggestion").toggle_auto_trigger()
