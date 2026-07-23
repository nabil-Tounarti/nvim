return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- TypeScript and Angular files use Prettier
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        json = { "prettier" },

        -- Java files will try Google Java Format
        java = { "google-java-format" },
      },
      -- Enable format-on-save globally
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },
}
