return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }
  use { 'ray-x/go.nvim' }
  use { 'ray-x/guihua.lua' }
  use { 'neovim/nvim-lspconfig' }
  use { 'nvim-treesitter/nvim-treesitter' }
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'hrsh7th/nvim-cmp'} -- Autocompletion plugin

  use {'hrsh7th/cmp-nvim-lsp'} -- LSP source for nvim-cmp

  use {'saadparwaiz1/cmp_luasnip'} -- Snippets source for nvim-cmp
  use {'L3MON4D3/LuaSnip'} -- Snippets plugin

  use {"marko-cerovac/material.nvim"}

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'nvim-tree/nvim-tree.lua'

  use {'github/copilot.vim'}

  use({
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      config = function()
          require("lsp_lines").setup()
      end,
  })

  use {'lukas-reineke/indent-blankline.nvim'}
end)
