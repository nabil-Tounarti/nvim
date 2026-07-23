return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle", -- lazy load until you explicitly toggle it, or on events
  event = { "InsertLeave", "TextChanged" }, -- save when leaving insert mode, or changing text
  opts = {
    enabled = true, -- start auto-save when neovim starts
    trigger_events = { -- vim events that trigger auto-save
      immediate_save = { "BufLeave", "FocusLost" }, -- save immediately when switching buffers/windows
      defer_save = { "InsertLeave", "TextChanged" }, -- save after a delay during normal editing
    },
    -- This condition blocks auto-save on specific files (like diffs or git commits)
    condition = function(buf)
      local fn = vim.fn
      local utils = require("auto-save.utils.data")

      if fn.getbufvar(buf, "&buftype") ~= "" or vim.go.diff then
        return false -- don't save diffs or special buffers
      end
      return true
    end,
    write_all_buffers = false, -- only save the current active buffer
    debounce_delay = 1000, -- delay in milliseconds before saving (1 second)
  },
}
