---@type LazySpec
return {
  -- OVERRIDE PRE-INSTALLED PLUGIN SETTINGS:
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
    enabled = false,
  },
  { "folke/which-key.nvim", opts = { window = { padding = { 0, 0, 0, 0 } } } },

  -- DISABLE PRE-INSTALLED PLUGIN SETTINGS:
  { "max397574/better-escape.nvim", enabled = false },

  -- ADD NEW PLUGINS:
  {
    "lervag/vimtex",
    ft = "tex",
    lazy = true,
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
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      local g = vim.g
      g.mkdp_page_title = "${name}.md"
      --设置chrome浏览器的路径（或是启动chrome（或其他现代浏览器）的命令）
      --如果设置了该参数,g:mkdp_browserfunc将被忽略
      g.mkdp_browser = "vimb"
      --vim回调函数,参数为要打开的url
      --g.mkdp_browserfunc="MKDP_browserfunc_default"
      --设置为1可以在打开markdown文件的时候自动打开浏览器预览，只在打开markdown文件的时候打开一次
      g.mkdp_auto_start = 1
      --设置为1在编辑markdown的时候检查预览窗口是否已经打开，否则自动打开预览窗口
      g.mkdp_auto_open = 1
      --在切换buffer的时候自动关闭预览窗口，设置为0则在切换buffer的时候不自动关闭预览窗口
      g.mkdp_auto_close = 0
      --设置为1则只有在保存文件，或退出插入模式的时候更新预览，默认为0，实时更新预览
      g.mkdp_refresh_slow = 0
    end,
    -- run the lua command to install: function() vim.fn["mkdp#util#install"]()
    -- build = ":call mkdp#util#install()",
  },
  {
    "jay-babu/project.nvim",
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
    "folke/noice.nvim",
    opts = {
      lsp = {
        signature = {
          enabled = false,
        },
      },
    },
  },
}
