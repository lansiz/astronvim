---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "bash",
      "c",
      "cpp",
      "css",
      "dockerfile",
      "go",
      "html",
      "javascript",
      "json",
      "lua",
      "make",
      "cmake",
      "markdown",
      -- "perl",
      "python",
      "sql",
      "yaml",
      "typescript",
      "vim",
      "markdown_inline",
      "regex",
      "diff",
      "awk",
      -- "comment",
      "gomod",
      -- "help",
      "gitcommit",
      "git_rebase",
      "bibtex",
      "toml",
      "rust",
      "jsonc",
      -- add more arguments for adding more treesitter parsers
    })
    opts.highlight = { enable = true, additional_vim_regex_highlighting = false, disable = { "latex" } }
  end,
}
