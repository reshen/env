" Vim user syntax file
" Language:	Perl
" Maintainer:	Ken Scott (kscott@pcisys.net)
" Last change:	Tue Dec 23 15:22:16 1997

" Remove any old syntax stuff hanging around
"syn clear

let perl_extended_vars = 1
"source $VIM/syntax/perl.vim

syntax match	perlSpecialVar	"\$[_./,\\"*?\];!@:\$<>()%=\-\~^|&`'+]\|\$[0-9]\+"
syntax match	perlSpecialVar	"\$\^[ADFILPTWX]"
syntax match	perlSpecialVar	"@_"

syntax match  perlOper 		"[!?:;.(){}[\]]"

syntax match perlConditional	"||=\="
syntax match perlConditional	"&&=\="
syntax match perlConditional	"\^=\="
syntax match perlConditional	"=="

if !exists("did_user_perl_syntax_inits")
  let did_user_perl_syntax_inits = 1
  " The default methods for highlighting.  Can be overridden later
  hi link  perlIdentifier	Normal
  hi link  perlOper		Statement
  hi link  perlSpecialVar	Statement
endif

" vim: ts=8
