return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javacript = { "prettier" },
				markdown = { "prettier" },
				python = { "ruff_organize_imports", "ruff_fix", "ruff_format" },
				lua = { "stylua" },
				html = { "prettier" },
				json = { "prettier" },
				css = { "prettier" },
				yaml = { "prettier" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timout_ms = 500,
			},
		})
		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
