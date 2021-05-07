set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1

let g:ale_fix_on_save = 1

let g:ale_linters = {'elixir': ['credo', 'dialyxir', 'elixir-ls']}
let g:ale_elixir_elixir_ls_release = '/home/cschmatzler/.local/bin/elixir-ls'
