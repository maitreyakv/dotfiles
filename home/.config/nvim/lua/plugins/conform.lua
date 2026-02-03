return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      terraform = { "tofu_fmt" },
      tf = { "tofu_fmt" },
      javascript = { "prettierd", "prettier" },
      javascriptreact = { "prettierd", "prettier" },
      typescript = { "prettierd", "prettier" },
      typescriptreact = { "prettierd", "prettier" },
      vue = { "prettierd", "prettier" },
    },
  },
}
