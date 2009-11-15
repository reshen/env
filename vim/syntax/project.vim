" Vim syntax file

"syntax clear

syntax match projDate         "20[0-9][0-9]\.[0-9][0-9]\.[0-9][0-9]"
syntax match projPriorityHigh "^\s*!"
syntax match projPriorityMed  "^\s*="
syntax match projPriorityLo   "^\s*-"
syntax match projPriorityDone "^\s*+"
syntax match projHeader   "\[.*\]"
syntax match projNumber "^[0-9]+\."

" Cool blue = #3380CB
" Yellow = #FFF900
" Orange = #FF9800
" Red = #FF000B

hi projDate           guifg=#44BBB6
hi projNumber         guifg=#3380CB
hi projPriorityHigh   guifg=#FF000B
hi projPriorityMed    guifg=#FF9800
hi projPriorityLo     guifg=#FFF900
hi projPriorityDone   guifg=#3CFF00
hi projHeader         guifg=#3380CB
