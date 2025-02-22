
local dap = require('dap')
local dapui = require('dapui')

-- 配置 GDB 调试器（适用于 C 语言和 C++）
dap.adapters.gdb = {
  type = 'executable',
  command = 'gdb', -- 你可以指定 gdb 的路径
  name = 'gdb'
}

-- C 语言调试配置
dap.configurations.c = {
  {
    name = 'Launch C file',
    type = 'gdb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
    args = {},
    runInTerminal = true,
    setupCommands = {
      {
        text = '-enable-pretty-printing',
        description = 'Enable pretty printing for gdb',
      },
    },
  },
}

-- C++ 语言调试配置
dap.configurations.cpp = {
  {
    name = 'Launch C++ file',
    type = 'gdb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
    args = {},
    runInTerminal = true,
    setupCommands = {
      {
        text = '-enable-pretty-printing',
        description = 'Enable pretty printing for gdb',
      },
    },
  },
}

-- Python 调试器配置
dap.adapters.python = {
  type = 'server',
  host = '127.0.0.1',
  port = 5678,
}

dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = 'Launch file',
    program = "${file}",
  },
}

-- 配置 nvim-dap-ui
dap.listeners.after['event_initialized']['dapui_config'] = function()
  dapui.open()
end
dap.listeners.before['event_terminated']['dapui_config'] = function()
  dapui.close()
end
dap.listeners.before['event_exited']['dapui_config'] = function()
  dapui.close()
end

-- 设置快捷键
vim.api.nvim_set_keymap('n', '<F5>', "<cmd>lua require'dap'.continue()<CR>", { noremap = true, desc = 'Start/Continue Debugging' })
vim.api.nvim_set_keymap('n', '<F10>', "<cmd>lua require'dap'.step_over()<CR>", { noremap = true, desc = 'Step Over' })
vim.api.nvim_set_keymap('n', '<F11>', "<cmd>lua require'dap'.step_into()<CR>", { noremap = true, desc = 'Step Into' })
vim.api.nvim_set_keymap('n', '<F12>', "<cmd>lua require'dap'.step_out()<CR>", { noremap = true, desc = 'Step Out' })
vim.api.nvim_set_keymap('n', '<F9>', "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, desc = 'Toggle Breakpoint' })
vim.api.nvim_set_keymap('n', '<F8>', "<cmd>lua require'dap'.terminate()<CR>", { noremap = true, desc = 'Stop Debugging' })

