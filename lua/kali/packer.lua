-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({
	  'sainnhe/gruvbox-material',
	  config = function()
		  vim.cmd.colorscheme('gruvbox-material')
	  end
  })

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})

  use {
  'williamboman/mason.nvim',
  config = function()
    require('mason').setup {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    }
  end
}


  use "williamboman/mason-lspconfig.nvim"

  use {
      "windwp/nvim-autopairs",
      config = function()
          require("nvim-autopairs").setup({})
      end
  }

  use {
      'L3MON4D3/LuaSnip',
      requires = { 'rafamadriz/friendly-snippets' }
  }

end)
