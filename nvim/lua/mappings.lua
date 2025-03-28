require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- Example: Adding the Esc mapping to chadrc.lua or init.lua
map('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Command to close nvim
map("n", "<leader>q", ":q<CR>", { desc="Quit nvim",noremap = true, silent = true })

-- Remap for LSP rename
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })

-- Map to move to the next tab
map("n", "<leader>tn", ":tabnext<CR>", { noremap = true, silent = true })

-- Map to move to the previous tab
map("n", "<leader>tp", ":tabprev<CR>", { noremap = true, silent = true })

-- Map to create new tab
map("n", "<leader>tt", ":tabnew<CR>", { noremap = true, silent = true })

-- You can also map keys for direct tab navigation (1-9)
for i = 1, 9 do
  map("n", "<leader>t" .. i, ":tabnext " .. (i) .. "<CR>", { noremap = true, silent = true })
end
