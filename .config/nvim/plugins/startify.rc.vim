" Option settings
let g:startify_files_number = 5
let g:startify_session_number = 5
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1

" Lists on startup
let g:startify_lists = [
      \ {'type': 'files', 'header': ['Recently Used:']},
      \ {'type': 'dir', 'header': ['Recently Used (CurrentDir):']},
      \ {'type': 'sessions', 'header': ['Sessions:']},
      \ {'type': 'bookmarks', 'header': ['Bookmarks:']},
      \ ]

" Bookmark setting
let g:startify_bookmarks = [
      \ "~/.config/nvim/init.vim",
      \ "~/.config/nvim/dein.toml",
      \ "~/.config/nvim/dein_lazy.toml",
      \ "~/.gitconfig"
      \ ]

" Mappings
nnoremap <silent> <Leader><Leader><Space> :Startify<CR> " Call back Startify
nnoremap <silent> <Leader><Space>s :SSave!<CR> " Save session
nnoremap <silent> <Leader><Space>l :SLoad!<CR> " Load session
nnoremap <silent> <Leader><Space>q :SClose<CR> " Close session
nnoremap <silent> <Leader><Space>dd :SDelete<CR> " Delete session

" Show AA centered
function! s:filter_header(lines) abort
  let longest_line   = max(map(copy(a:lines), 'len(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

" Welcome page's message
let g:startify_custom_header = s:filter_header([
      \ ' <<Neovim>> ',
      \ ])

" ASCII Art
" let g:startify_custom_header = s:filter_header([
"       \ '                    ,,.,.',
"       \ '                  .l"   ``^""rr>>>._',
"       \ '               .l^                 ````"`>-.__',
"       \ '             >j^                               r>~',
"       \ '           ~x`                                   ^ir}',
"       \ '           k4Ir;,.                                :1U`',
"       \ '           }` +.irArcr>,__                      ij~ Y`',
"       \ '           Y y`` ``">rrxrrrr<>.__             rj,   Y`',
"       \ '           Y Y          ``^ccvlxlr>rr>,.. ._jj`     Y`',
"       \ '           Y Y    `>,          ``^".>rrr._Y+^       Y`',
"       \ '           Y Y      I1`                I, 1         Y`',
"       \ '           Y Y       ~mx       ,r1>    Ir Y         Y`',
"       \ '           Y }    `11/^      fV_`      |r Y         }`',
"       \ '           } y.               ~+>      |r Y    >y  `k',
"       \ '           .xrxxr>>,_           +l     I_ Y   i}Q+jl',
"       \ '              `_rrr<>j1r>._            I~ Y   `y+4^',
"       \ '        x9NNUdV+r_`   ~<>rvrlyr>.__ ..,T` }  `1r  +"',
"       \ '      +4m94QQq%fNU9m4skxv,    :>r>rrjY}l .k,jr     }',
"       \ '     rUNqQmVQVNmR9GWsQVVQGQVVV}l~`    `_>xr_      *Y',
"       \ '    qgwwdkGmWwQgw%INdU9RWwN9U9IQf9QqVkIY1rrr:   ,jy',
"       \ '  ^9mkQ9%wWwgG+RqmGQ9mWkN}k9wN4YqdQ%mg}gsR` ,r>ru',
"       \ '  }GRdWs%sUw}GQ%GgW}W}gwqgm%4d_wVNkQ9NwjYY,',
"       \ '  f>~>j+sg9QkjrrrjRVdqVQUWwg+,kgW9WW99if^y',
"       \ '    "^rrrrrrj}VsgQQw9NVRIkfiyyWQ%WW4m~yjv',
"       \ '          "^rrrr<>rrlswms4lYU@QNMm9xr1++',
"       \ '                "^rrrrrr^r+g%MRMsQ_+1I',
"       \ '                      "^vrrrr>il+jjIi',
"       \ '                           "^^^>r>l.',
"       \ ])
