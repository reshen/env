" Vim syntax file
" Language:	clearcase view config spec
" Maintainer:	Ty Lindteigen
" Last change:	Tuesday, March 28, 2000

" Remove any old syntax stuff hanging around
syn clear

syn case match

" Scope of version selection
syn match ctFlagType "-directory"
syn match ctFlagType "-file"
syn match ctFlagType "-eltype"

" Special version selectors
syn match ctFlagType "-config"
syn match ctFlagType "-select"
syn match ctFlagType "-ci"
syn match ctFlagType "-none"
syn match ctFlagType "-error"

" optional command clause
syn match ctCmdType "-nocheckout"
syn match ctCmdType "-mkbranch"
syn match ctCmdType "-override"
syn match ctCmdType "-time"

" general
syn match ctKeyWord "element"

syn match ctComment "#.*"

syn match ctQuery   "{.*}"


" map the colors
if !exists("did_ct_syntax_inits")
  let did_ct_syntax_inits = 1

  " The default methods for highlighting.  Can be overridden later
  hi link ctFlagType	Label
  hi link ctComment	Comment
  hi link ctCmdType	Statement
  hi link ctKeyWord 	Macro
  hi link ctQuery       Special

  "hi link asmInclude	Include
  "hi link asmCond	PreCondit
  "hi link binNumber	Number


  "hi link ctTodo        Todo
  " My default color overrides:

endif

let b:current_syntax = "clearcase view cs"

" vim: ts=8
