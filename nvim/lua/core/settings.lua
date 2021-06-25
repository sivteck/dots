local function set(config)
  vim.api.nvim_command('set ' .. config)
end

set('number')
set('formatoptions=tcqrn1')
set('tabstop=2')
set('shiftwidth=2')
set('softtabstop=2')
set('expandtab')
set('noshiftround')
