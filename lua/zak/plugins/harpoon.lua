return {
 'theprimeagen/harpoon',
  dependencies = {"nvim-lua/plenary.nvim",
  		  "nvim-telescope/telescope.nvim"},
  branch="harpoon2",
  keys = {
    {"<leader>a", function() harpoon:list():add() end},
    {"<C-e>", function() harpoon.ui.toggle_quick_menu(harpoon:list()) end },
    {"<C-h>", function() harpoon:list():select(1) end},
    {"<C-t>", function() harpoon:list():select(2) end},
    {"<C-n>", function() harpoon:list():select(3) end},
    {"<C-s>", function() harpoon:list():select(4) end},
    {"<C-S-P>", function() harpoon:list():prev() end},
    {"<C-S-N>", function() harpoon:list():next() end},
 },
 config = function()
     local harpoon = require("harpoon")
     harpoon.setup({})
 end
}
