return {
  { import = "lazyvim.plugins.extras.lang.python" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- pyright, Microsoft developed established default
        pyright = { enabled = false },

        -- ty
        ty = {
          enabled = true,
          settings = {
            ty = {
              analysis = {
                -- Look for e.g. databricks_globals.pyi in the project root
                extraPaths = { "." },
                indexing = true,
                typeCheckingMode = "basic",
                useLibraryCodeForTypes = true,
              },
            },
          },
        },

        -- basedpyright (The more feature-rich pyright fork)
        basedpyright = {
          enabled = false,
          settings = {
            basedpyright = {
              analysis = {
                extraPaths = { "." },
                diagnosticMode = "openFilesOnly",
                typeCheckingMode = "basic",
              },
            },
          },
        },

        -- ruff (Linter/Formatter)
        ruff = {
          enabled = true,
        },
      },
    },
  },

  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      settings = {
        options = {
          cached_venv_automatic_activation = true,
        },
      },
    },
    keys = {
      { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
      },
    },
  },
}
