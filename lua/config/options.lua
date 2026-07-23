-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Force Neovim to default to Unix (LF) line endings globally

vim.g.new_line_ending = "unix"
vim.opt.fileformat = "unix"
vim.opt.fileformats = { "unix", "dos" }

-- Create an autocommand to force 'unix' format on every file you read or write
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile", "BufWritePre" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modifiable then
      vim.bo.fileformat = "unix"
    end
  end,
})

vim.opt.diffopt = {
  "internal",
  "filler",
  "vertical",
  "linematch:60", -- Enables precise character-level highlights
}
