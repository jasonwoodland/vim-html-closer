" Vim filetype plugin file
" Language:	HTML
" Maintainer:	Jason Woodland <me@jasonwoodland.com>
" Last Change:	Tue 5 Dec 2017

inoremap <expr> <Enter> HtmlCloserCheck()
inoremap <expr> / HtmlCloserClose()

fun! HtmlCloserCheck()
    if getline('.')[col('.') - 2] == '>'
	" <C-j>		Next line
	" <C-d>		Move back 1 indentation (BS might delete line on
	"		<script> tags
	" </<C-x><C-o>	Close the tag
	" <Esc>		O Insert mode on prev line
	return "\<C-j>\<C-d></\<C-x>\<C-o>\<Esc>O"
    else
	return "\<Enter>"
    endif
endfun

fun! HtmlCloserClose()
    if getline('.')[col('.')-2] == '<'
	return "/\<C-x>\<C-o>"
    else
	return "/"
    endif
endfun
