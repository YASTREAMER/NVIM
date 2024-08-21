local lspconfig = require "lspconfig"
vim.opt.termguicolors = true
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      lspconfig.pyright.setup {
        on_attach = function(client, bufnr)
          -- Enable null-ls for the current buffer
        end,
        settings = {
          python = {
            pythonPath = "/home/fall/anaconda3/bin/python",
          },
        },
      }
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },
}
