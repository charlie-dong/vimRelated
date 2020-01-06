BASEDIR=$(dirname "$0")

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/charlie-dong/ultisnips-customized.git ~/.vim/ultisnips-customized
cp $BASEDIR/.vimrc* ~/
cp $BASEDIR/.bashrc_proxy ~/
echo -e "\nsource ~/.bashrc_proxy" >> ~/.bashrc
sudo apt-get install build-essential cmake python-dev python3-dev
