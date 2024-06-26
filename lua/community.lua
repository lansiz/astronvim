-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.diagnostics.error-lens-nvim" },

  { import = "astrocommunity.file-explorer.oil-nvim" },

  { import = "astrocommunity.utility.noice-nvim" },

  { import = "astrocommunity.project.project-nvim" },

  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  { import = "astrocommunity.lsp.lsp-signature-nvim" },

  { import = "astrocommunity.recipes.vscode-icons" },

  { import = "astrocommunity.color.vim-highlighter" },

  -- { import = "astrocommunity.editing-support.nvim-devdocs" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.suda-vim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.neogen" },

  -- { import = "astrocommunity.motion.nvim-tree-pairs" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.portal-nvim" },
  { import = "astrocommunity.motion.vim-matchup" },

  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.rust" },
}
