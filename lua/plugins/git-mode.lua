-- lua/plugins/git_mode.lua

local M = {}

-- Флаг для отслеживания состояния "режима гит"
M.git_mode = false

-- Функция для переключения "режима гит"
function M.toggle_git_mode()
    M.git_mode = not M.git_mode
    vim.cmd("redrawstatus") -- Перерисовать статусную строку
end

-- Функция для получения статуса режима "git"
function M.get_git_mode_status()
    return M.git_mode and 'GIT' or 'GIT'
end

-- Функция для получения цвета
function M.get_git_mode_color()
    return M.git_mode and { fg = '#3B3F4C', bg='#D7563D', gui = 'bold' } or { fg = '#ABB2BF', bg='#3B3F4C' }
end

return M
