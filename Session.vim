let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
cnoremap <C-F4> c
inoremap <C-F4> c
cnoremap <C-Tab> w
inoremap <C-Tab> w
cmap <S-Insert> +
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
imap <S-Insert> 
xnoremap  ggVG
snoremap  gggHG
onoremap  gggHG
nnoremap  gggHG
vnoremap  "+y
map  :Grep -r --exclude=*.log
map  gg=G
map  h
snoremap <silent> 	 i<Right>=TriggerSnippet()
map <NL> j
map  k
map  l
noremap  
map  :wa
map  "*P
snoremap  b<BS>
xnoremap  "+x
noremap  
noremap  u
map   /
snoremap % b<BS>%
snoremap ' b<BS>'
nmap ,ca <Plug>NERDCommenterAltDelims
vmap ,cA <Plug>NERDCommenterAppend
nmap ,cA <Plug>NERDCommenterAppend
vmap ,c$ <Plug>NERDCommenterToEOL
nmap ,c$ <Plug>NERDCommenterToEOL
vmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
vmap ,cn <Plug>NERDCommenterNest
nmap ,cn <Plug>NERDCommenterNest
vmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
vmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
vmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
vmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
vmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
vmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
vmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
vmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
cnoremap   :simalt ~
inoremap   :simalt ~
xmap S <Plug>VSurround
snoremap U b<BS>U
snoremap \ b<BS>\
nmap \ihn :IHN
nmap \is :IHS:A
nmap \ih :IHS
map \t2 :set shiftwidth=2
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <C-F4> c
nnoremap <C-Tab> w
nmap <S-Insert> "+gP
map <F4> :TlistToggle
map <F3> :NERDTreeToggle
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
onoremap <C-F4> c
vnoremap <C-F4> c
onoremap <C-Tab> w
vnoremap <C-Tab> w
vmap <S-Insert> 
vnoremap <C-Insert> "+y
vnoremap <S-Del> "+x
xnoremap <BS> d
nmap <silent> <Plug>NERDCommenterAppend :call NERDComment(0, "append")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment(0, "toEOL")
vnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(1, "uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(0, "uncomment")
vnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(1, "nested")
nnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(0, "nested")
vnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(1, "alignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(0, "alignBoth")
vnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(1, "alignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(0, "alignLeft")
vmap <silent> <Plug>NERDCommenterYank :call NERDComment(1, "yank")
nmap <silent> <Plug>NERDCommenterYank :call NERDComment(0, "yank")
vnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(1, "invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(0, "invert")
vnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(1, "sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(0, "sexy")
vnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(1, "minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(0, "minimal")
vnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(1, "toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(0, "toggle")
vnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(1, "norm")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(0, "norm")
map <F2> :tabprevious
map <C-Space> ?
map <silent> <C-F2> :if &guioptions =~# 'T' |set guioptions-=T |set guioptions-=m |else |set guioptions+=T |set guioptions+=m |endif
omap <S-Insert> "+gP
cnoremap  gggHG
inoremap  gggHG
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
inoremap <silent> 	 =ShowAvailableSnips()
inoremap  :update
cmap  +
inoremap  
inoremap  u
noremap   :simalt ~
imap \ihn :IHN
imap \is :IHS:A
imap \ih :IHS
let &cpo=s:cpo_save
unlet s:cpo_save
set ambiwidth=double
set autoindent
set background=dark
set backspace=indent,eol,start
set cindent
set clipboard=autoselect,exclude:cons\\|linux,unnamed,unnamedplus
set errorfile=/tmp/vSGO8fm/4
set expandtab
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set guifont=Monaco\ 10
set guioptions=aegirLt
set helplang=cn
set hidden
set history=50
set ignorecase
set incsearch
set iskeyword=@,48-57,_,192-255,$
set keymodel=startsel,stopsel
set laststatus=2
set lazyredraw
set matchtime=2
set nomodeline
set mouse=a
set mousemodel=popup
set omnifunc=rubycomplete#Complete
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set scrolloff=1
set selection=exclusive
set selectmode=mouse,key
set shiftwidth=2
set showmatch
set smartindent
set smarttab
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tags=./tags,./TAGS,tags,TAGS,/
set termencoding=utf-8
set textwidth=500
set whichwrap=b,s,,,h,l,<,>,[,]
set wildmenu
set window=39
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/wode/app/accounting
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 app/views/zhangmus/_form.html.erb
badd +19 app/views/zhangmus/new.html.erb
badd +9 app/views/zhangbens/_form.html.erb
badd +1 app/models/zhangben.rb
badd +17 app/views/home/index.html.erb
badd +7 app/controllers/application_controller.rb
badd +0 app/controllers/peoples_controller.rb
badd +0 app/controllers/users_controller.rb
silent! argdel *
edit app/controllers/peoples_controller.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 90) / 180)
exe 'vert 2resize ' . ((&columns * 51 + 90) / 180)
exe 'vert 3resize ' . ((&columns * 50 + 90) / 180)
exe '4resize ' . ((&lines * 17 + 20) / 40)
exe 'vert 4resize ' . ((&columns * 45 + 90) / 180)
exe '5resize ' . ((&lines * 20 + 20) / 40)
exe 'vert 5resize ' . ((&columns * 45 + 90) / 180)
argglobal
enew
file NERD_tree_1
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'nerdtree'
setlocal filetype=nerdtree
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=0
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/wode/app/accounting,~/wode/app/accounting/app,~/wode/app/accounting/app/models,~/wode/app/accounting/app/controllers,~/wode/app/accounting/app/helpers,~/wode/app/accounting/config,~/wode/app/accounting/lib,~/wode/app/accounting/app/views,~/wode/app/accounting/test,~/wode/app/accounting/test/unit,~/wode/app/accounting/test/functional,~/wode/app/accounting/test/integration,~/wode/app/accounting/app/*,~/wode/app/accounting/vendor,~/wode/app/accounting/vendor/plugins/*/lib,~/wode/app/accounting/vendor/plugins/*/test,~/wode/app/accounting/vendor/rails/*/lib,~/wode/app/accounting/vendor/rails/*/test,/usr/include
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.slim
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'nerdtree'
setlocal syntax=nerdtree
endif
setlocal tabstop=8
setlocal tags=~/wode/app/accounting/tmp/tags,./tags,./TAGS,tags,TAGS,/,~/wode/app/accounting/tags
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri\ -T
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Dropbox/wode/app/accounting,~/Dropbox/wode/app/accounting/app,~/Dropbox/wode/app/accounting/app/models,~/Dropbox/wode/app/accounting/app/controllers,~/Dropbox/wode/app/accounting/app/helpers,~/Dropbox/wode/app/accounting/config,~/Dropbox/wode/app/accounting/lib,~/Dropbox/wode/app/accounting/app/views,~/Dropbox/wode/app/accounting/app/views/peoples,~/Dropbox/wode/app/accounting/public,~/Dropbox/wode/app/accounting/test,~/Dropbox/wode/app/accounting/test/unit,~/Dropbox/wode/app/accounting/test/functional,~/Dropbox/wode/app/accounting/test/integration,~/Dropbox/wode/app/accounting/app/*,~/Dropbox/wode/app/accounting/vendor,~/Dropbox/wode/app/accounting/vendor/plugins/*/lib,~/Dropbox/wode/app/accounting/vendor/plugins/*/test,~/Dropbox/wode/app/accounting/vendor/rails/*/lib,~/Dropbox/wode/app/accounting/vendor/rails/*/test,NOTE:\\\ Gem.all_load_paths\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_load_paths\\\ called\\\ from\\\ -e:1.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
/home/zcy/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/i686-linux,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/vendor_ruby/1.9.1/i686-linux,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/i686-linux,~/.rvm/gems/ruby-1.9.3-p194/gems/actionmailer-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/actionmailer-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/actionpack-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/actionpack-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activemodel-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activemodel-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activerecord-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activerecord-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activeresource-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activeresource-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activesupport-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activesupport-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/acts_as_list-0.1.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/arel-3.0.2/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/bcrypt-ruby-3.0.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/builder-3.0.4/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/cocaine-0.4.2/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/coderay-1.0.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/coffee-rails-3.2.2/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/coffee-script-2.2.0/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/coffee-script-source-1.4.0/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/commonjs-0.2.6/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/default_value_for-2.0.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/devise-1.5.3/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/domain_name-0.5.4/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/erubis-2.7.0/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/execjs-1.4.0/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/faker-1.1.2/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/hike-1.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/i18n-0.6.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/i18n_generators-1.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/journey-1.0.4/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/jquery-rails-2.1.3/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/json-1.7.5/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/less-2.2.2/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/less-rails-2.2.5/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/libv8-3.3.10.4-x86-linux/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/mail-2.4.4/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/mechanize-2.5.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/meta_search-1.1.3/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/method_source-0.8.1/
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.slim
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=8
setlocal tags=~/Dropbox/wode/app/accounting/tmp/tags,./tags,./TAGS,tags,TAGS,/,~/Dropbox/wode/app/accounting/tags
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 028l
wincmd w
argglobal
edit app/views/zhangmus/_form.html.erb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'eruby'
setlocal filetype=eruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetErubyIndent()
setlocal indentkeys=o,O,*<Return>,<>>,{,},0),0],o,O,!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri\ -T
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/wode/app/accounting,~/wode/app/accounting/app,~/wode/app/accounting/app/models,~/wode/app/accounting/app/controllers,~/wode/app/accounting/app/helpers,~/wode/app/accounting/config,~/wode/app/accounting/lib,~/wode/app/accounting/app/views,~/wode/app/accounting/app/views/zhangmus,~/wode/app/accounting/public,~/wode/app/accounting/test,~/wode/app/accounting/test/unit,~/wode/app/accounting/test/functional,~/wode/app/accounting/test/integration,~/wode/app/accounting/app/*,~/wode/app/accounting/vendor,~/wode/app/accounting/vendor/plugins/*/lib,~/wode/app/accounting/vendor/plugins/*/test,~/wode/app/accounting/vendor/rails/*/lib,~/wode/app/accounting/vendor/rails/*/test,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/site_ruby/1.9.1/i686-linux,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/vendor_ruby/1.9.1/i686-linux,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/i686-linux,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionmailer-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionmailer-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionmailer-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionpack-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionpack-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionpack-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activemodel-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activemodel-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activemodel-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activerecord-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activerecord-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activerecord-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activeresource-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activeresource-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activeresource-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activesupport-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activesupport-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activesupport-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/ancestry-1.2.4/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/archive-tar-minitar-0.5.2/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/arel-2.2.3/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/arel-3.0.2/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/bcrypt-ruby-3.0.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/builder-3.0.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/bundle-0.0.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/bundler-1.0.22/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/cocaine-0.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/coffee-rails-3.1.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/coffee-rails-3.2.2/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/coffee-script-2.2.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/coffee-script-source-1.2.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/columnize-0.3.6/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/daemon_controller-1.0.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/default_value_for-1.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/devise-1.5.3/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/domain_name-0.5.2/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/erubis-2.6.6/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/erubis-2.7.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/execjs-1.3.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/faker-1.0.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/fastthread-1.0.7/ext,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/fastthread-1.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.slim
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'eruby'
setlocal syntax=eruby
endif
setlocal tabstop=8
setlocal tags=~/wode/app/accounting/tmp/tags,./tags,./TAGS,tags,TAGS,/,~/wode/app/accounting/tags
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 26 - ((15 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 019l
wincmd w
argglobal
edit app/models/zhangben.rb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri\ -T
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/wode/app/accounting,~/wode/app/accounting/app,~/wode/app/accounting/app/models,~/wode/app/accounting/app/controllers,~/wode/app/accounting/app/helpers,~/wode/app/accounting/config,~/wode/app/accounting/lib,~/wode/app/accounting/app/views,~/wode/app/accounting/test,~/wode/app/accounting/test/unit,~/wode/app/accounting/test/functional,~/wode/app/accounting/test/integration,~/wode/app/accounting/app/*,~/wode/app/accounting/vendor,~/wode/app/accounting/vendor/plugins/*/lib,~/wode/app/accounting/vendor/plugins/*/test,~/wode/app/accounting/vendor/rails/*/lib,~/wode/app/accounting/vendor/rails/*/test,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/site_ruby/1.9.1/i686-linux,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/vendor_ruby/1.9.1/i686-linux,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/i686-linux,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionmailer-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionmailer-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionmailer-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionpack-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionpack-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/actionpack-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activemodel-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activemodel-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activemodel-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activerecord-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activerecord-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activerecord-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activeresource-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activeresource-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activeresource-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activesupport-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activesupport-3.1.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/activesupport-3.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/ancestry-1.2.4/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/archive-tar-minitar-0.5.2/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/arel-2.2.3/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/arel-3.0.2/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/bcrypt-ruby-3.0.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/builder-3.0.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/bundle-0.0.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/bundler-1.0.22/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/cocaine-0.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/coffee-rails-3.1.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/coffee-rails-3.2.2/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/coffee-script-2.2.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/coffee-script-source-1.2.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/columnize-0.3.6/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/daemon_controller-1.0.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/default_value_for-1.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/devise-1.5.3/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/domain_name-0.5.2/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/erubis-2.6.6/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/erubis-2.7.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/execjs-1.3.0/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/faker-1.0.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/fastthread-1.0.7/ext,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/fastthread-1.0.7/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/gems/hike-1.2.1/lib,~/.rvm/gems/ruby-1.9.2-p290@accounting/
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.slim
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=8
setlocal tags=~/wode/app/accounting/tmp/tags,./tags,./TAGS,tags,TAGS,/,~/wode/app/accounting/tags
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 6 - ((4 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
argglobal
edit app/controllers/users_controller.rb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri\ -T
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Dropbox/wode/app/accounting,~/Dropbox/wode/app/accounting/app,~/Dropbox/wode/app/accounting/app/models,~/Dropbox/wode/app/accounting/app/controllers,~/Dropbox/wode/app/accounting/app/helpers,~/Dropbox/wode/app/accounting/config,~/Dropbox/wode/app/accounting/lib,~/Dropbox/wode/app/accounting/app/views,~/Dropbox/wode/app/accounting/app/views/users,~/Dropbox/wode/app/accounting/public,~/Dropbox/wode/app/accounting/test,~/Dropbox/wode/app/accounting/test/unit,~/Dropbox/wode/app/accounting/test/functional,~/Dropbox/wode/app/accounting/test/integration,~/Dropbox/wode/app/accounting/app/*,~/Dropbox/wode/app/accounting/vendor,~/Dropbox/wode/app/accounting/vendor/plugins/*/lib,~/Dropbox/wode/app/accounting/vendor/plugins/*/test,~/Dropbox/wode/app/accounting/vendor/rails/*/lib,~/Dropbox/wode/app/accounting/vendor/rails/*/test,NOTE:\\\ Gem.all_load_paths\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_load_paths\\\ called\\\ from\\\ -e:1.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
/home/zcy/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/i686-linux,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/vendor_ruby/1.9.1/i686-linux,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/i686-linux,~/.rvm/gems/ruby-1.9.3-p194/gems/actionmailer-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/actionmailer-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/actionpack-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/actionpack-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activemodel-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activemodel-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activerecord-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activerecord-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activeresource-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activeresource-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activesupport-3.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/activesupport-3.2.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/acts_as_list-0.1.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/arel-3.0.2/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/bcrypt-ruby-3.0.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/builder-3.0.4/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/cocaine-0.4.2/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/coderay-1.0.8/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/coffee-rails-3.2.2/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/coffee-script-2.2.0/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/coffee-script-source-1.4.0/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/commonjs-0.2.6/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/default_value_for-2.0.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/devise-1.5.3/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/domain_name-0.5.4/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/erubis-2.7.0/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/execjs-1.4.0/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/faker-1.1.2/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/hike-1.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/i18n-0.6.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/i18n_generators-1.2.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/journey-1.0.4/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/jquery-rails-2.1.3/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/json-1.7.5/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/less-2.2.2/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/less-rails-2.2.5/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/libv8-3.3.10.4-x86-linux/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/mail-2.4.4/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/mechanize-2.5.1/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/meta_search-1.1.3/lib,~/.rvm/gems/ruby-1.9.3-p194/gems/method_source-0.8.1/li
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.slim
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=8
setlocal tags=~/Dropbox/wode/app/accounting/tmp/tags,./tags,./TAGS,tags,TAGS,/,~/Dropbox/wode/app/accounting/tags
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 90) / 180)
exe 'vert 2resize ' . ((&columns * 51 + 90) / 180)
exe 'vert 3resize ' . ((&columns * 50 + 90) / 180)
exe '4resize ' . ((&lines * 17 + 20) / 40)
exe 'vert 4resize ' . ((&columns * 45 + 90) / 180)
exe '5resize ' . ((&lines * 20 + 20) / 40)
exe 'vert 5resize ' . ((&columns * 45 + 90) / 180)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
