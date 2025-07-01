-- Figure out keybinds and what _parts_ of mini to use.
-- completion, bracketed, notify
return {
	'echasnovski/mini.nvim', version = '*',
	config = function()
		require("mini.indentscope").setup({})
		require("mini.surround").setup({})
		require("mini.move").setup({})
		require("mini.icons").setup({})
		require("mini.statusline").setup({})
		require("mini.pairs").setup({})
		require("mini.notify").setup({})
		require("mini.completion").setup({})
		-- require("mini.snippets").setup({})
	end,
}
