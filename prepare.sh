BASEDIR=$(dirname "$0")

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.vim/ultisnips-customized/UltiSnips
cp $BASEDIR/*.snippets ~/.vim/ultisnips-customized/UltiSnips/
cp $BASEDIR/.vimrc* ~/
cp $BASEDIR/.bashrc_proxy ~/
echo -e "\nsource ~/.bashrc_proxy" >> ~/.bashrc
sudo apt-get install build-essential cmake python-dev python3-dev
