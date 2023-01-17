local status_ok, nvim_ts_autotag = pcall(require, 'nvim-ts-autotag')
if not status_ok then
    return
end

require('nvim-ts-autotag').setup()
