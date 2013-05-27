This repo contains my vimrc settings. If you're me, these commands will set everything up on a new system. Everyone else should clone from git://github.com/jonlesser/vim.git.

    git clone git@github.com:jonlesser/vim.git ~/.vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    cd ~/.vim
    git submodule init
    git submodule update
    vim +BundleInstall +qall
