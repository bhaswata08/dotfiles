return {
	"GCBallesteros/NotebookNavigator.nvim",
	keys = {
		{
			"]h",
			function()
				require("notebook-navigator").move_cell("d")
			end,
		},
		{
			"[h",
			function()
				require("notebook-navigator").move_cell("u")
			end,
		},
		{ "<leader>X", "<cmd>lua require('notebook-navigator').run_cell()<cr>" },
		{ "<leader>x", "<cmd>lua require('notebook-navigator').run_and_move()<cr>" },
	},
	dependencies = {
		"echasnovski/mini.comment",
		"hkupty/iron.nvim", -- repl provider
		"nvimtools/hydra.nvim",
		"anuvyklack/snacks.nvim",
		-- "akinsho/toggleterm.nvim", -- alternative repl provider
		-- "benlubas/molten-nvim", -- alternative repl provider
	},
	event = "VeryLazy",
	config = function()
		local nn = require("notebook-navigator")
		nn.setup({ activate_hydra_keys = "<leader>h", cell_highlight_group = "Comment" })
	end,
}
