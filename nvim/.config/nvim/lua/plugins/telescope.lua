local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
    return
end

require('telescope').setup {
    defaults = {
        mappings = {
            ['i'] = { ['kk'] = 'close' },
            ['n'] = { ['kk'] = 'close' },
        },
    },
}
-- Extentions
require('telescope').load_extension 'file_browser'
