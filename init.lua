-- Import base settings
require('base.editor')
require('base.search')
require('base.indent')

-- Keymaps
require('keys.main')

-- Plugins
require('lazy-loader')
require('plugins.git-mode')

-- Theme
require('onedark').load()

