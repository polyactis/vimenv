#!/bin/bash

## INIT
mkdir -p ~/.vim/autoload ~/.vim/bundle

pushd ~/.vim/autoload/
wget https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
popd

# curl --insecure -So ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

## WHERE THINGS ARE
pushd ~/.vim/bundle

## AN UGLY WAY TO GET & KEEP BUNDLES UP TO DATE
git clone https://github.com/Rip-Rip/clang_complete.git
cd clang_complete
git pull
cd ..

git clone https://github.com/tomasr/molokai
cd molokai
git pull
cd ..

git clone https://github.com/scrooloose/nerdtree.git
cd nerdtree
git pull
cd ..

git clone https://github.com/jistr/vim-nerdtree-tabs.git
cd vim-nerdtree-tabs
git pull
cd ..

git clone https://github.com/ervandew/supertab.git
cd supertab
git pull
cd ..

git clone https://github.com/scrooloose/nerdcommenter.git
cd nerdcommenter
git pull
cd ..

#git clone https://github.com/tsaleh/vim-matchit.git
#cd vim-matchit
#git pull
#cd ..

git clone https://github.com/tmhedberg/matchit.git
cd matchit
git pull
cd ..


git clone https://github.com/widox/vim-buffer-explorer-plugin.git
cd vim-buffer-explorer-plugin
git pull
cd ..

git clone https://github.com/AlphaLiu/a.vim.git
cd a.vim
git pull
cd ..

git clone https://github.com/vim-scripts/taglist.vim.git
cd taglist.vim
git pull
cd ..

git clone https://github.com/vim-perl/vim-perl.git
cd vim-perl
git pull
cd ..

wget http://glx.sourceforge.net/downloads/vim_gle.zip
unzip vim_gle.zip -d vim_gle
rm vim_gle.zip

## REPEAT FOR NEW BUNDLES

popd
