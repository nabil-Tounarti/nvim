-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.jdtls_lombok_vmarg = true

vim.opt.diffopt = {
  "internal",
  "filler",
  "vertical",
  "linematch:60", -- <-- This turns on precise, character-level diff matching
}

-- Set attractive colors for diff mode
vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#2e3f33", fg = "#a3be8c" }) -- Subtle green for additions
vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#40252b", fg = "#bf616a" }) -- Subtle red for deletions
vim.api.nvim_set_hl(0, "DiffChange", { bg = "#2b384c", fg = "#88c0d0" }) -- Subtle blue for modified lines
vim.api.nvim_set_hl(0, "DiffText", { bg = "#3b5275", fg = "#81a1c1", bold = true }) -- Brighter blue for the specific changed words
