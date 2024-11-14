require("zak.remap")
require("zak.lazy")
require("zak.set")

function ColorMyPencils(color)
	color = color
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()

if vim.fn.has("wsl") then
	vim.g.clipboard = {
			   name= 'WslClipboard',
			   copy= {
			      ["+"]= 'win32yank.exe -i --crlf',
			      ["*"]= 'win32yank.exe -i --crlf',
			    },
			   paste= {
			      ["+"]= 'win32yank.exe -o --lf',
			      ["*"]= 'win32yank.exe -o --lf',
			   },
			   cache_enabled= true,
			  }
--	  vim.keymap.set({"n", "v"}, "y", '"+y', { noremap = true, silent = true })
--	  vim.keymap.set({"n", "v"}, "p", '"+p', { noremap = true, silent = true })
end

