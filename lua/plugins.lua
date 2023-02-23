local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
   use 'wbthomason/packer.nvim'
   -- 你的插件列表...
   --------------------- colorschemes --------------------
   -- tokyonight
   use("folke/tokyonight.nvim")
   -- sonokai
   use("sainnhe/sonokai")
   -------------------------------------------------------
   --------------------- plugins -------------------------
   -- nvim-tree
   use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
   -- bufferline
   use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
   -- lualine
   use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
   use("arkav/lualine-lsp-progress")
   -- telescope
   use({ "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim"}})
   -- telescope extensions
   use("LinArcX/telescope-env.nvim")
   -- treesitter
   use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
   --------------------- LSP --------------------
   use("williamboman/nvim-lsp-installer")
   -- Lspconfig
   use({ "neovim/nvim-lspconfig" })
end)
