" To Tabularize, use this command.:2,$Tabularize / \zecterm 
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "Subtle256"

:hi Comment        cterm=NONE           ctermfg=242    ctermbg=NONE
:hi Constant       cterm=NONE           ctermfg=134    ctermbg=NONE
:hi String         cterm=NONE           ctermfg=174    ctermbg=NONE
:hi Number         cterm=NONE           ctermfg=177    ctermbg=NONE
:hi CursorLineNr   cterm=NONE           ctermfg=245    ctermbg=134
:hi Identifier     cterm=NONE           ctermfg=131    ctermbg=NONE
:hi IncSearch      cterm=NONE           ctermfg=255    ctermbg=71
:hi LineNr         cterm=NONE           ctermfg=242    ctermbg=236
:hi Matchparen     cterm=NONE           ctermfg=255    ctermbg=NONE
:hi Normal         cterm=NONE           ctermfg=250    ctermbg=235 
:hi PreProc        cterm=NONE           ctermfg=141    ctermbg=NONE
:hi Search         cterm=NONE           ctermfg=255    ctermbg=73
:hi Special        cterm=NONE           ctermfg=137    ctermbg=NONE
:hi Statement      cterm=BOLD           ctermfg=71     ctermbg=NONE
:hi StatusLine     cterm=BOLD,REVERSE   ctermfg=73     ctermbg=NONE
:hi StatusLineNC   cterm=NONE           ctermfg=245    ctermbg=240
:hi TabLine        cterm=NONE           ctermfg=242    ctermbg=238
:hi TabLineFill    cterm=NONE           ctermfg=245    ctermbg=240
:hi TabLineSel     cterm=BOLD           ctermfg=255    ctermbg=73
:hi Todo           cterm=REVERSE        ctermfg=221    ctermbg=NONE
:hi Type           cterm=NONE           ctermfg=73     ctermbg=NONE
:hi VertSplit      cterm=NONE           ctermfg=245    ctermbg=240
:hi Visual         cterm=REVERSE        ctermfg=71     ctermbg=250
:hi CursorLine     cterm=NONE           ctermfg=NONE   ctermbg=238
:hi CursorColumn   cterm=NONE           ctermfg=NONE   ctermbg=238
:hi Pmenu          cterm=NONE           ctermfg=247    ctermbg=240
:hi PmenuSel       cterm=NONE           ctermfg=255    ctermbg=134
:hi PmenuSbar      cterm=REVERSE        ctermfg=247    ctermbg=240
:hi PmenuThumb     cterm=REVERSE        ctermfg=250    ctermbg=240
:hi Folded         cterm=NONE           ctermfg=141    ctermbg=237
:hi Error	       cterm=NONE           ctermfg=15   ctermbg=1   
