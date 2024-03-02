-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
	  'gelguy/wilder.nvim',
	  config = function()
	    -- config goes here
		local wilder = require('wilder')
		wilder.setup({modes = {':', '/', '?'}})
		wilder.set_option('renderer', wilder.popupmenu_renderer({
		  highlighter = wilder.basic_highlighter(),
		  left = {' ', wilder.popupmenu_devicons()},
		  right = {' ', wilder.popupmenu_scrollbar()},
		}))
	  end,
	},
	{
		"mbbill/undotree",
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
	},
	{
		'chomosuke/term-edit.nvim',
		lazy = false,
		version = '1.*',
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	}
}
