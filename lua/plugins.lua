local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
local plugins = {
	'rafi/awesome-vim-colorschemes',
	'nvim-lualine/lualine.nvim',
	'equalsraf/neovim-gui-shim',
	'preservim/tagbar',
	'terryma/vim-multiple-cursors',
	'ryanoasis/vim-devicons',
	'nvim-tree/nvim-web-devicons',
	'akinsho/bufferline.nvim',
	'moll/vim-bbye',
	'nvim-lua/plenary.nvim',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-path',
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate'
	},
	'hrsh7th/cmp-buffer',
	'neovim/nvim-lspconfig',
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'WhoIsSethDaniel/mason-tool-installer.nvim',
	'tikhomirov/vim-glsl',
	'L3MON4D3/LuaSnip',
	'saadparwaiz1/cmp_luasnip',
	'rafamadriz/friendly-snippets',
	'lambdalisue/vim-suda',
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	'windwp/nvim-ts-autotag',
	'nvim-telescope/telescope.nvim',
	'udalov/kotlin-vim',
	'rcarriga/nvim-notify',
	'MunifTanjim/nui.nvim',
	'aurum77/live-server.nvim',
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		 opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			bigfile = { enabled = true },
			dashboard = { enabled = true },
			explorer = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			picker = { enabled = false },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
		},
	}
}

local opts = {}

require("lazy").setup(plugins, opts)
