return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap" },
  keys = {
    {
      "<leader>db",
      function()
        require("dap").toggle_breakpoint()
      end,
      { desc = "Toggle breakpoint" },
    },
    {
      "<leader>dc",
      function()
        require("dap").continue()
      end,
      { desc = "Continue" },
    },
    {
      "<leader>di",
      function()
        require("dap").step_into()
      end,
      { desc = "Step into" },
    },
    {
      "<leader>do",
      function()
        require("dap").step_over()
      end,
      { desc = "Step over" },
    },
    {
      "<leader>du",
      function()
        require("dapui").toggle()
      end,
      { desc = "Toggle UI" },
    },
  },
  config = function()
    local dap = require "dap"
    dap.adapters.mix_task = {
      type = "executable",
      command = "elixir-ls-debugger",
      args = {},
    }

    dap.configurations.elixir = {
      {
        type = "mix_task",
        name = "phx.server",
        task = "phx.server",
        request = "launch",
        projectDir = "${workspaceFolder}/harpy",
      },
    }

    require("dapui").setup {
      layouts = {
        {
          elements = {
            {
              id = "scopes",
              size = 0.5,
            },
            { id = "breakpoints", size = 0.25 },
            { id = "stacks",      size = 0.25 },
          },
          size = 60,
          position = "right",
        },
        {
          elements = {
            "repl",
          },
          size = 5,
          position = "bottom",
        },
      },
    }
  end,
}
