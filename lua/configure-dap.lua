local dap_ok, dap = pcall(require, "dap")
if not (dap_ok) then
  print("nvim-dap not installed!")
  return
end

require("mason-nvim-dap").setup({
  automatic_installation = true,
  ensure_installed = { "codelldb" }
})

require('dap').set_log_level('INFO') -- Helps when configuring DAP, see logs with :DapShowLog

dap.configurations = {
  rust = {
    {
      type = "rust",       -- Which adapter to use
      name = "Debug",      -- Human readable name
      request = "launch",  -- Whether to "launch" or "attach" to program
      program = "${file}", -- The buffer you are focused on when running nvim-dap
    },
  }
}

dap.adapters.rust = {
  type = "server",
  port = "${port}",
  executable = {
    command = vim.fn.stdpath("data") .. '/mason/bin/dlv',
    args = { "dap", "-l", "127.0.0.1:${port}" },
  },
}
