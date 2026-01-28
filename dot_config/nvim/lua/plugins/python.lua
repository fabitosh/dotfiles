return {
  { import = "lazyvim.plugins.extras.lang.python" },
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      settings = {
        options = {
          -- Automatically look for .venv in current directory (standard for uv)
          cached_venv_automatic_activation = true,
        },
      },
    },
    -- Keymap to manually switch if needed
    keys = {
      { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
    },
  },
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },
}
