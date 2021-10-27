" inspired by:
" https://github.com/mdippery/vimfiles/blob/master/vim/.vim/bundle.vim

set nocompatible
filetype off

set rtp+=~/.dotfiles/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle - required!
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'

Plugin 'Tagbar'

Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'ShowTrailingWhitespace'

call vundle#end()

