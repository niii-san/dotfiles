require("dashboard").setup({
	theme = "doom",
	config = {
		header = {
			[[   ]],
			[[   ]],
			[[   ]],
			[[   ]],
			[[   ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                                                     ]],
			[[⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                                                     ]],
			[[⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                                                     ]],
			[[⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   _   _        _  _           _   _  _       _                      ]],
			[[⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⢀⣷⣤⣙⢻⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀  | | | |      | || |         | \ | |(_)     | |                     ]],
			[[⠀⠀⠀⠀ ⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀  | |_| |  ___ | || |  ___    |  \| | _  ___ | |__    __ _  _ __     ]],
			[[⠀⠀⠀⠀ ⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀  |  _  | / _ \| || | / _ \   | . ` || |/ __|| '_ \  / _` || '_ \    ]],
			[[⠀⠀⠀⠀ ⠀⠀⢠⣿⣿⣿⣿⣿⡿⠛⠛⠿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀  | | | ||  __/| || || (_) |  | |\  || |\__ \| | | || (_| || | | |   ]],
			[[⠀⠀⠀⠀ ⠀⢠⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀  \_| |_/ \___||_||_| \___/   \_| \_/|_||___/|_| |_| \__,_||_| |_|   ]],
			[[⠀⠀⠀⠀ ⣰⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⠿⣆⠀⠀⠀⠀                                                                     ]],
			[[⠀⠀ ⠀⣴⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀                                                                     ]],
			[[ ⠀⢀⣾⣿⣿⠿⠟⠛⠋⠉⠉⠀⠀⠀⠀⠀⠀⠉⠉⠙⠛⠻⠿⣿⣿⣷⡀⠀                                                                     ]],
			[[ ⣠⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⣄                                                                     ]],
			[[  ]],
			[[  ]],
			[[  ]],
		},

		center = {
			{ icon = "󰱼  ", desc = "Search File         ( 1 )", action = "Telescope find_files" },

			{ icon = "  ", desc = "Search String       ( 2 )", action = "Telescope live_grep" },
			{ icon = "  ", desc = "Recent Files        ( 3 )", action = "Telescope oldfiles" },
			{
				icon = "  ",
				desc = "Config              ( 4 )",
				action = "edit ~/.config/nvim/init.lua",
			},
			{ icon = "  ", desc = "Git                 ( 5 )     ", action = "LazyGit" },
		},
		footer = {},
	},
})

-- An autocommand to set up key mappings when the only dashboard buffer is opened
vim.api.nvim_create_autocmd("FileType", {
	pattern = "dashboard",
	callback = function()
		vim.api.nvim_buf_set_keymap(0, "n", "1", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
		vim.api.nvim_buf_set_keymap(0, "n", "2", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })
		vim.api.nvim_buf_set_keymap(0, "n", "3", "<cmd>Telescope oldfiles<CR>", { noremap = true, silent = true })
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"4",
			"<cmd>edit ~/.config/nvim/init.lua<CR>",
			{ noremap = true, silent = true }
		)
		vim.api.nvim_buf_set_keymap(0, "n", "5", "<cmd>LazyGit<CR>", { noremap = true, silent = true })
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"6",
			"<cmd>sp | term cd ~/.config/nvim && exec $SHELL<CR>",
			{ noremap = true, silent = true }
		)
	end,
})
