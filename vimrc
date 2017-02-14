execute pathogen#infect()
syntax on
filetype plugin indent on

" settings for powerline.
set  rtp+=/home/fizzyquizler/.local/lib/python3.5/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

" basic settings.
set number
set spell
set tabstop=4
set colorcolumn=110
" this command will set the timeout for the leader functions to be longer.
set timeoutlen=4000


" make the comments show as grey.
highlight Comment ctermfg=grey

"make the Strings show as green.
highlight String ctermfg=green



" used for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"set up the leader key.
let mapleader = ","


" area for setting up the macros that I will be using.
" Java Macros.
" java basic commands.
map <Leader>jo i<Tab><Tab>System.out.println();<LEFT><LEFT>
map <Leader>jt i<Tab><Tab>try{<CR><CR>}catch(Exception e){<CR>e.printStackTrace<CR>}<CR><ESC>
map <Leader>jm i<Tab>public static void main(String [] args){<CR><CR>}<Home><Del><UP><UP><UP><Del><DOWN><Tab><Tab><ESC>
map <Leader>jf i<Tab><Tab>for(int a = 0;a<[change me!];a++){<CR>}<CR><UP>
map <Leader>je i<Tab><Tab>for([object type] a: [Variables]){<CR>}<CR><UP>
map <Leader>jw i<Tab><Tab>while([change me!]){<CR><CR>}<UP><Tab><Tab>
" map java primitive data types.
map <Leader>jdi iint ;<LEFT>
map <Leader>jdd idouble ;<LEFT>
map <Leader>jdc ichar ;<LEFT>
map <Leader>jds iString ;<LEFT>
map <Leader>jdb iboolean ;<LEFT>
map <Leader>jdf ifloat ;<LEFT>
map <Leader>jdl ilong ;<LEFT>
map <Leader>jdh ishort ;<LEFT>
" Java programming key words.
map <Leader>jkq ipublic  <ESC>
map <Leader>jkw iprivate  <ESC>
map <Leader>jke iprotected  <ESC>
map <Leader>jka iabstract  <ESC>
map <Leader>jks istatic  <ESC>
map <Leader>jkc iclass {}<LEFT><CR><UP><RIGHT><RIGHT><RIGHT><RIGHT><RIGHT>
map <Leader>jkf ifinal  <ESC>
map <Leader>jkn inew  <ESC>
" Vim Macros.
map <Leader>t :tabedit<Space>
map <Leader>l :TlistToggle<RETURN>
map <Leader>; :TlistUpdate<RETURN>
map <Leader>a i<TAB><TAB><ESC>
map <Leader>0 :%s/\s\+$//<RETURN>
map <Leader>] :SyntasticToggle<RETURN>
map <Leader>[ :NERDTree<RETURN>
