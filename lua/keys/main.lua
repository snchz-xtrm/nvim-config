require('keys.alias')

-- nm - create hotkey on normal mode
-- im - create hotkey on insert mode
-- vm - create hotkey on visual mode
-- tm - create hotkey on terminal mode

im('<C-k>', '<escape>') -- Normal mode, instead Esc Ctrl + k
nm('<C-i>', ':NvimTreeToggle<CR>') -- Toggle Nvim Tree

-- gitsigns.nvim
--nm('<C>hs', gitsigns.stage_hunk)
--nm('<C>hr', gitsigns.reset_hunk)
--vm('<C>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
--vm('<C>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
--nm('<C>hS', gitsigns.stage_buffer)
--nm('<C>hu', gitsigns.undo_stage_hunk)
--nm('<C>hR', gitsigns.reset_buffer)
--nm('<C>hp', gitsigns.preview_hunk)
--nm('<C>hb', function() gitsigns.blame_line{full=true} end)
--nm('<C>tb', gitsigns.toggle_current_line_blame)
--nm('<C>hd', gitsigns.diffthis)
--nm('<C>hD', function() gitsigns.diffthis('~') end)
--nm('<C>td', gitsigns.toggle_deleted)

--nm('<C-s>', ':lua require("gitsigns").stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>', { noremap = true, silent = true })
-- Функция для стадирования текущей строки

-- Привязка комбинации клавиш <C-g> в нормальном режиме
--nm('<C-g>', ':<C-u>lua require("gitsigns").stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>', { noremap = true, silent = true })

-- Привязка комбинации клавиш <C-g>s в нормальном режиме
--nm('<C-g>s', ':<C-u>lua StageCurrentLine()<CR>', { noremap = true, silent = true })




-- Первый набор привязок для активации "режима гит"
-- nm('<C-g>', ':lua GitModeToggle()<CR>', { noremap = true, silent = true })
-- nm('s', ':lua GitStageHunk()<CR>', { noremap = true, silent = true })

local git_mode = require('plugins.git-mode')

-- Функция для создания привязок в нормальном режиме
function nm(key, cmd, opts)
  opts = opts or { noremap = true, silent = true }
  vim.api.nvim_set_keymap('n', key, cmd, opts)
end

-- Привязка для переключения "режима гит"
nm('<C-g>', ':lua require("plugins.git-mode").toggle_git_mode()<CR>')
