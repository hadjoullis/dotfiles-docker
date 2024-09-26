-- lua for nvim https://neovim.io/doc/user/lua-guide.html#lua-guide
vim.g.python3_host_prog = "$HOME/.python3_venv/general/bin/python3"
vim.o.termguicolors = true

require("user.general")
require("user.remap")

-- bootstrap installation of lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- import plugins
require("lazy").setup({
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  { "rose-pine/neovim", name = "rose-pine" },
  { "nvim-telescope/telescope.nvim", tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  { "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  { "echasnovski/mini.icons", version = false },
  { "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    opts = {},
  },
  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp"
  },
  { "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = { 
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  { "neovim/nvim-lspconfig" },
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
})

-- config plugins

-- colorschemes
--require("plugins.rosepine")
require("plugins.gruvbox")
require("plugins.treesitter")
require("plugins.telescope")
require("plugins.lualine")
require("plugins.webdevicons")
require("plugins.lspconfig")
require("plugins.whichkey")
require("plugins.cmp")
require("plugins.mini")
