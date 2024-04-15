if version > 580
  hi clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'far'
set background=dark

let s:white = "#FFFFFF"
let s:black = "#000000"
let s:gray = "#808080"
let s:lightgray = "#C0C0C0"
let s:blue = "#000060"
let s:lightblue = "#000080"
let s:teal = "#008080"
let s:cyan = "#00FFFF"
let s:red = "#A00000"
let s:yellow = "#FFFF05"

let s:white_term = 15
let s:black_term = 0
let s:gray_term = 8
let s:lightgray_term = 7
let s:lightblue_term = 4
let s:blue_term = 17
let s:teal_term = 6
let s:cyan_term = 14
let s:red_term = 9
let s:yellow_term = 11

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  let cmd = ""
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    let cmd = cmd . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    let cmd = cmd . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    let cmd = cmd . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction

"+--- Editor ---+
call s:hi("ColorColumn", "", s:lightgray, "", s:lightgray_term, "", "")
call s:hi("Cursor", s:black, s:yellow, s:black_term, s:yellow_term, "", "")
call s:hi("CursorLine", "", s:lightblue, "", s:lightblue_term, "", "")
call s:hi("Error", s:white, s:red, s:white_term, s:red_term, "", "")
call s:hi("iCursor", s:yellow, s:yellow, s:yellow_term, s:yellow_term, "", "")
call s:hi("LineNr", s:gray, s:blue, s:gray_term, s:blue_term, "", "")
call s:hi("MatchParen", s:red, "", s:red_term, "", "", "")
call s:hi("NonText", s:cyan, "", s:cyan_term, "", "", "")
call s:hi("Normal", s:cyan, s:blue, s:cyan_term, s:blue_term, "", "")


" Popup menu
call s:hi("Pmenu", s:black, s:lightgray, s:black_term, s:lightgray_term, "NONE", "")
"call s:hi("PmenuSbar", s:nord4_gui, s:nord2_gui, "NONE", s:nord1_term, "", "")
call s:hi("PmenuSel", s:black, s:teal, s:black_term, s:teal_term, "", "")
"call s:hi("PmenuThumb", s:nord8_gui, s:nord3_gui, "NONE", s:nord3_term, "", "")

""call s:hi("SpecialKey", s:nord3_gui, "", s:nord3_term, "", "", "")
""call s:hi("SpellBad", s:nord11_gui, s:nord0_gui, s:nord11_term, "NONE", "undercurl", s:nord11_gui)
""call s:hi("SpellCap", s:nord13_gui, s:nord0_gui, s:nord13_term, "NONE", "undercurl", s:nord13_gui)
""call s:hi("SpellLocal", s:nord5_gui, s:nord0_gui, s:nord5_term, "NONE", "undercurl", s:nord5_gui)
""call s:hi("SpellRare", s:nord6_gui, s:nord0_gui, s:nord6_term, "NONE", "undercurl", s:nord6_gui)

call s:hi("Visual", "", s:teal, "", "", "", "")
call s:hi("VisualNOS", "", s:teal, "", "", "", "")

"+--- Navigation ---+
call s:hi("Directory", s:white, "", s:white_term, "NONE", "", "")

"+--- Prompt/Status ---+
call s:hi("StatusLine", s:black, s:teal, s:black_term, s:teal_term, "NONE", "")
call s:hi("StatusLineNC", s:black, s:gray, s:black_term, s:gray_term, "NONE", "")
call s:hi("StatusLineTerm", s:black, s:teal, s:black_term, s:teal_term, "NONE", "")
call s:hi("StatusLineTermNC", s:black, s:gray, s:black_term, s:gray_term, "NONE", "")

"+----------------------+
"+ Language Base Groups +
"+----------------------+
" call s:hi("Boolean", s:nord9_gui, "", s:nord9_term, "", "", "")
" call s:hi("Character", s:nord14_gui, "", s:nord14_term, "", "", "")
call s:hi("Comment", s:gray, "", s:gray_term, "", "", "")
call s:hi("Conceal", "", "NONE", "", "NONE", "", "")
call s:hi("Conditional", s:white, "", s:white_term, "", "", "")
call s:hi("Constant", s:white, "", s:white_term, "", "", "")
call s:hi("Identifier", s:white, "", s:white_term, "", "", "")
call s:hi("Keyword", s:white, "", s:white_term, "", "", "")
call s:hi("Special", s:white, "", s:white_term, "", "", "")
call s:hi("Statement", s:cyan, "", s:cyan_term, "", "", "")
call s:hi("Type", s:white, "", s:white_term, "", "", "")
hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link Variable Identifier

hi! link Function Keyword
hi! link Include Keyword
hi! link Define Keyword
hi! link Decorator Keyword
hi! link Operator Keyword
hi! link Preproc Keyword
hi! link Float Keyword
hi! link Structure Keyword

hi! link Delimiter Keyword
hi! link Exception Keyword

hi! link Typedef Type

hi! link SpecialChar Special
hi! link SpecialComment Special

hi! link String Constant
hi! link Label Constant

hi! link Number Normal
hi! link Repeat Normal
hi! link StorageClass Normal

hi! link Tag Comment
hi! link Todo Comment
