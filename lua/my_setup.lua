-- local dap = require('dap')
--
-- dap.adapters.lldb = {
--   type = 'executable',
--   command = 'lldb',
--   name = 'lldb'
-- }
--
-- -- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#ccrust-via-lldb-vscode
-- dap.configurations.cpp = {
--   {
--     name = 'Launch',
--     type = 'lldb',
--     request = 'launch',
--     program = function()
--       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--     end,
--     cwd = '${workspaceFolder}',
--     stopOnEntry = false,
--     args = {},
--
--     -- 💀
--     -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
--     --
--     --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
--     --
--     -- Otherwise you might get the following error:
--     --
--     --    Error on launch: Failed to attach to the target process
--     --
--     -- But you should be aware of the implications:
--     -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
--     -- runInTerminal = false,
--   },
-- }
--
-- vim.diagnostic.config({ virtual_text = true })

vim.cmd "noremap k j|noremap <C-w>k <C-w>j|noremap <C-w><C-k> <C-w>j"
vim.cmd "noremap j k|noremap <C-w>j <C-w>k|noremap <C-w><C-j> <C-w>k"
vim.cmd 'nnoremap f "_d'

vim.api.nvim_set_keymap("n", "<Leader>gh", ":OpenInGHFileLines <CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>r", ":GrugFar <CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("v", "<Leader>r", ":GrugFarWithin <CR>", { silent = true, noremap = true })

-- require("copilot.suggestion").toggle_auto_trigger()
