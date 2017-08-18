" vim-airline template by chartoin (http://github.com/chartoin)
" Base 16 Flat Scheme by Chris Kempson (http://chriskempson.com)
let g:airline#themes#base16_flat#palette = {}
let s:gui00 = "#2C3E50"
let s:gui01 = "#34495E"
let s:gui02 = "#7F8C8D"
let s:gui03 = "#95A5A6"
let s:gui04 = "#BDC3C7"
let s:gui05 = "#e0e0e0"
let s:gui06 = "#f5f5f5"
let s:gui07 = "#ECF0F1"
let s:gui08 = "#E74C3C"
let s:gui09 = "#E67E22"
let s:gui0A = "#F1C40F"
let s:gui0B = "#2ECC71"
let s:gui0C = "#1ABC9C"
let s:gui0D = "#3498DB"
let s:gui0E = "#9B59B6"
let s:gui0F = "#be643c"

let s:cterm00 = 0
let s:cterm01 = 1
let s:cterm02 = 2
let s:cterm03 = 3
let s:cterm04 = 4
let s:cterm05 = 5
let s:cterm06 = 6
let s:cterm07 = 7
let s:cterm08 = 8
let s:cterm09 = 9
let s:cterm0A = 10
let s:cterm0B = 11
let s:cterm0C = 12
let s:cterm0D = 13
let s:cterm0E = 14
let s:cterm0F = 15

let s:N1   = [ s:gui01, s:gui0B, s:cterm0F, s:cterm0A ]
let s:N2   = [ s:gui06, s:gui02, s:cterm0F, s:cterm02 ]
let s:N3   = [ s:gui09, s:gui01, s:cterm08, s:cterm00 ]
let g:airline#themes#base16_flat#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui01, s:gui0D, s:cterm0F, s:cterm0C ]
let s:I2   = [ s:gui06, s:gui02, s:cterm0F, s:cterm04 ]
let s:I3   = [ s:gui09, s:gui01, s:cterm08, s:cterm00 ]
let g:airline#themes#base16_flat#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui01, s:gui08, s:cterm0F, s:cterm09 ]
let s:R2   = [ s:gui06, s:gui02, s:cterm0F, s:cterm01 ]
let s:R3   = [ s:gui09, s:gui01, s:cterm08, s:cterm00 ]
let g:airline#themes#base16_flat#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui01, s:gui0E, s:cterm0F, s:cterm0D ]
let s:V2   = [ s:gui06, s:gui02, s:cterm0F, s:cterm05 ]
let s:V3   = [ s:gui09, s:gui01, s:cterm08, s:cterm00 ]
let g:airline#themes#base16_flat#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:gui05, s:gui01, s:cterm0F, s:cterm08 ]
let s:IA2   = [ s:gui05, s:gui01, s:cterm0F, s:cterm08 ]
let s:IA3   = [ s:gui05, s:gui01, s:cterm08, s:cterm00 ]
let g:airline#themes#base16_flat#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base16_flat#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm0F, s:cterm00, '' ],
      \ [ s:gui07, s:gui04, s:cterm0F, s:cterm0D, '' ],
      \ [ s:gui05, s:gui01, s:cterm0F, s:cterm05, '' ])

let g:airline#themes#base16_flat#palette.tabline = {
      \ 'airline_tab':     [ '#ffffff' , '#5f00af' ,  s:cterm0F , s:cterm0D  , ''  ],
      \ 'airline_tabsel':  [ '#ffffff' , '#875fd7' ,  s:cterm0F , s:cterm05  , ''  ],
      \ 'airline_tabtype': [ '#ffffff' , '#875fd7' ,  s:cterm0F , s:cterm05  , ''  ],
      \ 'airline_tabfill': [ '#ffffff' , '#121212' ,  s:cterm0F , s:cterm00  , ''  ],
      \ 'airline_tabmod':  [ '#ffffff' , '#ff5f5f' ,  s:cterm0F , s:cterm04  , ''  ]
      \ }
