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
