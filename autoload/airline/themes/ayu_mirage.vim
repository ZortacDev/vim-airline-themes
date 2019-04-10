" Normal mode
" (Dark)
let s:N1 = [ '#707A8C' , '#BAE67E' , 66  , 150 ] " guifg guibg ctermfg ctermbg
let s:N2 = [ '#BAE67E' , '#383E4C' , 150 , 59  ] " guifg guibg ctermfg ctermbg
let s:N3 = [ '#CBCCC6' , '#1F2430' , 188 , 239 ] " guifg guibg ctermfg ctermbg

" Insert mode
let s:I1 = [ '#707A8C' , '#5CCFE6' , 66  , 80  ] " guifg guibg ctermfg ctermbg
let s:I2 = [ '#5CCFE6' , '#383E4C' , 80  , 59  ] " guifg guibg ctermfg ctermbg
let s:I3 = [ '#CBCCC6' , '#1F2430' , 188 , 239 ] " guifg guibg ctermfg ctermbg

" Visual mode
let s:V1 = [ '#707A8C' , '#FFA759' , 66  , 215 ] " guifg guibg ctermfg ctermbg
let s:V2 = [ '#FFA759' , '#383E4C' , 215 , 59  ] " guifg guibg ctermfg ctermbg
let s:V3 = [ '#CBCCC6' , '#1F2430' , 188 , 239 ] " guifg guibg ctermfg ctermbg

" Replace mode
let s:RE = [ '#707A8C' , '#FF3333' , 66  , 203 ] " guifg guibg ctermfg ctermbg

let g:airline#themes#ayu_mirage#palette = {}

let g:airline#themes#ayu_mirage#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#ayu_mirage#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#ayu_mirage#palette.insert_replace = {
            \ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#ayu_mirage#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let g:airline#themes#ayu_mirage#palette.replace = copy(g:airline#themes#ayu_mirage#palette.normal)
let g:airline#themes#ayu_mirage#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]

let s:IA = [ s:N1[1] , s:N3[1] , s:N1[3] , s:N3[3] , '' ]
let g:airline#themes#ayu_mirage#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
