require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.autocompletion"),
	require("plugins.autoformatting"),
	require("plugins.bufferline"),
	require("plugins.bufterm"),
	require("plugins.colortheme"),
	require("plugins.comment"),
	require("plugins.flash"),
	require("plugins.gitsigns"),
	require("plugins.greeter"),
	require("plugins.hardtime"),
	require("plugins.indent-blankline"),
	require("plugins.lsp"),
	require("plugins.lualine"),
	require("plugins.markdown"),
	require("plugins.mini"),
	require("plugins.misc"),
	require("plugins.neotree"),
	require("plugins.noice"),
	require("plugins.rustacean"),
	require("plugins.surround"),
	require("plugins.telescope"),
	require("plugins.todo-comments"),
	require("plugins.treesitter"),
	require("plugins.wilder"),
})
