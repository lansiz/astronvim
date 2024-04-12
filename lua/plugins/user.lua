---@type LazySpec
return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        [[ ██▓      ██████ ▒███████▒]],
        [[▓██▒    ▒██    ▒ ▒ ▒ ▒ ▄▀░]],
        [[▒██░    ░ ▓██▄   ░ ▒ ▄▀▒ ░]],
        [[▒██░      ▒   ██▒  ▄▀▒   ░]],
        [[░██████▒▒██████▒▒▒███████▒]],
        [[░ ▒░▓  ░▒ ▒▓▒ ▒ ░░▒▒ ▓░▒░▒]],
        [[░ ░ ▒  ░░ ░▒  ░ ░░░▒ ▒ ░ ▒]],
        [[  ░ ░   ░  ░  ░  ░ ░ ░ ░ ░]],
        [[    ░  ░      ░    ░ ░   ░]],
      }
      return opts
    end,
  },

  -- PREINSTALLED_PLUGIN_SETTINGS:
  { "max397574/better-escape.nvim", enabled = false },
  { "folke/which-key.nvim", opts = { window = { padding = { 0, 0, 0, 0 } } } },

  -- NEW_PLUGINS:
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        active = true,
        on_config_done = nil,
        manual_mode = false,
        detection_methods = { "pattern" },
        patterns = {
          ".git",
          "_darcs",
          ".hg",
          ".bzr",
          ".svn",
          -- "Makefile",
          "package.json",
        },
        exclude_dirs = {},
        show_hidden = false,
        silent_chdir = true,
        scope_chdir = "global",
        ignore_lsp = {},
        datapath = vim.fn.stdpath "data",
      }
    end,
    event = "VeryLazy",
  },
  {
    "lervag/vimtex",
    ft = "tex",
    config = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.Tex_CompileRule_pdf = "xelatex -synctex=1 --interaction=nonstopmode $*"
      vim.g.vimtex_compiler_latexmk_engines = { _ = "-xelatex" }
      vim.g.vimtex_compiler_latexrun_engines = { _ = "xelatex" }
      vim.g.tex_conceal = "abdmg"
      vim.opt.conceallevel = 2
    end,
  },
  -- { "phaazon/hop.nvim", branch = "v2", config = function() require "configs.hop" end },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    config = function()
      local g = vim.g
      g.mkdp_page_title = "${name}.md"
      --设置chrome浏览器的路径（或是启动chrome（或其他现代浏览器）的命令）
      --如果设置了该参数,g:mkdp_browserfunc将被忽略
      g.mkdp_browser = "vimb"

      --vim回调函数,参数为要打开的url
      --g.mkdp_browserfunc="MKDP_browserfunc_default"

      --设置为1可以在打开markdown文件的时候自动打开浏览器预览，只在打开
      --markdown文件的时候打开一次
      g.mkdp_auto_start = 1

      --设置为1在编辑markdown的时候检查预览窗口是否已经打开，否则自动打开预览窗口
      g.mkdp_auto_open = 1

      --在切换buffer的时候自动关闭预览窗口，设置为0则在切换buffer的时候不
      --自动关闭预览窗口
      g.mkdp_auto_close = 0

      --设置为1则只有在保存文件，或退出插入模式的时候更新预览，默认为0，实时更新预览
      g.mkdp_refresh_slow = 0
    end,
    -- run the lua command to install: function() vim.fn["mkdp#util#install"]()
    build = ":call mkdp#util#install()",
  },
  {
    "folke/flash.nvim",
    -- event = "VeryLazy",
    event = "User AstroFile",
    opts = {},
      -- stylua: ignore
      keys = {
        { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
        { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
        { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<c-a>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },

      },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        hover = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    event = "User AstroFile",
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
  },
  -- {
  --   "eddyekofo94/gruvbox-flat.nvim",
  --   priority = 1000,
  --   enabled = true,
  --   config = function()
  --     vim.cmd [[colorscheme gruvbox-flat]]
  --     -- for gruvbox-flat colortheme
  --     vim.g.gruvbox_flat_style = "hard"
  --   end,
  -- },
}
