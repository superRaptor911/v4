let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/program/react/hackclubCucek/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit pages/members.js
argglobal
balt pages/projects.js
let s:l = 26 - ((14 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 26
normal! 016|
tabnext 1
badd +68 pages/index.js
badd +67 components/seo.js
badd +9 pages/page-2.js
badd +5 styles/Colors.js
badd +6 pages/404.js
badd +36 components/Header.js
badd +113 components/HeaderDesktop.js
badd +3 styles/Global.css
badd +8 components/Utility.js
badd +19 components/mainPage/MainPageContentDesktop.js
badd +22 components/mainPage/MainPageExtras.js
badd +44 components/mainPage/TitleWithRect.js
badd +42 components/mainPage/ThingsWeDo.js
badd +64 components/mainPage/OurInitiatives.js
badd +19 components/mainPage/UpcomingEvents.js
badd +97 components/mainPage/GalleryImages.js
badd +25 components/FooterDesktop.js
badd +39 pages/events.js
badd +28 pages/members.js
badd +103 pages/projects.js
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOFc
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
