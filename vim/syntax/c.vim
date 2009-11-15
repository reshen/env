":vim:ts=8:sw=8:
" Vim syntax file
" Language:	C
" Maintainer:	Ken Scott <kscott@pcisys.net>
" Last change:	1997 Sep 29

"syntax clear
"source $VIM/syntax/c.vim

"Match older incorrect copyrights
syntax match cOldCopyright "-2003"
syntax match cWrongContract "03-I-090"

"Match GD #defines
syntax match gd_task_cDefine "\w\([A-Z]\)\([A-Z]\)\([A-Z0-9_]\)*\w"

"Match GD C Types, which normally begin with CMN_
syntax match gd_custom_cType "\w*_type"
syntax match gd_cType "CMN[A-Z0-9_]*"

"Match Motorola C Types
syntax match mot_int_cType "[SU]INT\([0-9]\)*"
syntax match mot_custom_cType "\w*_t\s"
syntax match mot_other_cType "\(BOOL\)\|\(BYTE\)\|\(void\)"


syntax keyword cNull		NULL TRUE FALSE

"syntax match  cOperator     "[!+*\-/=.,:&|^;<>()\[\]{}]"

syntax region cPreCondit	start="^#[ 	]*\(if\>\|ifdef\>\|ifndef\>\|elif\>\|else\>\|endif\>\)"  skip="\\$"  end="$"

syntax match  cTabError     "\t"
syntax match  cSecret       "SECRET"

syntax match  cFunction		"^[a-zA-Z_][a-zA-Z0-9_<>:]*("me=e-1
syntax region cComment		start="/\*"  end="\*/" contains=cTodo,cTabError,cSecret,cOldCopyright,cWrongContract
syntax match  cComment		"//.*" contains=cTodo,cTabError,cSecret,cOldCopyright,cWrongContract
syntax match  cCommentError	"\*/"

"integer number, or floating point number without a dot and with "f".
syntax case ignore
syntax match  cNumber		"-\=\<[0-9]\+\(u\=l\=\|lu\|f\)\>"
"floating point number, with dot, optional exponent
syntax match  cFloat		"-\=\<[0-9]\+\.[0-9]*\(e[-+]\=[0-9]\+\)\=[fl]\=\>"
"floating point number, starting with a dot, optional exponent
syntax match  cFloat		"-\=\.[0-9]\+\(e[-+]\=[0-9]\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syntax match  cFloat		"-\=\<[0-9]\+e[-+]\=[0-9]\+[fl]\=\>"
syntax case match

syntax region  cString		  start=+"+  skip=+\\\\\|\\"+  end=+"+
syntax match   cSpecial contained "\\[0-9][0-9][0-9]\|\\."
syntax match   cCharacter	  "'[^\\]'"
syntax match   cSpecialCharacter  "'\\.'"
syntax match   cSpecialCharLong  "'\\[0-9][0-9][0-9]'"

syntax region cPreCondit	start="^[ \t]*#[ \t]*\(if\>\|ifdef\>\|ifndef\>\|elif\>\|else\>\|endif\>\)"  skip="\\$"  end="$" contains=cComment,cString,cCharacter
syntax region cIncluded contained start=+"+  skip=+\\\\\|\\"+  end=+"+
syntax match  cIncluded contained "<[^>]*>"
syntax match  cInclude		"^[ \t]*#[ \t]*include\>[ \t]*["<]" contains=cIncluded
"syntax match  cLineSkip	"\\$"
syntax region cDefine		start="^[ \t]*#[ \t]*\(define\>\|undef\>\)" skip="\\$" end="$"
syntax region cPreProc		start="^[ \t]*#[ \t]*\(pragma\>\|line\>\|warning\>\|warn\>\|error\>\)" skip="\\$" end="$"

if !exists("did_user_c_syntax_inits")
  let did_user_c_syntax_inits = 1
  " The default methods for highlighting.  Can be overridden later
  highlight link cLabel		Label
  highlight link cUserLabel		Label
  highlight link cConditional	Conditional
  highlight link cRepeat	Repeat
  highlight link cCharacter	Character
  highlight link cSpecialCharacter cString
  highlight link cSpecialCharLong cString
  highlight link cNull		Boolean
  highlight link gd_bool_cType Boolean
  highlight link cNumber	Number
  highlight link cFloat		Float
  highlight link cCommentError	cError
  highlight link cTabError	cError
  highlight link cSecret    cError
  highlight link cOperator	Operator
  highlight link cStructure	Structure
  highlight link cStorageClass	StorageClass
  highlight link cInclude	Include
  highlight link cPreProc	PreProc
  highlight link cDefine	Macro
  highlight link gd_task_cDefine	Constant
  highlight link gd_cmn_cDefine	Constant
  highlight link cIncluded	cString
  highlight link cError		Error
  highlight link cStatement	Statement
  highlight link cPreCondit	PreCondit
  highlight link cType		Type
  highlight link gd_cType   Type
  highlight link gd_custom_cType   Type
  highlight link mot_int_cType  Type
  highlight link mot_custom_cType  Type
  highlight link mot_other_cType  Type
  highlight link cString	String
  highlight link cComment	Comment
  highlight link cSpecial	Special
  highlight link cTodo		Todo
  highlight link cOldCopyright	Todo
  highlight link cWrongContract	Todo
  highlight link cFunction	Function
  highlight link cSecret  	cError
endif
