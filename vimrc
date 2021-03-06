:nmap <C-t> :tabnew<CR>
:imap <C-t> <Esc>:tabnew<CR>
":map <C-w> :tabclose<CR>
:nmap Z :tabprev<CR>
:nmap X :tabnext<CR>

set guifont=monospace\ 9

set guioptions-=T "hide toolbar
set background=dark

"Turns the Filetype detection On"
syntax on 
set syn=auto 
set showmatch 
set switchbuf=usetab
filetype on 
filetype plugin on 
filetype indent on 
set tabstop=4 
set smarttab
set softtabstop=4 
set shiftwidth=4 
set expandtab
filetype plugin indent on

silent! colorscheme slate
"silent! colorscheme morning
"silent! colorscheme macvim

"Turns the Syntax Highlighting On"
syntax on
set colorcolumn=80

"Turns Off the Irritating VIM Compatibility"
set nocompatible
set linebreak
set showbreak=...n...
"set spell"

"Turns Mouse On everywhere"
set mouse=a

"Turns on Auto Indentation"
set ai

"Turns on Smart Indentation"
set si

"Turns On Loading of the filetype Plugin"
let python_highlight_all = 1
set nobackup
set nowritebackup
set noswapfile
set backupdir=~/tmp
set so=7

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

set cmdheight=2 "The commandbar height

set hid "Change buffer - without saving
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase "Ignore case when searching

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
au FileType python set nocindent
let python_highlight_all = 1
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

"set transparency=5
python << EOF
import vim
import re

ipdb_breakpoint = 'import ipdb; ipdb.set_trace()'
pprint_block = 'import pprint; pprint.pprint('
tenjin_breakpoint = '<?py import ipdb; ipdb.set_trace() ?>'
js_breakpoint = '_jack.logger.debug('

def set_pprint():
    breakpoint_line = int(vim.eval('line(".")')) - 1
    current_line = vim.current.line
    white_spaces = re.search('^(\s*)', current_line).group(1)
    if vim.current.buffer.name.endswith('.py'):
        vim.current.buffer.append(white_spaces + pprint_block, breakpoint_line)
    elif vim.current.buffer.name.endswith('.t_html'):
        vim.current.buffer.append(white_spaces + "<?py ?>", breakpoint_line)
    else:
        pass

vim.command('map <F8> :py set_pprint()<cr>')

def set_breakpoint():
    breakpoint_line = int(vim.eval('line(".")')) - 1

    current_line = vim.current.line
    white_spaces = re.search('^(\s*)', current_line).group(1)
    if vim.current.buffer.name.endswith('.py'):
        vim.current.buffer.append(white_spaces + ipdb_breakpoint, breakpoint_line)
    elif vim.current.buffer.name.endswith('.t_html'):
        vim.current.buffer.append(white_spaces + tenjin_breakpoint, breakpoint_line)
    elif vim.current.buffer.name.endswith('.js'):
        vim.current.buffer.append(white_spaces + js_breakpoint, breakpoint_line)
    else:
        pass

vim.command('map <C-I> :py set_breakpoint()<cr>')

def remove_breakpoints():
    if vim.current.buffer.name.endswith('.js'):
        breakpoint = js_breakpoint
    else:
        breakpoint = ipdb_breakpoint
    op = 'g/^.*%s.*/d' % breakpoint
    vim.command(op)

vim.command('map <C-P> :py remove_breakpoints()<cr>')
EOF

au BufRead,BufNewFile *.t_html set filetype=html
au! Syntax tenjin source /Applications/MacVim.app/Contents/Resources/vim/runtime/syntax/html.vim
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <silent> <F6> :nohl<CR>
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
