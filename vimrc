map ,1 :b!1<CR>
map ,2 :b!2<CR>
map ,3 :b!3<CR>
map ,4 :b!4<CR>
map ,5 :b!5<CR>
map ,6 :b!6<CR>
map ,7 :b!7<CR>
map ,8 :b!8<CR>
map ,9 :b!9<CR>
map ,0 :b!0<CR>
map ,x :bn!<CR>
map ,z :bp!<CR>
map ,w :bw<CR>
"ctags"
set tags=/home/kyt/kernel/linux-2.6.20/tags
if version >= 500
func! Sts( )
	let st = expand("<cword>")
	exe "sts ".st
endfunc
nmap ,st :call Sts( )<cr>
func! Tj( )
	let st = expand("<cword>")
	exe "tj ".st
endfunc
nmap ,tj :call Tj( )<cr>
endif
"cscope"
set csprg=/usr/bin/cscope
set nocsverb
cs add /home/kyt/kernel/linux-2.6.20/cscope.out
set csto=0
set cst
func! Css()
	let css = expand("<cword>")
	new
	exe "cs find s ".css
	if getline(1) == ""
		exe "q!"
	endif
endfunc
nmap ,css :call Css()<cr>
func! Csc()
	let csc = expand("<cword>")
	new
	exe "cs find c ".csc
	if getline(1) == ""
		exe "q!"
	endif
endfunc
nmap ,csc :call Csc()<cr>
func! Csd()
	let csd = expand("<cword>")
	new
	exe "cs find d ".csd
	if getline(1) == ""
		exe "q!"
	endif
endfunc
nmap ,csd :call Csd()<cr>
func! Csg()
	let csg = expand("<cword>")
	new
	exe "cs find g ".csg
	if getline(1) == ""
	exe "q!"
	endif
endfunc
nmap ,csg :call Csg()<cr>
