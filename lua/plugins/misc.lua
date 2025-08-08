-- Standalone plugins with less than 10 lines of config go here
return {
	{
		-- ty type checker
		"aekasitt/tylsp.nvim",
	},
	{
		-- Tmux & split window navigation
		"christoomey/vim-tmux-navigator",
	},
	{
		-- Detect tabstop and shiftwidth automatically
		"tpope/vim-sleuth",
	},
	{
		-- Powerful Git integration for Vim
		"tpope/vim-fugitive",
	},
	{
		-- GitHub integration for vim-fugitive
		"tpope/vim-rhubarb",
	},
	{
		-- Hints keybinds
		"folke/which-key.nvim",
	},
	{
		-- Autoclose parentheses, brackets, quotes, etc.
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = {},
	},
	{
		-- Highlight todo, notes, etc in comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		-- High-performance color highlighter
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{ "mfussenegger/nvim-dap" },
	{
		"rmagatti/auto-session",
		lazy = false,

		---enables autocomplete for opts
		---@module "auto-session"
		---@type AutoSession.Config
		opts = {
			suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
			-- log_level = 'debug',
		},
	},
	{
		"atiladefreitas/dooing",
		config = function()
			require("dooing").setup({})
		end,
	},
	{
		"mluders/comfy-line-numbers.nvim",
		config = function()
			require("comfy-line-numbers").setup()
		end,
	},
	{
		"code-biscuits/nvim-biscuits",
		opts = {
			show_on_start = true,
		},
		keys = {
			{
				"<leader>bb",
				function()
					require("nvim-biscuits").BufferAttach()
				end,
				mode = "n",
				desc = "Enable Biscuits",
			},
			{
				"<leader>bt",
				function()
					require("nvim-biscuits").toggle_biscuits()
				end,
				mode = "n",
				desc = "Toggle Biscuits Visibility",
			},
		},
	},
	{
		"GCBallesteros/jupytext.nvim",
		config = true,
		-- Depending on your nvim distro or config you may need to make the loading not lazy
		-- lazy=false,
	},
}
