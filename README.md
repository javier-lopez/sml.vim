vim-sml-coursera
================

vim + sml for https://class.coursera.org/proglang-002/class/index


Requirements
------------

* Vim 7.0+
* SML http://www.smlnj.org/dist/working/110.76/

Installation
------------

[Vundle](https://github.com/gmarik/vundle) way (recommended), add the following to your $HOME/.vimrc file:

    Bundle 'chilicuil/vim-sml-coursera'

And run inside of vim:

    :BundleInstall

[Pathogen](https://github.com/tpope/vim-pathogen) way:

    $ git clone https://github.com/chilicuil/vim-sml-coursera.git ~/.vim/bundle/vim-sml-coursera

*Manual* (simplest if you've never heard of vundle or pathogen), download the zip file generated from github and extract it to $HOME/.vim

    mv vim-sml-coursera*.zip $HOME/.vim
    cd $HOME/.vim && unzip vim-sml-coursera*.zip

Update the help tags from vim:

    :helpt ~/.vim/doc/

Usage
-----

On .sml files you can execute *:make* to run your current buffer on SML, it also indent and shows
SML sintaxis. See `:help sml-coursera.txt` for detailed information


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/chilicuil/vim-sml-coursera/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

