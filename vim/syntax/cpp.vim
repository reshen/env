" Vim syntax file
" Language:	C++
" Maintainer:	Ken Shan <ken@digitas.harvard.edu>
" Last change:	1997 May 15

" Remove any old syntax stuff hanging around
syntax clear

" Read the C syntax to start with
source <sfile>:p:h/c.vim

" C++ extentions

syntax keyword cppStatement	new delete this
syntax keyword cppStatement	template operator friend typename
syntax keyword cppScopeDecl	public protected private
syntax keyword cppType		inline virtual bool
syntax keyword cppExceptions	throw try catch
syntax match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast[ 	]*<"me=e-1
syntax match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast[ 	]*$"
syntax keyword cppCast		explicit
syntax keyword cppStorageClass	mutable
syntax keyword cppNumber	NPOS
syntax keyword cppBoolean	true false

syntax match cppClassPreDecl	"^[ 	]*class[ 	][ 	]*[a-zA-Z_][a-zA-Z0-9_:]*[ 	]*;"
syntax match cppClassDecl	"^[ 	]*class[ 	][ 	]*[a-zA-Z_][a-zA-Z0-9_]*"

" Functions ...
syntax match cppFunction  "^[a-zA-Z_][a-zA-Z0-9_<>:]*("me=e-1
syntax match cppMethod  "^[a-zA-Z_][a-zA-Z0-9_<>:]*::\~\=[a-zA-Z0-9_<>:]\+("me=e-1

syntax match cppMethodWrapped contained  "[a-zA-Z_][a-zA-Z0-9_<>:]*::[a-zA-Z0-9_<>:]\+"
syntax match cppMethodWrap  "^[a-zA-Z_][a-zA-Z0-9_<>:]*[ 	][ 	]*[a-zA-Z_][a-zA-Z0-9_<>:]*::[a-zA-Z0-9_<>:]\+("me=e-1 contains=cppMethodWrapped

if !exists("did_cpp_syntax_inits")
  let did_cpp_syntax_inits = 1
  highlight link cppClassDecl	Typedef
  highlight link cppClassPreDecl	cppStatement
  highlight link cppScopeDecl	cppStatement
  highlight link cppCast	cppStatement
  highlight link cppExceptions	cppStatement
  highlight link cppMethod	cppFunction
  highlight link cppStatement	Statement
  highlight link cppType	Type
  highlight link cppMethod	Function
  highlight link cppFunction	Function
  highlight link cppStorageClass	StorageClass
  highlight link cppNumber	Number
  highlight link cppBoolean	Boolean
endif

let current_syntax = "cpp"
