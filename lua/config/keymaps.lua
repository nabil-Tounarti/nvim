-- Remap LazyVim Git Diff shortcut to open Diffview instead
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Diffview Open" })

-- Optional: Map a shortcut to quickly close it too (e.g., Space + g + c)
vim.keymap.set("n", "<leader>gc", "<cmd>DiffviewClose<cr>", { desc = "Diffview Close" })
