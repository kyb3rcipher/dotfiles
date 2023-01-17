local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter')
if not status_ok then
    return
end

require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'html' },
}
