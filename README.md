# dotvim

### Keeping dotvim files in github

### Move vim config files to .vim dir  
```sh
mv ~/.vimrc ~/.vim/vimrc
mv ~/.gvimrc ~/.vim/gvimrc
```
### Now softlink to those files such that vim finds it
```sh
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

### Initialize git repository and commit to dotvim
```sh
cd ~/.vim
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/jombie/dotvim.git
git push -u origin master
```

### Install pathogen to manage plugins
```sh
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

### Add this to .vimrc file
```sh
execute pathogen#infect()
call pathogen#helptags()
```

### Install plugins as submodules
```sh
cd ~/.vim
git submodule add https://github.com/flazz/vim-colorschemes.git bundle/colorschemes
git add .
git commit -m "Install colorschme.vim bundle as a submodule."
```

### My Installed Plugins
```sh
git submodule add https://github.com/vim-erlang/vim-erlang-omnicomplete.git bundle/vim-erlang-omnicomplete
git submodule add https://github.com/vim-erlang/vim-erlang-compiler.git bundle/vim-erlang-compiler
git submodule add https://github.com/vim-erlang/vim-erlang-runtime.git bundle/vim-erlang-runtime
git submodule add https://github.com/scrooloose/nerdtree.git bundle/nerdtree
git submodule add https://github.com/jistr/vim-nerdtree-tabs.git bundle/vim-nerdtree-tabs
git submodule add https://github.com/scrooloose/syntastic.git bundle/syntastic
git submodule add https://github.com/tpope/vim-surround.git bundle/vim-surround
git submodule add https://github.com/ntpeters/vim-better-whitespace.git bundle/vim-better-whitespace
git submodule add https://github.com/MattesGroeger/vim-bookmarks.git bundle/vim-bookmarks
git submodule add https://github.com/jiangmiao/auto-pairs.git bundle/auto-pairs
```
