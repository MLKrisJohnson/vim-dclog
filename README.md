vim-dclog
=========

Vim syntax highlighting plugin for deviceConnect log files.

![vim-dclog Syntax Highlighting Screenshot](https://raw.githubusercontent.com/mobile-labs/vim-dclog/master/dclog.png)

When installed, this [vim](http://www.vim.org) plugin defines a new filetype named "dclog", and syntax highlighting scheme for it.

Any filename matching the pattern `MobileLabs.*.log` will automatically be opened with this filetype.

## Installation

### Via Plugin Manager

#### [Vim-Plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'mobile-labs/vim-dclog'` to your vimrc file.
2. Reload your vimrc or restart
3. Run `:PlugInstall`

#### [Pathogen](https://github.com/tpope/vim-pathogen)

```sh
cd ~/.vim/bundle
git clone https://github.com/mobile-labs/vim-dclog.git
```

### Manual Installation

#### Unix 

Download the files. Put the `ftdetect/dclog.vim` file into your `~/.vim/ftdetect` directory and the `syntax/dclog.vim` file into your `~/.vim/syntax` directory, creating those directories if necessary.

#### Windows

Download the files. Put the `ftdetect/dclog.vim` file into your `~\vimfiles\ftdetect` directory and the `syntax/dclog.vim` file into your `~/vimfiles\syntax` directory, creating those directories if necessary.

