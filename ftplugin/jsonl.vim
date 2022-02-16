" Vim syntax file
" Language:	JSONL
" Maintainer:	Eli Parra <eli@elzr.com> https://github.com/elzr/vim-json
" Last Change:	2014-05-20 added warning toggle

"conceal by default
if !exists("g:vim_jsonl_syntax_conceal")
	let g:vim_jsonl_syntax_conceal = 1
end

"have warnings by default
if !exists("g:vim_jsonl_warnings")
	let g:vim_jsonl_warnings = 1
end

"set concealcursor blank by default
"this should turn off the concealing in the current line (where the cursor is at),
"on all modes (normal, visual, insert)
if !exists("g:vim_jsonl_syntax_concealcursor")
	let g:vim_jsonl_syntax_concealcursor = ""
end

if has('conceal')
	if (g:vim_jsonl_syntax_conceal == 1)
		"level 2 means concealed text gets completely hidden unless a
		"replacement is defined (none is defined by us)
		setlocal conceallevel=2
		let &l:concealcursor = g:vim_jsonl_syntax_concealcursor
	else
		"level 0 means text is shown normally = no concealing
		setlocal conceallevel=0
	endif
	"maybe g:vim_jsonl_syntax_conceal could be settable to 0,1,2 to map
	"directly to vim's conceallevels? unsure if anyone cares
endif
