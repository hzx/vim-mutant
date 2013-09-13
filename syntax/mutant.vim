" Vim syntax file " Language: Mutant

" Quit when a syntax file was already loaded
if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  " we define it here so that included files can test for it
  let main_syntax='mutant'
  " syn region mutantFold start="{" end="}" transparent fold contains=ALL
endif


" Highlight superfluous closing parens, brackets and braces.
syn match mutError "]\|}\|)" 

" keyword definitions
syn keyword mutInclude      from import
syn keyword mutConditional  if else for while
syn keyword mutBoolean      true false
syn keyword mutConstant     none
syn keyword mutNumber       NPOS
syn keyword mutTypedef      define this super
syn keyword mutType         var bool int float string tag event void datetime object robject
syn keyword mutStructure    class struct
syn keyword mutOperator     and or in is not isnot
syn keyword mutStatement    return as
syn keyword mutStorageClass static
syn keyword mutClassDecl    extends implements interface
syn keyword mutLabel        default

" Comments
syn keyword mutTodo         contained TODO FIXME XXX
syn region mutComment       start="/\*" end="\*/" contains=mutTodo
syn match mutLineComment    "//.*" contains=mutTodo

" Strings
syn region mutString        start=+'+ end=+'+ contains=Char

" Blocks
syn region mutBlock         start="{" end="}" transparent fold contains=ALL
syn region mutFunc          start="(" end=")" contains=ALL
syn region mutArrayBlock    start="\[" end="\]" contains=ALL
syn region mutTag           start="<\|</" end=">\|/>" contains=ALL
" syn region mutSingleTagBlock start="<" end="/>"
" syn region mutTagOpenBlock      start="<" end=">"
" syn region mutTagCloseBlock   start="</" end=">"

" Numbers

" Tags
" syn region mutHtmlEndTag  start=+</+ end=+>+ contains=mutHtmlTagN
" syn region mutHtmlTag     start=+<[^/]+ end=+>+ contains=mutHtmlTagN
" syn match mutHtmlTagN     contained +<\s*[-a-zA-Z0-9]\++hs=s+1 contains=mutHtmlTagName
" syn match mutHtmlTagN     contained +</\s*[-a-zA-Z0-9]\++hs=s+2 contains=mutHtmlTagName
" Tag names
" syn keyword mutHtmlTagName contained div span

" The default highlighting.
command! -nargs=+ HiLink hi def link <args>
HiLink mutInclude         Include
HiLink mutConditional     Conditional
HiLink mutBoolean         Boolean
HiLink mutConstant        Constant
HiLink mutNumber          Number
HiLink mutTypedef         Typedef
HiLink mutType            Type
HiLink mutStructure       Structure
HiLink mutOperator        Operator
HiLink mutStatement       Statement
HiLink mutClassDecl       StorageClass
HiLink mutStorageClass    StorageClass
HiLink mutLabel           Label
" HiLink mutFunction        Function
HiLink mutTodo            Todo
HiLink mutComment         Comment
HiLink mutLineComment     Comment
HiLink mutString          String

" HiLink mutError           Error
HiLink mutBlock           Delimiter

" HiLink mutHtmlTag         Function
" HiLink mutHtmlEndTag      Identifier
" HiLink mutHtmlTagName     Statement
