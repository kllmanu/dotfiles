filetype plugin indent on
colorscheme elflord
syntax enable
imap jj <esc>

set nocp wmnu wic ar nu lz mle sc sm scs ai ic is hls sb spr
set nowrap hidden ts=4 sw=4 sts=4 mouse=a title cul

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprev<CR>

if has('unix')
	set clipboard=unnamedplus
endif

if has('macunix')
	set clipboard=unnamed
endif
