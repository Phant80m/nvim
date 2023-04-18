-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use {
		'wbthomason/packer.nvim'
	}

	-- Fuzzy finder
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1', -- Specify a particular version tag
		-- or branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} } -- Dependency
	}

	-- Colorscheme
	use {'nyoom-engineering/oxocarbon.nvim'}
	-- vim.opt.background = "dark" -- set this to dark or light
	-- vim.cmd.colorscheme "oxocarbon"

	-- Syntax highlighting
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- Quickly navigate between project files
	use('ThePrimeagen/harpoon')

	-- Visualize undo tree
	use('mbbill/undotree')

	-- LSP support
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- Required dependencies
			{'neovim/nvim-lspconfig'},
			-- Optional dependencies
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	-- Statusline
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- Cheatsheet
	use {
		'sudormrfbin/cheatsheet.nvim',
		requires = {
			{'nvim-telescope/telescope.nvim'},
			{'nvim-lua/popup.nvim'},
			{'nvim-lua/plenary.nvim'},
		}
	}

	-- File explorer
	use 'nvim-tree/nvim-web-devicons'
	use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
	use 'nvim-tree/nvim-tree.lua'

	-- Additional LSP support
	use {'hrsh7th/cmp-nvim-lsp'}

	-- Colorize hex codes, etc. in code
	use {'norcalli/nvim-colorizer.lua'}

	-- Colorscheme
	use {
		"catppuccin/nvim",
		as = "catppuccin"
	}
	require("catppuccin").setup({
		flavour = "mocha", -- latte, frappe, macchiato, mocha
	})

	-- Mason file generator
	use {
		"williamboman/mason.nvim",
		run = ":MasonUpdate" -- Update registry contents
	}

	-- Tetris game

	use {
		'alec-gibson/nvim-tetris'
	}
	--  dashboard
	use {
		"startup-nvim/startup.nvim",
		requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
	}
	-- live server for html 
	use {'aurum77/live-server.nvim'}

	-- Set colorscheme after options
	vim.cmd('colorscheme catppuccin')
end)
