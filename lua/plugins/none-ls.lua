---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.prettier.with {
      --   extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
      --   filetypes = { "html", "css" },
      -- },
      -- python
      -- null_ls.builtins.formatting.isort,
      -- null_ls.builtins.formatting.black,
      -- latex
      -- null_ls.builtins.formatting.latexindent,
      -- json
      -- null_ls.builtins.diagnostics.jsonlint,
      -- null_ls.builtins.formatting.jq,
      -- yaml
      -- null_ls.builtins.diagnostics.yamllint,
      -- null_ls.builtins.formatting.yamlfmt,
      -- bash
      -- null_ls.builtins.formatting.shfmt,
      -- markdown
      -- null_ls.builtins.diagnostics.markdownlint,
      -- null_ls.builtins.formatting.markdownlint,
      -- lua
      -- null_ls.builtins.formatting.stylua,
      -- go
      -- null_ls.builtins.formatting.goimports,
      -- rust
      -- null_ls.builtins.formatting.rustfmt,
    }
    return config -- return final config table
  end,
}
