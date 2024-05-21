require('nvim-tree').setup({
	sort = {
    sorter = "name",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- Disable lualine on nvim-tree
local M = {}

function M.setup()
  local nt_api = require('nvim-tree.api')

  nt_api.events.subscribe(nt_api.events.Event.TreeOpen, function()
    local tree_winid = nt_api.tree.winid()

    if tree_winid ~= nil then
      vim.api.nvim_set_option_value('statusline', ' NvimTree ', { scope = 'local', win = tree_winid })
    end
  end)
  
  nt_api.events.subscribe(nt_api.events.Event.TreeClose, function()
    local tree_winid = nt_api.tree.winid()

    if tree_winid ~= nil then
      vim.api.nvim_set_option_value('statusline', '', { scope = 'local', win = tree_winid })
    end
  end)
end

return M
