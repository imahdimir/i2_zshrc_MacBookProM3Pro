# Update setup repo from Github base

repo=i2_zshrc_MacBookProM3Pro

echo "\n\nUpdating .zshrc from https://github.com/$repo\n\n"

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

# Anaconda
export PATH="/opt/anaconda3/bin:$PATH"
conda init

