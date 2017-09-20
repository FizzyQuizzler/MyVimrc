execute pathogen#infect()
syntax on
filetype plugin indent on

" settings for power line.
set  rtp+=/home/$USER/.local/lib/python3.5/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

" basic settings.
set number
set relativenumber
set spell
set tabstop=4
set autoindent
set colorcolumn=110
" this command will set the timeout for the leader functions to be longer.
set timeoutlen=4000

" sets the word wrap to disabled.
set nowrap



"Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
	colorscheme desert
catch
endtry

 
"This is the Color Scheme for Vim.
hi Normal       ctermfg=LightGrey
hi NonText      ctermfg=White
hi String       ctermfg=Green
hi Function     ctermfg=White

hi Statement    ctermfg=Cyan
hi Comment      ctermfg=Blue
hi Constant     ctermfg=darkgreen
hi Identifier   ctermfg=DarkBlue
hi Type         ctermfg=Cyan
hi Folded       ctermfg=White
hi Special      ctermfg=Blue
hi PreProc      ctermfg=Blue
hi Scrollbar    ctermfg=Blue
hi Cursor       ctermfg=white
hi ErrorMsg     ctermfg=white
hi WarningMsg   ctermfg=Black
hi VertSplit    ctermfg=White
hi Directory    ctermfg=Cyan
hi Visual       ctermfg=Black 
hi Title        ctermfg=White
hi ColorColumn  ctermfg=Black ctermbg=Blue
hi clear Spellbad
hi SpellBad     ctermfg=red cterm=underline
hi Error        ctermfg=Black ctermbg=Red
hi SpellCap     ctermfg=Black
hi CursorLineNr ctermfg=DarkBlue
hi TODO         ctermfg=Yellow ctermbg=none cterm=Underline
"hi SpellRare
"hi SpellLocal

hi StatusLine   term=bold cterm=bold ctermfg=White
hi StatusLineNC term=bold cterm=bold ctermfg=Gray
hi LineNr       term=bold cterm=bold ctermfg=White

"let W0rp work with syntastic.
let g:ale_emit_conflict_warnings = 0

" this is here to load the lib folder of a java project as a source folder.
let g:ale_java_javac_classpath = ".:lib/*"

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

"this will handle starting the control-p
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Tlist_Inc_Winwidth=0

"disable the arrow keys for learning hjkl...
"noremap <Up> <NOP>
"noremap <DOWN> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

"imap <Up> <NOP>
"imap <down> <NOP>
"imap <Left> <NOP>
"imap <Right> <NOP>


" area for setting up the macros that I will be using.
" --------------------------------------------------------
"  -------------------------------------------------------
" Java Macros.
" Java Basic Comment Structure.
map <Leader>jc i//Variables.<CR>Class Variables.<CR>methods.<HOME><CR><UP><UP><CR><ESC>
" java basic commands.
map <Leader>jfxa iAnimationTimer loop = new AnimationTimer(){<CR>public void handle(long now){<CR>}};<ESC>ggjjOimport javafx.animation.AnimationTimer;
map <Leader>ji iif(){<RETURN><UP><HOME><DELETE><DOWN><DOWN><DELETE><UP><TAB><TAB><TAB><UP><LEFT>
map <Leader>jo i<Tab><Tab>System.out.println();<LEFT><LEFT>
map <Leader>jt i<Tab><Tab>try{<CR><CR>}catch(Exception e){<CR>e.printStackTrace<CR>}<CR><ESC>
map <Leader>jm i<Tab>public static void main(String [] args){<CR><CR>}<Home><Del><UP><UP><UP><Del><DOWN><Tab><Tab><ESC>
map <Leader>jf i<Tab><Tab>for(int a = 0;a<[change me!];a++){<CR>}<CR><UP>
map <Leader>je i<Tab><Tab>for([object type] a: [Variables]){<CR>}<CR><UP>
map <Leader>jw i<Tab><Tab>while([change me!]){<CR><CR>}<UP><Tab><Tab>
" map java primitive data types.
map <Leader>jkI iint ;<LEFT>
map <Leader>jkD idouble ;<LEFT>
map <Leader>jkC ichar ;<LEFT>
map <Leader>jkS iString ;<LEFT>
map <Leader>jkB iboolean ;<LEFT>
map <Leader>jkF ifloat ;<LEFT>
map <Leader>jkL ilong ;<LEFT>
map <Leader>jkH ishort ;<LEFT>
" Java programming key words.
map <Leader>jkq ipublic  <ESC>
map <Leader>jkw iprivate  <ESC>
map <Leader>jke iprotected  <ESC>
map <Leader>jka iabstract  <ESC>
map <Leader>jkv ivoid  <ESC>
map <Leader>jks istatic  <ESC>
map <Leader>jkc iclass {}<LEFT><CR><UP><RIGHT><RIGHT><RIGHT><RIGHT><RIGHT>
map <Leader>jkf ifinal  <ESC>
map <Leader>jkn inew  <ESC>
" --------------------------------------------------------
" --------------------------------------------------------
"  Bash Scripting Macros...
map <Leader>b1 i#!/bin/bash
" --------------------------------------------------------
" --------------------------------------------------------
"c++ Macros.
"basic c++ commands.
"this is the basic main method that is used in c++...
map <Leader>cm1 iint main(){<CR><CR>}<UP><UP><TAB>
" this is the main method that is prominant in QT.
map <Leader>cm2 iint main(int argc,char **argv){<CR><CR>}<HOME><UP><UP><TAB>
" this is a print statement.
map <Leader>co istd::cout<<<<std::endl;<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
" --------------------------------------------------------
"  -------------------------------------------------------
"  TODO add in the french accents...

" --------------------------------------------------------
"  -------------------------------------------------------
" Vim Macros.
" this macro will handle setting Syntastic to look at a lib Folder to find imports.
map <Leader>j1 :SyntasticJavacEditClasspath<cr>i.:lib/*<esc>:wq
" this macro will delete inside of "".
map <Leader>d v%di()<ESC>
" this macro will open another tab.
map <Leader>t :tabedit<Space>
map <Leader>l :TlistToggle<RETURN>
map <Leader>; :TlistUpdate<RETURN>
map <Leader>a i<TAB><TAB><ESC>
" this macro will handle removing any trailing white space.
map <Leader>0 :%s/\s\+$//<RETURN>
" this macro will enable/disable syntastic.
map <Leader>] :SyntasticToggle<RETURN>
" this macro will handle opening the Nerd Tree project structure navigator.
map <Leader>[ :NERDTree<RETURN>
" --------------------------------------------------------
