sml.vim
=======

Sml + vim integration, originally for https://class.coursera.org/proglang-002/class/index

Requirements
------------

* Vim 7.0+
* Sml http://www.smlnj.org/dist/working/110.76/

Installation
------------

- [Vundle](https://github.com/gmarik/vundle) way (recommended), add the following to your $HOME/.vimrc file:

        Bundle 'javier-lopez/sml.vim'

    And run inside of vim:

        :BundleInstall

- [Pathogen](https://github.com/tpope/vim-pathogen) way:

        $ git clone https://github.com/javier-lopez/sml.vim.git ~/.vim/bundle/sml.vim

- **Manual** (simplest if you've never heard of vundle or pathogen), download the zip file generated from github and extract it to $HOME/.vim

        mv sml.vim*.zip $HOME/.vim
        cd $HOME/.vim && unzip sml.vim*.zip

    Update the help tags from vim:

        :helpt ~/.vim/doc/

Usage
-----

On .sml files you can execute *:make* to run your current buffer on SML, it also indent and shows SML sintaxis. See `:help sml.txt` for detailed information.

Indentation & highlighting features
-----------------------------------

There are some differences (features) from standard Vim 7.4 files.

- No line wrapping (`textwidth = 0`).

- Indent `case` as follows:

        case x of
          NONE => "none"
        | SOME of str => str

- Indent `handle` as follows:

        call_smth_dangerous
          handle Err1 => 41
               | Err2 => 42

- Indent functional pattern matching:

        fun length [] = 0
          | length _::xs = 1 + length xs

- Indent `let` after `fun`:

        fun double_sum (x, y) =
          let val sum = x + y
          in 2*sum end

- Fix indentation of `if/then/else` when using `=`.

- Fix highlighting of `=>`, `:=`.

- Highlight record fields in type declaration, record creation and record patterns.

_These features are also available as an [independent plugin](https://github.com/cypok/vim-sml)._
