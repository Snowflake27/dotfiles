function colorBootstrap(color)
	color = color or "everforest"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, 'LineNr', {fg='#E69875', bold=false})
end

colorBootstrap()
