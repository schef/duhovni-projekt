syntax on
filetype off
"set runtimepath+=/usr/local/lilypond/${LILYPOND_VERSION}/vim/
set runtimepath+=/usr/local/lilypond/usr/share/lilypond/current/vim/
filetype plugin on
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

autocmd FileType lilypond map <buffer> <F6> :!evince "../binary/%<.pdf" &<Return><CR>
autocmd FileType lilypond map <buffer> <F5> :w<Return>:se makeprg=lilypond.sh\ \"%\"<Return>:make<Return><CR><CR>
autocmd FileType lilypond map <buffer> <F4> :w<Return>:se makeprg=lilypond.sh\ \"%<\"<Return>:make<Return>:!timidity -Ow "../midi/%<.midi" -o "/tmp/%<.wav"<Return>:!mplayer "/tmp/%<.wav"<Return>
