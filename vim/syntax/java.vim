":vim:ts=8:sw=8:
" Vim syntax file
" Language:	Java
" Maintainer:	Ty Lindteigen <lind@topdog>
" Last change:	March 24, 1999

syntax clear
"let java_highlight_functions=1
source $VIM/syntax/java.vim


" Add the java1.2 @comment_flags 
"syn match javaDocTags contained "@\(throws\|serial\|serialData\|serialField\)"
"syn match javaDocTags contained "{\@link .*}"

" Add the TODO highlight for comments

syntax keyword	javaTodo contained	TODO FIXME XXX
syn region  javaComment          start="/\*"  end="\*/" contains=javaCommentString,javaCharacter,javaNumber,javaTodo
syn match   javaLineComment      "//.*" contains=javaComment2String,javaCharacter,javaNumber,javaTodo

syn match   javaStringType    "String"

"if !exists( "java_ignore_javadoc" )
"  syn region  javaComment       start="/\*\*"  end="\*/" contains=javaCommentTitle,javaHtmlError,javaHtmlTag,javaHtmlEndTag,javaHtmlSpecialChar,javaHtmlComment,javaDocTags,javaTodo
"endif

hi link		javaTodo		Todo
hi link		javaStringType    Type
hi link     SpecialComment     Comment
