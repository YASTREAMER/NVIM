-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

local nvim_tree = require "nvim-tree"

nvim_tree.setup {
  view = {
    side = "right", -- Set the side to 'right'
  },
}
---@type ChadrcConfig
local M = {}

M.nvdash = {
  load_on_startup = true,

}

M.ui = {

  telescope = { style = "bordered" },

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    order = nil,
    modules = nil,
  },

  -- nvdash = {
  --
  -- },

  nvim_tree.setup {
    view = {
      side = "right", -- Set the side to 'right'
    },
  },
}

M.base46 = {
  theme = "chadracula-evondev",
  transparency = true,
  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

return M
