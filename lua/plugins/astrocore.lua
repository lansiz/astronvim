-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = {
        -- set to true or false etc.
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap

        spellfile = vim.fn.stdpath "config" .. "/spell/en.utf-8.add",
        swapfile = false,
      },
      g = {
        mapleader = " ", -- sets vim.g.mapleader
        autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save mus
        cmp_enabled = true, -- enable completion at start
        autopairs_enabled = true, -- enable autopairs at start
        -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=al
        diagnostics_mode = 3,
        icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSyn
        ui_notifications_enabled = true, -- disable notifications when toggling UI elements

        loaded_python3_provider = 0,
        loaded_perl_provider = 0,
        loaded_node_provider = 0,
        loaded_ruby_provider = 0,
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      n = {
        ["<leader>j"] = { function() require("flash").jump() end, desc = "Jump To" },
        ["<leader>a"] = { "<cmd>Telescope projects<cr>", desc = "Projects" },
        ["<leader>r"] = { "<cmd>e!<cr>", desc = "Restore Buffer" },

        ["<leader>fM"] = { "<cmd>MarkdownPreview<cr>", desc = "Markdown preview" },
        ["<leader>fL"] = { "<cmd>VimtexCompile<cr>", desc = "Latex compile" },
        ["<leader>fv"] = { "<cmd>VimtexView<cr>", desc = "Latex view" },
        ["<leader>fs"] = { "<cmd>!nvim_formatter.sh %<cr>", desc = "External formatters" },

        ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab page" },
        ["<leader>bq"] = { "<cmd>tabclose<cr>", desc = "Quit tab page" },

        ["<leader>ue"] = { function() require("utils").toggle_colorcolumn() end, desc = "Toggle colorcolumn" },

        ["<leader>gk"] = { "<cmd>!gitk --all &<cr>", desc = "Launch gitk" },

        ["<leader>tp"] = { function() require("astrocore").toggle_term_cmd "ipython" end, desc = "ToggleTerm ipython" },
        ["<leader>ta"] = { function() require("astrocore").toggle_term_cmd "lua" end, desc = "ToggleTerm lua" },
        ["<leader>tT"] = { "<cmd>!alacritty &<cr>", desc = "Launch Terminal" },

        ["H"] = { function() require("astrocore.buffer").nav(-1) end, desc = "Previous buffer" },
        ["L"] = { function() require("astrocore.buffer").nav(1) end, desc = "Next buffer" },
        ["<leader>fg"] = { function() require("utils").show_filepath() end, desc = "Show filepath" },
        ["<C-s>"] = { "<cmd>wa<cr>", desc = "Write all buffers" },
        ["<C-q>"] = { "<cmd>qa<cr>", desc = "Quit all windows" },

        ["<A-l>"] = { "<cmd>tabnext<cr>", desc = "Next tab page" },
        ["<A-h>"] = { "<cmd>tabprevious<cr>", desc = "Previous tab page" },
        ["<leader>T"] = { "<cmd>TodoTelescope<cr>", desc = "Todo" },
        ["<leader>s"] = { "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
        ["<leader>h"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "ToggleTerm float" },

        ["<leader>lT"] = { "<cmd>LspRestart<cr>", desc = "Restart LSP" },
      },
      t = {},
    },
  },
}
