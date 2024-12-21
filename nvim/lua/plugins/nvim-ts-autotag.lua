return {
	"windwp/nvim-ts-autotag",
	config = function()
		require("nvim-ts-autotag").setup({
			-- Defaults
			enable_close = true, -- Auto close tags
			enable_rename = true, -- Auto rename pairs of tags
			enable_close_on_slash = true, -- Auto close on trailing </

			-- Override individual filetype configs
			filetypes = {
				html = {
					enable_close = false, -- Disable auto-close for HTML
				},
			},
		})
	end,
}

