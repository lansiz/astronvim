---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "make",
      "vim",
      "regex",
      "diff",
      "awk",
      "gitcommit",
      "git_rebase",
      "bibtex",
      -- "comment",
      -- "help",
    })
    opts.highlight = { enable = true, additional_vim_regex_highlighting = false, disable = { "latex" } }
  end,
}
