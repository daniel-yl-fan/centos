" clear all the menus
call quickui#menu#reset()

" install a 'File' menu, use [text, command] to represent an item.
call quickui#menu#install('&todo : priority', [
            \ [ "&C++11 \t 50",              'echo "C++"' ],
            \ [ "&Boost \t 70",              'echo "C++"' ],
            \ [ "&STL \t 80",                'echo "C++"' ],
            \ [ "&/usr/include \t 90",       'echo "C++"' ],
            \ [ "--", '' ],
            \ [ "&Python3.6 \t 60", 'echo "Python"' ],
            \ [ "--", '' ],
            \ [ "&Design Pattern \t 99", 'Design' ],
            \ [ "--", '' ],
            \ ])

" enable to display tips in the cmdline
let g:quickui_show_tip = 1

noremap <leader>hm :call quickui#menu#open()<cr>

let content = [
            \ [ 'C++11',           '' ],
            \ [ 'Python3.6',       '' ],
            \ [ 'Boost',           '' ],
            \ [ 'STL',             '' ],
            \ [ '/usr/include',    '' ],
            \ [ 'design patterns', '' ],
            \]
let opts = {'todo': 'priority'}

noremap <leader>hl :call quickui#listbox#open(content, opts)<cr>

