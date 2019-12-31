BASEDIR=$(dirname "$0")

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.vim/ultisnips-customized
cp $BASEDIR/*.snippets ~/.vim/ultisnips-customized/
cp $BASEDIR/.vimrc* ~/
