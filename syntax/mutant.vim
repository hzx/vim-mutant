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
  syn region mutantFold start="{" end="}" transparent fold
endif

" keyword definitions
syn keyword mutConditional   if else
syn keyword mutBoolean       true false
syn keyword mutConstant      none
syn keyword mutTypedef       define
syn keyword mutType          var bool int float string
syn keyword mutStatement     return
syn keyword mutClassDecl     extends

syn keyword mutLabel        default

" Comments
syn keyword mutTodo         contained TODO FIXME XXX
syn region mutComment       start="/\*" end="\*/" contains=mutTodo
syn match mutLineComment    "#.*" contains=mutTodo

" Strings
syn region mutString        start=+'+ end=+'+ contains=Char

" Numbers

" The default highlighting.
command! -nargs=+ HiLink hi def link <args>
HiLink mutConditional     Conditional
HiLink mutBoolean         Boolean
HiLink mutConstant        Constant
HiLink mutTypedef         Typedef
HiLink mutType            Type
HiLink mutStatement       Statement
HiLink mutClassDecl       StorageClass
HiLink mutLabel           Label
HiLink mutTodo            Todo
HiLink mutComment         Comment
HiLink mutLineComment     Comment
HiLink mutString          String
