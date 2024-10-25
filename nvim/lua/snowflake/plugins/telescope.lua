return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-live-grep-args.nvim'
	},

	config = function() 
		local telescope = require('telescope')

		telescope.setup({})

		telescope.load_extension("live_grep_args")

		local builtin = require('telescope.builtin')
		
		-- Project Files
		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

		-- CTRL + P: Git Files
		vim.keymap.set('n', '<C-p>', builtin.git_files, {})

		--[[ 
		--   Lookup commands work in the current file if used in a file
		--   They work in all files indexed by neovim in the file explorer
		--   
		--   If you run the command `nvim ~/.config/nvim/` it will index 
		--   all files it can find in `~/.config/nvim/` and all subfolders
		--   recursively.
		--]]

		-- Project Word search (look for the word under the cursor)
		vim.keymap.set('n', '<leader>pww', function()
		    local word = vim.fn.expand("<cword>")
		    builtin.grep_string({ search = word })
		end)

		-- Project Sentence Search (look for the statement under the cursor)
		vim.keymap.set('n', '<leader>pws', function()
		    local word = vim.fn.expand("<cWORD>")
		    builtin.grep_string({ search = word })
		end)

		-- Project Search (Look for this statement)
		vim.keymap.set('n', '<leader>pS', function()
		    builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)

		-- Live Grep Search in current file
		vim.keymap.set('n', '<leader>ps', function()
			builtin.current_buffer_fuzzy_find({ skip_empty_lines = true })
		end)

		-- View Help (shows all plugins documentation)
		vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
	end
}
