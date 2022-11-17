call plug#begin()
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'https://github.com/mattn/calendar-vim.git'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'


" obsidian settings. 
" (optional) for completion:
Plug 'hrsh7th/nvim-cmp'

" (optional) for :ObsidianSearch command unless you use telescope:
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" (optional) for :ObsidianSearch command if you prefer this over fzf.vim:
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" (optional) recommended for syntax highlighting, folding, etc if you're not using nvim-treesitter:
Plug 'preservim/vim-markdown'
Plug 'godlygeek/tabular'  " needed by 'preservim/vim-markdown'

" (required)
Plug 'epwalsh/obsidian.nvim'
call plug#end()


" Vim Wiki
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab
au FileType md setlocal shiftwidth=6 tabstop=6 noexpandtab

command! Diary VimwikiDiaryIndex
command! Today VimwikiMakeDiaryNote
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile diary.md VimwikiDiaryGenerateLinks
augroup end


" NERD Tree
nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Tagbar
nmap <F8> :TagbarToggle<CR>



" echo "Here's a bigger chunk of Lua code"
" 
" lua << EOF
" require("obsidian").setup({
"   dir = "~/Dropbox/obsidian",
"   completion = {
"     nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
"   }
" })
" EOF
