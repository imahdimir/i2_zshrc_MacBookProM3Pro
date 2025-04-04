alias echoblue="echo -e \033[34m\!* \033[0m"'


# Update setup repo from Github base

repo=i2_zshrc_on_MacBook_Pro_M3Pro

echoblue "\n\nUpdating .zshrc from https://Github.com/$repo\n\n"

cd ~/$repo

git reset --hard HEAD
git pull

cp ./.zshrc ~/.zshrc

cd 


source "$repo/.export"


# pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
eval "$(pyenv init -)" # using eval to hide ouputs 

eval "$(pyenv virtualenv-init -)"
