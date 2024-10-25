return {
	'sainnhe/everforest',
	lazy = false,
	priority = 1000,
	config = function()
		vim.o.termguicolors = true
		vim.g.everforest_background = 'hard'
		vim.g.everforest_transparent_background = 2
	end
}
