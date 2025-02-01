-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		'gelguy/wilder.nvim',
		config = function()
			local wilder = require('wilder')
			wilder.setup({ modes = { ':', '/', '?' } }) -- , enable_cmdline_enter = 0 })
			wilder.set_option('renderer', wilder.popupmenu_renderer({
				reverse = true,
				highlighter = wilder.basic_highlighter(),
				left = { ' ', wilder.popupmenu_devicons() },
				right = { ' ', wilder.popupmenu_scrollbar() },
			}))
			wilder.set_option('pipeline', {
				wilder.branch(
					wilder.cmdline_pipeline({ language = 'python', fuzzy = 1 })
				-- wilder.python_search_pipeline({ pattern = wilder.python_fuzzy_pattern(), engine = 're2', })
				)
			})
		end,
	},
	{
		"mbbill/undotree",
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		submodules = false,
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
	},
	{
		"github/copilot.vim",
	},
	{
		"ThePrimeagen/harpoon",
		-- branch = "harpoon2",
		config = function()
			require("harpoon").setup({})
			vim.keymap.set("n", "<leader>t",
				function()
					vim.api.nvim_command("update")
					require("harpoon.term").gotoTerminal(1)
				end
			)
		end,
	},
}
