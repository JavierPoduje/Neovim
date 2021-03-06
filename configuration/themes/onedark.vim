hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1 " available 1, 0
let g:onedark_termcolors=16 " available: 256, 16
let g:onedark_terminal_italics=1 " available 1, 0

let g:airline_theme='onedark'
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

let g:onedark_color_overrides = {
\ "black": {"gui": "#1c1e24", "cterm": "235", "cterm16": "0" },
\}

if (has("autocmd"))
  augroup colorextend
    autocmd!

    autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
    autocmd ColorScheme * call onedark#extend_highlight("Keyword", { "gui": "bold" })
    autocmd ColorScheme * call onedark#extend_highlight("Type", { "gui": "bold" })
    autocmd ColorScheme * call onedark#extend_highlight("SpecialComment", { "gui": "bold" })
    autocmd ColorScheme * call onedark#extend_highlight("Todo", { "gui": "bold" })
    autocmd ColorScheme * call onedark#extend_highlight("Conditional", { "gui": "bold" })
    autocmd ColorScheme * call onedark#extend_highlight("Boolean", { "gui": "bold" })
  augroup END
endif

" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
"if (has("autocmd") && !has("gui_running"))
"  augroup colorset
"    autocmd!
"    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
"    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
"  augroup END
"endif


colorscheme onedark

highlight ColorColumn ctermbg=0 guibg=#202329
