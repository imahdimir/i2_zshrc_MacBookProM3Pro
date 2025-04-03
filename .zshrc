# update repo on Mac

repo_name=250403_zshrc_on_MacBook_Pro_M3Pro

cd ~/$repo_name

git reset --hard HEAD
git pull

cp ./.zshrc ~/.zshrc

cd 


source "$repo_name/.export"


# pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
eval "$(pyenv init -)" # using eval to hide ouputs 

eval "$(pyenv virtualenv-init -)"
